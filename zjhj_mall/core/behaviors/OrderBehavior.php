<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/14
 * Time: 17:46
 */

namespace app\behaviors;


use app\extensions\PinterOrder;
use app\models\Goods;
use app\models\Level;
use app\models\Mch;
use app\models\MchAccountLog;
use app\models\MiaoshaGoods;
use app\models\MsGoods;
use app\models\MsOrder;
use app\models\MsOrderRefund;
use app\models\Order;
use app\models\OrderDetail;
use app\models\OrderRefund;
use app\models\OrderShare;
use app\models\PrinterSetting;
use app\models\PtOrder;
use app\models\PtOrderRefund;
use app\models\Setting;
use app\models\Store;
use app\models\User;
use app\models\UserShareMoney;
use Codeception\Module\Memcache;
use yii\base\Behavior;
use yii\web\Controller;

/**
 * 检查订单过期未付款、超时自动确认收货、分销佣金发放等
 * @property \app\models\Store $store;
 * @property \app\models\Setting $share_setting;
 *
 */
class OrderBehavior extends Behavior
{
    public $only_routes = [
        'mch/order/*',
        'mch/share/*',
        'mch/miaosha/*',
        'api/order/*',
        'api/share/*',
        'api/miaosha/*',
    ];

    public $store_id;
    public $store;
    public $share_setting;

    public function events()
    {
        return [
            Controller::EVENT_BEFORE_ACTION => 'beforeAction',
        ];
    }


