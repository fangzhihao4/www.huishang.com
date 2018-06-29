<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/7/20
 * Time: 10:25
 */

namespace app\modules\api\models\miaosha;


use app\extensions\SendMail;
use app\extensions\Sms;
use app\models\Goods;
use app\models\MiaoshaGoods;
use app\models\MsGoods;
use app\models\MsOrder;
use app\models\MsWechatTplMsgSender;
use app\models\Order;
use app\models\OrderDetail;
use app\models\User;
use app\models\UserAccountLog;
use app\models\UserCoupon;
use app\models\WechatTplMsgSender;
use app\modules\api\models\Model;

class OrderRevokeForm extends Model
{
    public $store_id;
    public $user_id;
    public $order_id;
    public $delete_pass = false;

    public function rules()
    {
        return [
            [['order_id'], 'required'],
        ];
    }

    public function save()
    {
        if (!$this->validate()) {
            return $this->getModelError();
        }
        $order = MsOrder::findOne([
            'store_id' => $this->store_id,
            'user_id' => $this->user_id,
            'id' => $this->order_id,
            'is_send' => 0,
            'is_delete' => 0,
            'is_cancel' => 0
        ]);
        if (!$order) {
            return [
                'code' => 1,
                'msg' => '订单不存在'
            ];
        }
        //已支付订单需要后台先审核
        if ($order->is_pay == 1 && !$this->delete_pass) {
            $order->apply_delete = 1;
            Sms::send_refund($order->store_id, $order->order_no);
            $mail = new SendMail($order->store_id, $order->id, 1);
            $mail->send_refund();
            if ($order->save()) {
                return [
                    'code' => 0,
                    'msg' => '订单取消申请已提交，请等候管理员审核'
                ];
            } else {
                return $this->getModelError($order);
            }
        }

        $order->is_delete = 1;
//        $order_detail_list = OrderDetail::find()->where(['order_id' => $order->id, 'is_delete' => 0])->all();

        $t = \Yii::$app->db->beginTransaction();

        //秒杀商品总库存恢复
//        foreach ($order_detail_list as $order_detail) {
        $goods = MsGoods::findOne($order->goods_id);
        $attr_id_list = [];
        foreach (json_decode($order->attr) as $item)
            array_push($attr_id_list, $item->attr_id);
        $goods->numAdd($attr_id_list, $order->num);
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
        /*
        if (!$goods->numAdd($attr_id_list, $order_detail->num)) {
            $t->rollBack();
            return [
                'code' => 1,
                'msg' => '订单取消失败，库存操作失败',
            ];
        }
        */
//        }

        // 用户积分恢复
        $integral = json_decode($order->integral)->forehead_integral;
        $user = User::findOne(['id' => $order->user_id]);
        if ($integral > 0) {
            $user->integral += $integral;
        }
        //余额支付 退换余额
        if ($order->is_pay && $order->pay_type == 3) {
            $user->money += floatval($order->pay_price);
            $log = new UserAccountLog();
            $log->user_id = $user->id;
            $log->type = 1;
            $log->price = $order->pay_price;
            $log->desc = "秒杀订单退款,订单号（{$order->order_no}）";
            $log->addtime = time();
            $log->order_id = $order->id;
            $log->order_type = 5;
            $log->save();
        }
        if (!$user->save()) {
            $t->rollBack();
            return [
                'code' => 1,
                'msg' => $this->getModelError($user),
            ];
        }

        //已付款就退款
        if ($order->is_pay == 1 && $order->pay_type == 1) {
            $wechat = $this->getWechat();
            $data = [
                'out_trade_no' => $order->order_no,
                'out_refund_no' => $order->order_no,
                'total_fee' => $order->pay_price * 100,
                'refund_fee' => $order->pay_price * 100,
            ];
            $res = $wechat->pay->refund($data);
            if (!$res) {
                $t->rollBack();
                return [
                    'code' => 1,
                    'msg' => '订单取消失败，退款失败，服务端配置出错',
                ];
            }
            if ($res['return_code'] != 'SUCCESS') {
                $t->rollBack();
                return [
                    'code' => 1,
                    'msg' => '订单取消失败，退款失败，' . $res['return_msg'],
                    'res' => $res,
                ];
            }
            if ($res['result_code'] != 'SUCCESS') {
                $t->rollBack();
                return [
                    'code' => 1,
                    'msg' => '订单取消失败，退款失败，' . $res['err_code_des'],
                    'res' => $res,
                ];
            }
        }

        if ($order->save()) {
            if ($order->is_pay == 0) {
                UserCoupon::updateAll(['is_use' => 0], ['id' => $order->user_coupon_id]);
            }

            $t->commit();
            if ($order->pay_type == 1) {
                $msg_sender = new MsWechatTplMsgSender($this->store_id, $order->id, $this->getWechat());
                if ($order->is_pay) {
                    $remark = '订单已取消，退款金额：' . $order->pay_price;
                    $msg_sender->revokeMsg($remark);
                } else {
                    $msg_sender->revokeMsg();
                }
            }
            return [
                'code' => 0,
                'msg' => '订单已取消'
            ];
        } else {
            $t->rollBack();
            return [
                'code' => 1,
                'msg' => '订单取消失败'
            ];
        }
    }
}