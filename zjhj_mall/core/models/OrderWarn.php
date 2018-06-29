<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/23
 * Time: 14:26
 */

namespace app\models;


use app\extensions\PinterOrder;
use app\extensions\printerPtOrder;
use app\extensions\SendMail;
use app\extensions\Sms;
use app\modules\api\models\CouponPaySendForm;
use luweiss\wechat\Wechat;

class OrderWarn extends Model
{
    public $store_id;
    public $order_id;

    public $order_type;//订单类型 0--商城订单 1--秒杀订单 2--拼团订单 3--预约订单
    public $order;
    public $wechat;


    /**
     * @return Wechat
     */
    public function getWechat()
    {
        return isset(\Yii::$app->controller->wechat) ? \Yii::$app->controller->wechat : null;
    }

    //支付完成之后，相关的操作
    public function notify()
    {
        $this->wechat = $this->getWechat();
        try {
            $is_sms = 0;
            $is_mail = 0;
            $is_print = 0;
            if ($this->order_type == 0) {
                $this->OrderNotify();
                $is_sms = 1;
                $is_mail = 1;
                $is_print = 1;
            } else if ($this->order_type == 1) {
                $this->MsOrderNotify();
                $ms_setting = MsSetting::findOne(['store_id' => $this->store_id]);
                if ($ms_setting) {
                    $is_sms = $ms_setting->is_sms;
                    $is_mail = $ms_setting->is_mail;
                    $is_print = $ms_setting->is_print;
                }
            } else if ($this->order_type == 2) {
                $this->PtOrderNotify();
                $pt_setting = PtSetting::findOne(['store_id' => $this->store_id]);
                if ($pt_setting) {
                    $is_sms = $pt_setting->is_sms;
                    $is_mail = $pt_setting->is_mail;
                    $is_print = $pt_setting->is_print;
                }
            } else if ($this->order_type == 3) {
                $this->YyOrderNotify();
                $yy_setting = YySetting::findOne(['store_id' => $this->store_id]);
                if ($yy_setting) {
                    $is_sms = $yy_setting->is_sms;
                    $is_mail = $yy_setting->is_mail;
                    $is_print = $yy_setting->is_print;
                }
            } else {
                return false;
            }
            $order = $this->order;
            //后台订单提醒
            OrderMessage::set($order->id, $order->store_id, $this->order_type, 0);
            \Yii::warning('is_sms:' . $is_sms . 'is_mail:' . $is_mail . 'is_print:' . $is_print);
            //短信发送
            if ($is_sms == 1) {
                \Yii::warning('is_sms:' . $is_sms);
                Sms::send($order->store_id, $order->order_no);
            }
            //邮件发送
            if ($is_mail == 1) {
                \Yii::warning('is_mail:' . $is_mail);
                $mail = new SendMail($order->store_id, $order->id, $this->order_type);
                $mail->send();
            }
            //订单打印
            if ($is_print == 1) {
                \Yii::warning('is_print:' . $is_print);
                $printer_order = new PinterOrder($order->store_id, $order->id, 'pay', $this->order_type);
                $res = $printer_order->print_order();
            }
            //向商户发送模板消息
            if ($this->order->mch_id) {
                $this->tplMsgToMch();
            }
        } catch (\Exception $e) {
        }
    }

    //商城
    private function OrderNotify()
    {
        /* @var Order $order */
        $order = $this->order = Order::findOne(['id' => $this->order_id]);
        //余额支付记录保存
        if($order->pay_type == 3){
            $log = new UserAccountLog();
            $log->user_id = $order->user_id;
            $log->type = 2;
            $log->price = $order->pay_price;
            $log->desc = "商城余额支付，订单号为：{$order->order_no}。";
            $log->addtime = time();
            $log->order_id = $order->id;
            $log->order_type = 1;
            $log->save();
        }

        $this->store_id = $order->store_id;
        //发送模板消息
        if ($order->pay_type = 1) {
            $wechat_tpl_meg_sender = new WechatTplMsgSender($order->store_id, $order->id, $this->wechat);
            $wechat_tpl_meg_sender->payMsg();
        }
        //消费满指定金额自动成为分销商
        $this->autoBecomeShare($order->user_id, $order->store_id);
        //首页购买提示
        $this->buyData($order->order_no, $order->store_id, 1);
        if (in_array($this->order->pay_type, [1, 3])) {
            //支付成功赠送优惠券
            $this->paySendCoupon($order->store_id, $order->user_id);
            //支付成功赠送卡券
            $this->paySendCard($order->store_id, $order->user_id, $order->id);
        }
        return true;
    }