    public function beforeAction($e)
    {
        if (DoNotDoIt::doNotDoIt($this->only_routes))
            return;
        \Yii::warning('----ORDER BEHAVIOR----');
        $order_behavior_running = 'order_behavior_running';
        if (\Yii::$app->cache->get($order_behavior_running)) {
            return true;
        }
        \Yii::$app->cache->set($order_behavior_running, true, 60);

        $this->store_id = isset(\Yii::$app->controller->store) ? \Yii::$app->controller->store->id : 0;
        if (!$this->store_id) {
            \Yii::$app->cache->delete($order_behavior_running);
            return true;
        }
        $this->store = Store::findOne($this->store_id);
        $this->share_setting = Setting::findOne(['store_id' => $this->store_id]);

        $time = time();
        if ($this->store->over_day > 0) {
            $over_day = $time - ($this->store->over_day * 3600);
            // 用户积分恢复
            $npOrder = Order::find()->where([
                'is_pay' => 0, 'store_id' => $this->store_id, 'is_cancel' => 0
            ])->andWhere(['<=', 'addtime', $over_day])->andWhere(['!=','pay_type',2])->all();
            foreach ($npOrder AS $key => $value) {
                $integral = json_decode($value['integral'])->forehead_integral;
                $user = User::findOne(['id' => $value['user_id']]);
                $user->integral += $integral ? $integral : 0;
                $user->save();
                //库存恢复
                $order_detail_list = OrderDetail::find()->where(['order_id' => $value['id'], 'is_delete' => 0])->all();
                foreach ($order_detail_list as $order_detail) {
                    $goods = Goods::findOne($order_detail->goods_id);
                    $attr_id_list = [];
                    foreach (json_decode($order_detail->attr) as $item)
                        array_push($attr_id_list, $item->attr_id);
                    $goods->numAdd($attr_id_list, $order_detail->num);
                }
                //订单超过设置的未支付时间，自动取消
                $value->is_cancel = 1;
                $value->save();
            }
//            $count_p = Order::updateAll([
//                'is_cancel' => 1,
//            ], 'is_pay=0 and is_cancel=0 and addtime<=:addtime and store_id=:store_id',
//                [':addtime' => $over_day, ':store_id' => $this->store_id]);
        }
        $delivery_time = $time - ($this->store->delivery_time * 86400);
        $sale_time = $time - ($this->store->after_sale_time * 86400);
        //订单超过设置的确认收货时间，自动确认收货  商城
        /*
        $count = Order::updateAll([
            'is_confirm' => 1, 'confirm_time' => time()],
            'is_delete=0 and is_send=1 and send_time <= :send_time and store_id=:store_id and is_confirm=0',
            [':send_time' => $delivery_time, ':store_id' => $this->store_id]);
        */
        $order_confirm = Order::find()->where([
            'is_delete' => 0, 'is_send' => 1, 'store_id' => $this->store_id, 'is_confirm' => 0
        ])->andWhere(['<=', 'send_time', $delivery_time])->asArray()->all();

        foreach ($order_confirm as $k => $v) {
            Order::updateAll(['is_confirm' => 1, 'confirm_time' => time()], ['id' => $v['id']]);
            $printer_order = new PinterOrder($this->store_id, $v['id'], 'confirm', 0);
            $res = $printer_order->print_order();
        }

        //订单超过设置的确认收货时间，自动确认收货  秒杀
        $order_confirm = MsOrder::find()->where([
            'is_delete' => 0, 'is_send' => 1, 'store_id' => $this->store_id, 'is_confirm' => 0
        ])->andWhere(['<=', 'send_time', $delivery_time])->asArray()->all();

        foreach ($order_confirm as $k => $v) {
            MsOrder::updateAll(['is_confirm' => 1, 'confirm_time' => time()], ['id' => $v['id']]);
            $printer_order = new PinterOrder($this->store_id, $v['id'], 'confirm', 1);
            $res = $printer_order->print_order();
        }

        //超过设置的售后时间且没有在售后的订单--商城
        $order_list = Order::find()->alias('o')
            ->where([
                'and',
                ['o.is_delete' => 0, 'o.is_send' => 1, 'o.is_confirm' => 1, 'o.store_id' => $this->store_id, 'o.is_sale' => 0],
                ['<=', 'o.confirm_time', $sale_time],
            ])
            ->leftJoin(OrderRefund::tableName() . ' r', "r.order_id = o.id and r.is_delete = 0")
            ->select(['o.*'])->groupBy('o.id')
            ->andWhere([
                'or',
                'isnull(r.id)',
                ['r.type' => 2],
                ['in', 'r.status', [2, 3]]
            ])
            ->offset(0)->limit(20)->asArray()->all();
        foreach ($order_list as $index => $value) {
            Order::updateAll(['is_sale' => 1], ['id' => $value['id']]);
            $this->share_money($value['id']);
            $this->give_integral($value['id']);
        }

        //超过设置的售后时间且没有在售后的订单--秒杀
        $order_list = MsOrder::find()->alias('o')
            ->where([
                'and',
                ['o.is_delete' => 0, 'o.is_send' => 1, 'o.is_confirm' => 1, 'o.store_id' => $this->store_id, 'o.is_sale' => 0, 'is_sum' => 1],
                ['<=', 'o.confirm_time', $sale_time],
            ])
            ->leftJoin(MsOrderRefund::tableName() . ' r', "r.order_id = o.id and r.is_delete = 0")
            ->select(['o.*'])->groupBy('o.id')
            ->andWhere([
                'or',
                'isnull(r.id)',
                ['r.type' => 2],
                ['in', 'r.status', [2, 3]]
            ])
            ->offset(0)->limit(20)->asArray()->all();
        foreach ($order_list as $index => $value) {
            MsOrder::updateAll(['is_sale' => 1], ['id' => $value['id']]);
            $this->share_money_ms($value['id']);
            $this->give_integral_ms($value['id']);
        }

        //超过设置的售后时间且没有在售后的订单--拼团
        $order_list = PtOrder::find()->alias('o')
            ->where([
                'and',
                ['o.is_delete' => 0, 'o.is_send' => 1, 'o.is_confirm' => 1, 'o.store_id' => $this->store_id, 'o.is_price' => 0],
                ['<=', 'o.confirm_time', $sale_time],
            ])
            ->leftJoin(PtOrderRefund::tableName() . ' r', "r.order_id = o.id and r.is_delete = 0")
            ->select(['o.*'])->groupBy('o.id')
            ->andWhere([
                'or',
                'isnull(r.id)',
                ['r.type' => 2],
                ['in', 'r.status', [2, 3]]
            ])
            ->offset(0)->limit(20)->asArray()->all();
        foreach ($order_list as $index => $value) {
            PtOrder::updateAll(['is_price' => 1], ['id' => $value['id']]);
            $this->share_money_1($value['id']);
        }


        //入驻商户订单金额转到商户余额，请在判断售后的方法之后调用
        $this->transferToMch($e);


        //会员等级
        $user_id_arr = Order::find()->select('user_id')->where(['is_delete' => 0, 'store_id' => $this->store_id, 'is_confirm' => 1, 'is_send' => 1])
            ->andWhere(['<=', 'confirm_time', $sale_time])->groupBy('user_id')->asArray()->all();

        foreach ($user_id_arr as $index => $value) {
            $user = User::findOne(['id' => $value, 'store_id' => $this->store_id]);
            $order_money = Order::find()->where(['store_id' => $this->store_id, 'user_id' => $user->id, 'is_delete' => 0])
                ->andWhere(['is_pay' => 1, 'is_confirm' => 1, 'is_send' => 1])->andWhere(['<=', 'confirm_time', $sale_time])->select([
                    'sum(pay_price)'
                ])->scalar();
            if (!$order_money) {
                $order_money = 0;
            }
            $next_level = Level::find()->where(['store_id' => $this->store_id, 'is_delete' => 0, 'status' => 1])
                ->andWhere(['<=', 'money', $order_money])->orderBy(['level' => SORT_DESC, 'id' => SORT_DESC])->asArray()->one();
            if ($user->level < $next_level['level']) {
                $user->level = $next_level['level'];
                $user->save();
            }
        }
        \Yii::$app->cache->delete($order_behavior_running);

        $this->checkMsNoPayOrderTimeout($e); //处理未在规定时间内付款的秒杀订单
    }

