<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/16
 * Time: 15:00
 */

namespace app\modules\api\models\recharge;


use app\models\Goods;
use app\models\MsGoods;
use app\models\MsOrder;
use app\models\MsOrderRefund;
use app\models\Order;
use app\models\OrderDetail;
use app\models\OrderRefund;
use app\models\PtGoods;
use app\models\PtOrder;
use app\models\PtOrderDetail;
use app\models\PtOrderRefund;
use app\models\Recharge;
use app\models\ReOrder;
use app\modules\api\models\Model;

class RecordForm extends Model
{
    public $store_id;
    public $user;

    public $date;


    public function rules()
    {
        return [
            [['date'], 'string'],
            [['date'], 'default', 'value' => function () {
                return date('Y-m', time());
            }]
        ];
    }

    public function search()
    {
        if (!$this->validate()) {
            return $this->getModelError();
        }

        //搜索置顶月份的充值记录及余额消费记录
        $date = $this->date;
        $start = strtotime($date);
        $end = strtotime(date('Y-m-t', $start)) + 86400;
        $sql = $this->getSql();
        $select = "SELECT * ";
        $where = " WHERE al.addtime >= {$start} AND al.addtime <= {$end}";
        $list = \Yii::$app->db->createCommand($select . $sql . $where . " ORDER BY al.addtime DESC")->queryAll();
        foreach ($list as $index => $value) {
            if (in_array($value['order_type'], ['r'])) {
                $list[$index]['flag'] = 0;
                $list[$index]['price'] = '+' . (floatval($value['pay_price']) + floatval($value['send_price']));
                $list[$index]['content'] = "充值";
            } elseif (in_array($value['order_type'], ['s_re', 'ms_re', 'pt_re'])) {
                $list[$index]['flag'] = 2;
                $list[$index]['price'] = '+' . (floatval($value['pay_price']) + floatval($value['send_price']));
                $list[$index]['content'] = "订单退款";
            } else {
                $list[$index]['flag'] = 1;
                $list[$index]['price'] = '-' . floatval($value['pay_price']);
                if($value['order_type'] == 's'){
                    $goods = Goods::find()->alias('g')->where([
                        'g.store_id'=>$this->store_id
                    ])->leftJoin(['od'=>OrderDetail::tableName()],'od.goods_id=g.id')
                        ->andWhere(['od.order_id'=>$value['id']])->select(['g.name'])->asArray()->column();
                    $goods_str = implode(',', $goods);
                    $list[$index]['content'] = "消费-商城订单{$goods_str}";
                }elseif($value['order_type'] == 'ms'){
                    $goods = MsGoods::find()->alias('g')->where([
                        'g.store_id'=>$this->store_id
                    ])->leftJoin(['o'=>MsOrder::tableName()],'o.goods_id=g.id')
                        ->andWhere(['o.id'=>$value['id'],'o.is_pay'=>1,'o.pay_type'=>3])->select(['g.name'])->asArray()->one();
                    $list[$index]['content'] = "消费-秒杀订单{$goods['name']}";
                }elseif($value['order_type'] == 'pt'){
                    $goods = PtGoods::find()->alias('g')->where(['g.store_id'=>$this->store_id])
                        ->leftJoin(['od'=>PtOrderDetail::tableName()],'od.goods_id=g.id')
                        ->andWhere(['od.order_id'=>$value['id']])->select(['g.name'])->asArray()->one();
                    $list[$index]['content'] = "消费-拼团订单{$goods['name']}";
                }else{
                    $list[$index]['content'] = "消费-订单{$value['order_no']}";
                }
            }
            $list[$index]['date'] = date('Y-m-d H:i:s', $value['addtime']);
        }
        return [
            'list' => $list,
            'date' => $date
        ];

        $list = ReOrder::find()->where([
            'store_id' => $this->store_id, 'is_delete' => 0, 'is_pay' => 1, 'user_id' => $this->user->id
        ])->andWhere([
            'and',
            ['>=', 'addtime', $start],
            ['<', 'addtime', $end]
        ])->orderBy(['addtime' => SORT_DESC])->asArray()->all();
        $new_list = [];
        $time_arr = [];
        foreach ($list as $index => $value) {
            $arr = [];
            $arr['date'] = date('Y-m-d H:i:s', $value['addtime']);
            $arr['flag'] = '0';
            $arr['price'] = '+' . (floatval($value['pay_price']) + floatval($value['send_price']));
            $new_list[] = $arr;
            $time_arr[] = $arr['date'];
        }
        $order_list = Order::find()->where([
            'store_id' => $this->store_id, 'is_delete' => 0, 'is_cancel' => 0, 'is_pay' => 1, 'user_id' => $this->user->id, 'pay_type' => 3
        ])->andWhere([
            'and',
            ['>=', 'addtime', $start],
            ['<', 'addtime', $end]
        ])->orderBy(['addtime' => SORT_DESC])->asArray()->all();
        foreach ($order_list as $index => $value) {
            $arr = [];
            $arr['date'] = date('Y-m-d H:i:s', $value['addtime']);
            $arr['flag'] = 1;
            $arr['price'] = '-' . floatval($value['pay_price']);
            $arr['order_no'] = $value['order_no'];
            $new_list[] = $arr;
            $time_arr[] = $arr['date'];
        }
        array_multisort($time_arr, SORT_DESC, $new_list);

        return [
            'list' => $new_list,
            'date' => $date
        ];

    }