    //秒杀
    private function MsOrderNotify()
    {
        /* @var MsOrder $order */
        $order = $this->order = MsOrder::findOne(['id' => $this->order_id]);
        //余额支付记录保存
        if($order->pay_type == 3){
            $log = new UserAccountLog();
            $log->user_id = $order->user_id;
            $log->type = 2;
            $log->price = $order->pay_price;
            $log->desc = "秒杀余额支付，订单号为：{$order->order_no}。";
            $log->addtime = time();
            $log->order_id = $order->id;
            $log->order_type = 2;
            $log->save();
        }
        $this->store_id = $order->store_id;
        //发送模板消息
        if ($order->pay_type == 1) {
            $wechat_tpl_meg_sender = new MsWechatTplMsgSender($order->store_id, $order->id, $this->wechat);
            $wechat_tpl_meg_sender->payMsg();
        }
        //首页购买提示
        $this->buyData($order->order_no, $order->store_id, 3);
        return true;
    }

    //拼团
    private function PtOrderNotify()
    {
        /* @var PtOrder $order */
        $order = $this->order = PtOrder::findOne(['id' => $this->order_id]);
        //余额支付记录保存
        if($order->pay_type == 3){
            $log = new UserAccountLog();
            $log->user_id = $order->user_id;
            $log->type = 2;
            $log->price = $order->pay_price;
            $log->desc = "拼团余额支付，订单号为：{$order->order_no}。";
            $log->addtime = time();
            $log->order_id = $order->id;
            $log->order_type = 3;
            $log->save();
        }
        $this->store_id = $order->store_id;

        if ($order->parent_id == 0 && $order->is_group == 1) {
            $pid = $order->id;
        } elseif ($order->is_group == 1) {
            $pid = $order->parent_id;
        } else {
            $pid = -1;
        }
        //判断拼团是否成功
        if ($order->getSurplusGruop() <= 0) {
            $orderList = PtOrder::find()
                ->andWhere(['or', ['id' => $pid], ['parent_id' => $pid]])
                ->andWhere(['status' => 2, 'is_group' => 1])
                ->andWhere(['or',['is_pay' => 1],['pay_type'=>2]])
                ->all();
            foreach ($orderList AS $val) {
                $val->is_success = 1;
                $val->success_time = time();
                $val->status = 3;
                $val->save();
            }
            //发送模板消息
            $notice = new PtNoticeSender($this->wechat, $order->store_id);
            $notice->sendSuccessNotice($order->id);
        }

        //首页购买提示
        $this->buyData($order->order_no, $order->store_id, 4);
        return true;
    }

    //预约
    private function YyOrderNotify()
    {
        /* @var YyOrder $order */
        $order = $this->order = YyOrder::findOne(['id' => $this->order_id]);
        $this->store_id = $order->store_id;
        //发送模板消息
        $wechat_tpl_meg_sender = new YyWechatTplMsgSender($order->store_id, $order->id, $this->wechat);
        $wechat_tpl_meg_sender->payMsg();
        //首页购买提示
        $this->buyData($order->order_no, $order->store_id, 3);
        return true;
    }