    /**
     * @param $parent_id
     * @param $money
     * @return array
     *
     */
    private function money($parent_id, $money)
    {
        if ($parent_id == 0) {
            return ['code' => 1, 'parent_id' => 0];
        }
        $parent = User::findOne(['id' => $parent_id]);
        if (!$parent) {
            return ['code' => 1, 'parent_id' => 0];
        }
        $parent->total_price += $money;
        $parent->price += $money;
        if ($parent->save()) {
            return [
                'code' => 0,
                'parent_id' => $parent->parent_id
            ];
        } else {
            return [
                'code' => 1,
                'parent_id' => 0
            ];
        }
    }

    /**
     * @param $parent_id
     * @param $percent
     * @param $price
     * @return array
     * 已废弃
     */
    public static function shareMoney($parent_id, $percent, $price)
    {
        if ($parent_id == 0) {
            return ['code' => 1, 'parent_id' => 0];
        }
        $parent = User::findOne(['id' => $parent_id]);
        if (!$parent) {
            return ['code' => 1, 'parent_id' => 0];
        }
        $parent->total_price += ($price * $percent / 100);
        $parent->price += ($price * $percent / 100);

        if ($parent->save()) {
            return [
                'code' => 0,
                'parent_id' => $parent->parent_id
            ];
        } else {
            return [
                'code' => 1,
                'parent_id' => 0
            ];
        }
    }