    public function getSql()
    {
        $r_table = ReOrder::tableName();
        $s_table = Order::tableName();
        $ms_table = MsOrder::tableName();
        $pt_table = PtOrder::tableName();

        $s_refund_table = OrderRefund::tableName();
        $ms_refund_table = MsOrderRefund::tableName();
        $pt_refund_table = PtOrderRefund::tableName();
        $query_r = "(
            SELECT
            'r' AS order_type,
            id,
            addtime,
            pay_price,
            send_price
            FROM {$r_table}
            WHERE store_id = {$this->store_id}
            AND user_id = {$this->user->id}
            AND is_delete = 0
            AND is_pay = 1
        )";
        $query_s = "(
            SELECT
            's' AS order_type,
            id,
            addtime,
            pay_price,
            0 AS send_price
            FROM {$s_table}
            WHERE store_id = {$this->store_id}
            AND user_id = {$this->user->id}
            AND is_delete = 0
            AND is_cancel = 0
            AND is_pay = 1
            AND pay_type = 3
        )";
        $query_ms = "(
            SELECT
            'ms' AS order_type,
            id,
            addtime,
            pay_price,
            0 AS send_price
            FROM {$ms_table}
            WHERE store_id = {$this->store_id}
            AND user_id = {$this->user->id}
            AND is_delete = 0
            AND is_cancel = 0
            AND is_pay = 1
            AND pay_type = 3
        )";
        $query_pt = "(
            SELECT
            'pt' AS order_type,
            id,
            addtime,
            pay_price,
            0 AS send_price
            FROM {$pt_table}
            WHERE store_id = {$this->store_id}
            AND user_id = {$this->user->id}
            AND is_delete = 0
            AND is_cancel = 0
            AND is_pay = 1
            AND pay_type = 3
            AND is_returnd = 0
        )";

        $query_s_re = "(
            SELECT
            's_re' AS order_type,
            ore.id,
            ore.addtime,
            ore.refund_price AS pay_price,
            0 AS send_price
            FROM {$s_refund_table} AS ore
            LEFT JOIN {$s_table} AS o ON o.id = ore.order_id
            WHERE ore.store_id = {$this->store_id}
            AND ore.is_delete = 0
            AND ore.type = 1
            AND ore.status = 1
            AND o.pay_type = 3
            AND ore.user_id = {$this->user->id}
        )";

        $query_ms_re = "(
            SELECT
            'ms_re' AS order_type,
            ore.id,
            ore.addtime,
            ore.refund_price AS pay_price,
            0 AS send_price
            FROM {$ms_refund_table} AS ore
            LEFT JOIN {$ms_table} AS o ON o.id = ore.order_id
            WHERE ore.store_id = {$this->store_id}
            AND ore.is_delete = 0
            AND ore.type = 1
            AND ore.status = 1
            AND o.pay_type = 3
            AND ore.user_id = {$this->user->id}
        )";

        $query_pt_re = "(
            SELECT
            'pt_re' AS order_type,
            ore.id,
            ore.addtime,
            ore.refund_price AS pay_price,
            0 AS send_price
            FROM {$pt_refund_table} AS ore
            LEFT JOIN {$pt_table} AS o ON o.id = ore.order_id
            WHERE ore.store_id = {$this->store_id}
            AND ore.is_delete = 0
            AND ore.type = 1
            AND ore.status = 1
            AND o.pay_type = 3
            AND ore.user_id = {$this->user->id}
        )";

        $sql = " FROM (
            {$query_r}
            UNION {$query_s}
            UNION {$query_ms}
            UNION {$query_pt}
            UNION {$query_s_re}
            UNION {$query_ms_re}
            UNION {$query_pt_re}
        ) AS al ";
        return $sql;
    }
}