    /**
     * 购买成功首页提示
     */
    private function buyData($order_no, $store_id, $type)
    {
        switch ($type) {
            case 1:
                $order = Order::find()->select(['u.nickname', 'g.name', 'u.avatar_url', 'od.goods_id'])->alias('c')
                    ->where('c.order_no=:order', [':order' => $order_no])
                    ->andwhere('c.store_id=:store_id', [':store_id' => $store_id])
                    ->leftJoin(['u' => User::tableName()], 'u.id=c.user_id')
                    ->leftJoin(['od' => OrderDetail::tableName()], 'od.order_id=c.id')
                    ->leftJoin(['g' => Goods::tableName()], 'od.goods_id = g.id')
                    ->asArray()->one();
                break;
            case 2:
                $order = YyOrder::find()->select(['u.nickname', 'g.name', 'u.avatar_url', 'g.id as goods_id'])->alias('c')
                    ->where('c.order_no=:order', [':order' => $order_no])
                    ->andwhere('c.store_id=:store_id', [':store_id' => $store_id])
                    ->leftJoin(['u' => User::tableName()], 'u.id=c.user_id')
                    ->leftJoin(['g' => YyGoods::tableName()], 'c.goods_id = g.id')
                    ->asArray()->one();
                break;
            case 3:
                $order = MsOrder::find()->select(['u.nickname', 'g.name', 'u.avatar_url', 'c.goods_id'])->alias('c')
                    ->where('c.order_no=:order', [':order' => $order_no])
                    ->andwhere('c.store_id=:store_id', [':store_id' => $store_id])
                    ->leftJoin(['u' => User::tableName()], 'u.id=c.user_id')
                    ->leftJoin(['g' => MsGoods::tableName()], 'c.goods_id = g.id')
                    ->asArray()->one();

                $goods = MiaoshaGoods::find()->select(['*'])->where(['open_date' => date("Y-m-d"), 'is_delete' => 0, 'goods_id' => $order['goods_id']])
                    ->andwhere('store_id=:store_id', [':store_id' => $store_id])
                    ->andWhere(['>', 'start_time', date("H")])
                    ->asArray()->one();
                $order['goods_id'] = $goods['id'];
                break;
            case 4:
                $order = PtOrder::find()->select(['u.nickname', 'g.name', 'u.avatar_url', 'od.goods_id'])->alias('c')
                    ->where('c.order_no=:order', [':order' => $order_no])
                    ->andwhere('c.store_id=:store_id', [':store_id' => $store_id])
                    ->leftJoin(['u' => User::tableName()], 'u.id=c.user_id')
                    ->leftJoin(['od' => PtOrderDetail::tableName()], 'od.order_id=c.id')
                    ->leftJoin(['g' => PtGoods::tableName()], 'od.goods_id = g.id')
                    ->asArray()->one();
                break;
            default:
                return;
        }

        $key = "buy_data";
        $data = (object)null;
        $data->type = $type;
        $data->store_id = $store_id;
        $data->order_no = $order_no;
        $data->user = $order['nickname'];
        $data->goods = $order['goods_id'];
        $data->address = $order['name'];
        $data->avatar_url = $order['avatar_url'];
        $data->time = time();
        $new = json_encode($data);
        $cache = \Yii::$app->cache;
        $cache->set($key, $new, 300);
    }

    /**
     * 支付成功送优惠券
     */
    private function paySendCoupon($store_id, $user_id)
    {
        $form = new CouponPaySendForm();
        $form->store_id = $store_id;
        $form->user_id = $user_id;
        $form->save();
    }


    /**
     * 消费满指定金额自动成为分销商
     * @param $user_id integer 用户id
     */
    private function autoBecomeShare($user_id, $store_id)
    {
        $auto_share_val = floatval(Option::get('auto_share_val', $store_id, 'share', 0));
        if ($auto_share_val == 0)
            return;
        $share = Share::findOne(['user_id' => $user_id, 'is_delete' => 0, 'store_id' => $store_id]);
        if ($share && $share->status == 1) {
            return;
        }
        $consumption_sum = Order::find()->where(['user_id' => $user_id, 'is_delete' => 0, 'is_pay' => 1])->sum('pay_price');
        $consumption_sum = floatval(($consumption_sum ? $consumption_sum : 0));
        if ($consumption_sum < $auto_share_val)
            return;
        if (!$share || $share->status == 2) {
            $share = new Share();
            $share->user_id = $user_id;
            $share->mobile = '';
            $share->name = '';
            $share->is_delete = 0;
            $share->store_id = $store_id;
        }
        $share->status = 1;
        $share->addtime = time();
        $share->save();

        $user = User::findOne($user_id);
        $user->time = time();
        $user->is_distributor = 1;
        $user->save();
    }

    /**
     * 支付成功送卡券
     */
    private function paySendCard($store_id, $user_id, $order_id)
    {
        $form = new CardSendForm();
        $form->store_id = $store_id;
        $form->user_id = $user_id;
        $form->order_id = $order_id;
        $form->save();
    }