    /**
     * @param $id
     * 佣金发放
     */
    private function share_money($id)
    {
        $order = Order::findOne($id);
        if ($this->share_setting->level == 0) {
            return;
        }
        if ($order->is_price != 0) {
            return;
        }
        //分销商自购返利
        if($order->rebate > 0){
            $user = User::findOne(['id'=>$order->user_id]);
            $user->total_price += doubleval($order->rebate);
            $user->price += doubleval($order->rebate);
            $user->save();
            $order->is_price = 1;
            UserShareMoney::set($order->rebate,$user->id,$order->id,0,4,$order->store_id,0);
        }
        //一级佣金发放
        if ($this->share_setting->level >= 1) {
            $user_1 = User::findOne($order->parent_id);
            if (!$user_1) {
                $order->save();
                return;
            }
            $user_1->total_price += $order->first_price;
            $user_1->price += $order->first_price;
            $user_1->save();
            UserShareMoney::set($order->first_price, $user_1->id, $order->id, 0, 1, $this->store_id, 0);
            $order->is_price = 1;
            $order->save();
        }
        //二级佣金发放
        if ($this->share_setting->level >= 2) {
            $user_2 = User::findOne($order->parent_id_1);
            if (!$user_2) {
                if ($user_1->parent_id != 0 && $order->parent_id_1 == 0) {
                    $res = self::money($user_1->parent_id, $order->second_price);
                    UserShareMoney::set($order->second_price, $user_1->parent_id, $order->id, 0, 2, $this->store_id, 0);
                    if ($res['parent_id'] != 0 && $this->share_setting->level == 3) {
                        $res = self::money($res['parent_id'], $order->third_price);
                        UserShareMoney::set($order->third_price, $res['parent_id'], $order->id, 0, 3, $this->store_id, 0);
                    }
                }
                return;
            }
            $user_2->total_price += $order->second_price;
            $user_2->price += $order->second_price;
            $user_2->save();
            UserShareMoney::set($order->second_price, $user_2->id, $order->id, 0, 2, $this->store_id, 0);
        }
        //三级佣金发放
        if ($this->share_setting->level >= 3) {
            $user_3 = User::findOne($order->parent_id_2);
            if (!$user_3) {
                if ($user_2->parent_id != 0 && $order->parent_id_2 == 0) {
                    self::money($user_2->parent_id, $order->third_price);
                    UserShareMoney::set($order->third_price, $user_2->parent_id, $order->id, 0, 3, $this->store_id, 0);
                }
                return;
            }
            $user_3->total_price += $order->third_price;
            $user_3->price += $order->third_price;
            $user_3->save();
            UserShareMoney::set($order->third_price, $user_3->id, $order->id, 0, 3, $this->store_id, 0);
        }
    }

    /**
     * 佣金发放 秒杀
     */
    public function share_money_ms($id)
    {
        $order = MsOrder::findOne($id);
        if ($this->share_setting->level == 0) {
            return false;
        }
        if ($order->is_price != 0) {
            return false;
        }
        if($order->rebate > 0){
            $user = User::findOne(['id'=>$order->user_id]);
            $user->total_price += doubleval($order->rebate);
            $user->price += doubleval($order->rebate);
            $user->save();
            $order->is_price = 1;
            UserShareMoney::set($order->rebate,$user->id,$order->id,0,4,$order->store_id,1);
        }
        //一级佣金发放
        if ($this->share_setting->level >= 1) {
            $user_1 = User::findOne($order->parent_id);
            if (!$user_1) {
                $order->save();
                return false;
            }
            $user_1->total_price += doubleval($order->first_price);
            $user_1->price += doubleval($order->first_price);
            $user_1->save();
            UserShareMoney::set($order->first_price, $user_1->id, $order->id, 0, 1, $this->store_id, 1);
            $order->is_price = 1;
            $order->save();
        }
        //二级佣金发放
        if ($this->share_setting->level >= 2) {
            $user_2 = User::findOne($order->parent_id_1);
            if (!$user_2) {
                return false;
            }
            $user_2->total_price += doubleval($order->second_price);
            $user_2->price += doubleval($order->second_price);
            $user_2->save();
            UserShareMoney::set($order->second_price, $user_2->id, $order->id, 0, 2, $this->store_id, 1);
        }
        //三级佣金发放
        if ($this->share_setting->level >= 3) {
            $user_3 = User::findOne($order->parent_id_2);
            if (!$user_3) {
                return false;
            }
            $user_3->total_price += doubleval($order->third_price);
            $user_3->price += doubleval($order->third_price);
            $user_3->save();
            UserShareMoney::set($order->third_price, $user_3->id, $order->id, 0, 3, $this->store_id, 1);
        }
        return true;
    }

