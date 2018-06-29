<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/15
 * Time: 14:53
 */

namespace app\controllers;


use app\models\ReOrder;
use app\models\Store;
use app\models\User;
use app\models\UserAccountLog;
use app\models\WechatApp;
use luweiss\wechat\DataTransform;
use luweiss\wechat\Wechat;
use app\models\LevelOrder;

class RePayNotifyController extends Controller
{
    public $enableCsrfValidation = false; 


    public function actionIndex()
    {
        $xml = file_get_contents("php://input");
        $res = DataTransform::xmlToArray($xml);
        if ($res && !empty($res['out_trade_no'])) {//微信支付回调
            $this->wechatPayNotify($res);
        }
    }

    private function wechatPayNotify($res)
    {
        if ($res['result_code'] != 'SUCCESS' && $res['return_code'] != 'SUCCESS')
            return;
        $orderNoHead = substr($res['out_trade_no'],0,1);
        if ($orderNoHead == 'L'){
           // 预约订单回掉
           return $this->hyOrderNotify($res);
        }

        $order = ReOrder::findOne(['order_no' => $res['out_trade_no']]);
        $store = Store::findOne($order->store_id);
        if (!$store) {
            return;
        }
        $wechat_app = WechatApp::findOne($store->wechat_app_id);
        if (!$wechat_app) {
            return;
        }
        $wechat = new Wechat([
            'appId' => $wechat_app->app_id,
            'appSecret' => $wechat_app->app_secret,
            'mchId' => $wechat_app->mch_id,
            'apiKey' => $wechat_app->key,
            'cachePath' => \Yii::$app->runtimePath . '/cache',
        ]);
        $new_sign = $wechat->pay->makeSign($res);
        if ($new_sign != $res['sign']) {
            echo "Sign 错误";
            return;
        }
        if ($order->is_pay == 1) {
            echo "订单已支付";
            return;
        }
        $order->is_pay = 1;
        $order->pay_time = time();
        $order->pay_type = 1;
        if ($order->save()) {
            //金额充值
            $user = User::findOne($order->user_id);
            $money = floatval($order->pay_price) + floatval($order->send_price);
            $user->money += $money;
            $user->save();
            $log = new UserAccountLog();
            $log->user_id = $user->id;
            $log->price = $money;
            $log->type = 1;
            $log->desc = "余额充值，付款金额：{$order->pay_price}元，赠送金额：{$order->send_price}元。";
            $log->addtime = time();
            $log->order_id = $order->id;
            $log->order_type = 0;
            $log->save();
            echo '<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>';
            return;
        } else {
            echo "支付失败";
            return;
        }
    }
    private function hyOrderNotify($res){
        $order = LevelOrder::findOne([
            'order_no' => $res['out_trade_no'],
        ]);
        if (!$order){
            return;
        }
        $store = Store::findOne($order->store_id);
        if (!$store)
            return;
        $wechat_app = WechatApp::findOne($store->wechat_app_id);
        if (!$wechat_app)
            return;
        $wechat = new Wechat([
            'appId' => $wechat_app->app_id,
            'appSecret' => $wechat_app->app_secret,
            'mchId' => $wechat_app->mch_id,
            'apiKey' => $wechat_app->key,
            'cachePath' => \Yii::$app->runtimePath . '/cache',
        ]);
        $new_sign = $wechat->pay->makeSign($res);
        if ($new_sign != $res['sign']) {
            echo "Sign 错误";
            return;
        }
        if ($order->is_pay == 1) {
            echo "订单已支付";
            return;
        }
        $order->is_pay = 1;
        $order->pay_time = time();
        $order->pay_type = 1;
        if ($order->save()) {
            //会员升级
            $user = User::findOne($order->user_id);
            $user->level = $order->after_level;
            $user->save();
            echo '<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>';
            return;
        } else {
            echo "支付失败";
            return;
        }
    }

}