    //售后订单申请成功，相关操作
    public function refund()
    {
        $this->wechat = $this->getWechat();
        try {
            $is_sms = 0;
            $is_mail = 0;
            if ($this->order_type == 0) {
                $is_sms = 1;
                $is_mail = 1;
                $order = Order::findOne(['id' => $this->order_id]);
            } elseif ($this->order_type == 1) {
                $ms_setting = MsSetting::findOne(['store_id' => $this->store_id]);
                $is_sms = $ms_setting->is_sms;
                $is_mail = $ms_setting->is_mail;
                $order = MsOrder::findOne(['store_id' => $this->store_id]);
            } elseif ($this->order_type == 2) {
                $pt_setting = PtSetting::findOne(['store_id' => $this->store_id]);
                $is_sms = $pt_setting->is_sms;
                $is_mail = $pt_setting->is_mail;
                $order = PtOrder::findOne(['store_id' => $this->store_id]);
            } elseif ($this->order_type == 3) {
                $yy_setting = YySetting::findOne(['store_id' => $this->store_id]);
                $is_sms = $yy_setting->is_sms;
                $is_mail = $yy_setting->is_mail;
                $order = YyOrder::findOne(['store_id' => $this->store_id]);
            } else {
                return false;
            }
            OrderMessage::set($order->id, $order->store_id, $this->order_type, 1);
            if ($is_sms == 1) {
                Sms::send_refund($this->store_id, $order->order_no);
            }
            if ($is_mail == 1) {
                $mail = new SendMail($order->store_id, $order->id);
                $mail->send_refund();
            }
        } catch (\Exception $e) {

        }
    }

    /**
     * 向入驻商发送小程序模板消息
     */
    public function tplMsgToMch()
    {
        $order = $this->order;
        if (!$order)
            return;
        $user = User::find()->where(['id' => Mch::find()->select('user_id')->where(['id' => $order->mch_id])])->one();
        if (!$user) {
            \Yii::warning('向入驻商发送模板消息失败：没有找到用户。');
            return;
        }
        $wechat = $this->getWechat();
        $tpl = Option::get('mch_tpl_msg', $order->store_id);
        if (!$tpl || !$tpl['order']) {
            \Yii::warning('向入驻商发送模板消息失败：模板消息ID未配置。');
            return;
        }
        /** @var UserFormId $user_form_id */
        $user_form_id = UserFormId::find()->where([
            'AND',
            ['>=', 'addtime', time() - (86400 * 7 - 3600)],
            ['>=', 'times', 1],
            ['user_id' => $user->id,],
        ])->orderBy('addtime')->limit(1)->one();
        $at = $wechat->getAccessToken();
        $api = "https://api.weixin.qq.com/cgi-bin/message/wxopen/template/send?access_token={$at}";
        $data = [
            'touser' => $user->wechat_open_id,
            'template_id' => $tpl['order'],
            'page' => 'mch/m/myshop/myshop',
            'form_id' => $user_form_id->form_id,
            'data' => [
                'keyword1' => [
                    'color' => '',
                    'value' => $order->order_no,
                ],
                'keyword2' => [
                    'color' => '',
                    'value' => '您有一笔新的订单，请及时处理。',
                ],
            ],
        ];

        \Yii::trace('--模板消息发送开始--');
        $wechat->curl->post($api, json_encode($data, JSON_UNESCAPED_UNICODE));
        if (!$wechat->curl->response) {
            \Yii::warning('模板消息发送失败：' . $wechat->curl->error_message);
            return;
        }
        $res = json_decode($wechat->curl->response, true);
        if ($res && $res['errcode'] == 0) {
            $user_form_id->times = $user_form_id->times - 1;
            $user_form_id->save();
            return;
        }
        if ($res && ($res['errcode'] == 41028 || $res['errcode'] == 41029)) {
            \Yii::warning('模板消息发送失败：' . $res['errmsg']);
            $user_form_id->times = $user_form_id->times - 1;
            $user_form_id->save();
            return;
        }
        if ($res && $res['errcode']) {
            \Yii::warning('模板消息发送失败：' . $res['errmsg']);
        }
    }
}