    /**
     * @param $order_id
     * @param int $type
     * @return bool
     * 佣金发放  拼团
     */
    public function share_money_1($order_id, $type = 0)
    {
        if ($this->share_setting->level == 0) {
            return false;
        }
        $order_share = OrderShare::findOne(['store_id' => $this->store_id, 'type' => $type, 'order_id' => $order_id]);
        if($order_share->rebate > 0){
            $user = User::findOne(['id'=> $order_share->user_id]);
            $user->total_price += doubleval($order_share->rebate);
            $user->price += doubleval($order_share->rebate);
            $user->save();
            UserShareMoney::set($order_share->rebate,$user->id,$order_share->order_id,0,4,$this->store_id,2);
        }
        //一级佣金发放
        if ($this->share_setting->level >= 1) {
            $user_1 = User::findOne($order_share->parent_id_1);
            if (!$user_1) {
                return false;
            }
            $user_1->total_price += doubleval($order_share->first_price);
            $user_1->price += doubleval($order_share->first_price);
            $user_1->save();
            UserShareMoney::set($order_share->first_price, $user_1->id, $order_id, 0, 1, $this->store_id, 2);
            $order_share->save();
        }
        //二级佣金发放
        if ($this->share_setting->level >= 2) {
            $user_2 = User::findOne($order_share->parent_id_2);
            if (!$user_2) {
                return false;
            }
            $user_2->total_price += doubleval($order_share->second_price);
            $user_2->price += doubleval($order_share->second_price);
            $user_2->save();
            UserShareMoney::set($order_share->second_price, $user_2->id, $order_id, 0, 2, $this->store_id, 2);
        }
        //三级佣金发放
        if ($this->share_setting->level >= 3) {
            $user_3 = User::findOne($order_share->parent_id_3);
            if (!$user_3) {
                return false;
            }
            $user_3->total_price += doubleval($order_share->third_price);
            $user_3->price += doubleval($order_share->third_price);
            $user_3->save();
            UserShareMoney::set($order_share->third_price, $user_3->id, $order_id, 0, 3, $this->store_id, 2);
        }
        return true;
    }

    /**
     * 积分发放 --商城
     */
    private function give_integral($id)
    {
        $give = Order::findOne($id);
        if ($give['give_integral'] != 0) {
            return;
        }
        $integral = OrderDetail::find()
            ->andWhere(['order_id' => $give['id'], 'is_delete' => 0])
            ->select([
                'sum(integral)'
            ])->scalar();

        $giveUser = User::findOne(['id' => $give['user_id']]);
        $giveUser->integral += $integral;
        $giveUser->total_integral += $integral;
        $giveUser->save();
        $give->give_integral = 1;
        $give->save();
    }

    /**
     * 积分发放 --秒杀
     */
    private function give_integral_ms($id)
    {
        $give = MsOrder::findOne($id);
        if ($give['give_integral'] != 0) {
            return;
        }
        $integral = $give['integral_amount'];

        $giveUser = User::findOne(['id' => $give['user_id']]);
        $giveUser->integral += $integral;
        $giveUser->total_integral += $integral;
        $giveUser->save();
        $give->give_integral = 1;
        $give->save();
    }


    /**
     * 处理未在规定时间内付款的秒杀订单
     * @param ActionEvent $event
     * @return bool
     */
    private function checkMsNoPayOrderTimeout($event)
    {
        $order_max = 100;//每次最多处理的个数，防止运行太久
        $cache_key = 'pt_no_pay_order_timeout_checker';
        if (\Yii::$app->cache->get($cache_key))
            return true;
        \Yii::$app->cache->set($cache_key, true, 10);
        /** @var Store $store */
        $store = isset($event->action->controller->store) ? $event->action->controller->store : null;
        if (!$store) {
            \Yii::$app->cache->set($cache_key, false);
            return true;
        }

        /** @var MsOrder[] $order_list */
        $order_list = MsOrder::find()->where([
            'AND',
            [
                'is_pay' => 0,
                'is_cancel' => 0,
                'store_id' => $store->id,
                'is_delete' => 0
            ],
            ['<=', 'limit_time', time()],
            ['!=','pay_type',2]
        ])->limit($order_max)->all();
        foreach ($order_list as $order) {
            $order->is_cancel = 1;
            $order->save(false);
            if ($order->save(false)) {
                //秒杀订单所属秒杀时间段库存恢复
                $miaosha_goods = MiaoshaGoods::findOne([
                    'goods_id' => $order->goods_id,
                    'start_time' => intval(date('H', $order->addtime)),
                    'open_date' => date('Y-m-d', $order->addtime),
                ]);
                $attr_id_list = [];
                foreach (json_decode($order->attr) as $item)
                    array_push($attr_id_list, $item->attr_id);
                $miaosha_goods->numAdd($attr_id_list, $order->num);
                //秒杀商品总库存恢复
                $goods = MsGoods::findOne($order->goods_id);
                $attr_id_list = [];
                foreach (json_decode($order->attr) as $item)
                    array_push($attr_id_list, $item->attr_id);
                $goods->numAdd($attr_id_list, $order->num);
            }
        }

        \Yii::$app->cache->set($cache_key, false);
        return true;
    }

    /**
     * 入驻商户订单金额转到商户余额
     * @param \yii\base\ActionEvent $e
     */
    private function transferToMch($e)
    {
        try {
            if (!isset($e->action->controller->store)) {
                return;
            }
            \Yii::warning('---lu---');
            /** @var Order[] $order_list */
            $order_list = Order::find()->where([
                'AND',
                ['is_pay' => 1],
                ['pay_type' => [1, 3]],
                ['is_sale' => 1,],
                ['is_transfer' => 0,],
                ['!=', 'mch_id', 0,],
            ])->limit(50)
                ->all();
            foreach ($order_list as $order) {
                $mch = Mch::findOne($order->mch_id);
                if (!$mch)
                    continue;
                $mch->account_money = floatval($mch->account_money) + floatval($order->pay_price * (1 - floatval($mch->transfer_rate) / 1000));
                $mch->save();
                $order->is_transfer = 1;
                if(!$order->save())
                \Yii::warning($order->errors);
                $log = new MchAccountLog();
                $log->store_id = $order->store_id;
                $log->mch_id = $mch->id;
                $log->type = 1;
                $log->price = floatval($order->pay_price * (1 - floatval($mch->transfer_rate) / 1000));
                $log->desc = '订单（' . $order->order_no . '）结算';
                $log->addtime = time();
                if(!$log->save())
                    \Yii::warning($log->errors);
            }
        } catch (\Exception $e) {
        }
    }

//    private function setMiaoshaSellNum($miaosha_goods_id, $attr_id_list, $num)
//    {
//        $miaosha_goods = MiaoshaGoods::findOne($miaosha_goods_id);
//        if (!$miaosha_goods)
//            return false;
//        sort($attr_id_list);
//        $attr_data = json_decode($miaosha_goods->attr, true);
//        foreach ($attr_data as $i => $attr_row) {
//            $_tmp_attr_id_list = [];
//            foreach ($attr_row['attr_list'] as $attr) {
//                $_tmp_attr_id_list[] = intval($attr['attr_id']);
//            }
//            sort($_tmp_attr_id_list);
//            if ($_tmp_attr_id_list == $attr_id_list) {
//                $attr_data[$i]['sell_num'] = intval($attr_data[$i]['sell_num']) + intval($num);
//                break;
//            }
//        }
//        $miaosha_goods->attr = json_encode($attr_data, JSON_UNESCAPED_UNICODE);
//        $res = $miaosha_goods->save();
//        return $res;
//    }

}