<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/8/3
 * Time: 14:58
 */

namespace app\extensions;


use Aliyun\Api\Sms\Request\V20170525\SendSmsRequest;
use Aliyun\Core\DefaultAcsClient;
use Aliyun\Core\Profile\DefaultProfile;
use app\models\SmsRecord;
use app\models\SmsSetting;
use yii\helpers\ArrayHelper;
use yii\helpers\VarDumper;

require_once dirname(__DIR__) . '/extensions/aliyun/api_demo/SmsDemo.php';
require_once dirname(__DIR__) . '/extensions/alidayu/TopSdk.php';

class Sms
{
    /**
     * 发送短信
     *
     * 短信通知
     * @param string $store_id 商铺ID
     * @param string $content 内容，字符串
     * @return array
     */
    public static function send($store_id, $content = null)
    {
//        require \Yii::$app->basePath . '/extensions/aliyun/api_demo/SmsDemo.php';
        $sms_setting = SmsSetting::findOne(['is_delete' => 0, 'store_id' => $store_id]);
        if ($sms_setting->status == 0) {
            return [
                'code' => 1,
                'msg' => '短信通知服务未开启'
            ];
        }
        $content_sms[$sms_setting->msg] = substr($content, -8);
        $res = null;
        $resp = null;

        $a = str_replace("，", ",", $sms_setting->mobile);
        $g = explode(",", $a);
        foreach ($g as $mobile) {
            if(!$mobile){
                continue;
            }
            try {
                $acsClient = new \SmsDemo($sms_setting->AccessKeyId, $sms_setting->AccessKeySecret);
                $res = $acsClient->sendSms($sms_setting->sign, $sms_setting->tpl, $mobile, $content_sms);
            } catch (\Exception $e) {
                \Yii::warning("阿里云短信调用失败：" . $e->getMessage());
                try {
                    $c = new \TopClient();
                    $c->appkey = $sms_setting->AccessKeyId;
                    $c->secretKey = $sms_setting->AccessKeySecret;
                    $req = new \AlibabaAliqinFcSmsNumSendRequest;
                    $req->setSmsType("normal");
                    $req->setSmsFreeSignName($sms_setting->sign);
                    $req->setSmsParam(json_encode($content_sms, JSON_UNESCAPED_UNICODE));
                    $req->setRecNum($mobile);
                    $req->setSmsTemplateCode($sms_setting->tpl);
                    $resp = $c->execute($req);
                } catch (\Exception $e) {
                    \Yii::warning("阿里大鱼调用失败：" . $e->getMessage());

                }
            }
            \Yii::trace("短信发送结果：" . $resp ? json_encode($resp, JSON_UNESCAPED_UNICODE) : json_encode($res, JSON_UNESCAPED_UNICODE));
        }
        if (($res && $res->Code == "OK") || ($resp && $resp->code == 0)) {
            if (is_array($content_sms)) {
                foreach ($content_sms as $k => $v)
                    $content_sms[$k] = strval($v);
                $content_sms = json_encode($content_sms, JSON_UNESCAPED_UNICODE);
            }
            $smsRecord = new SmsRecord();
            $smsRecord->mobile = $sms_setting->mobile;
            $smsRecord->tpl = $sms_setting->tpl;
            $smsRecord->content = $content_sms;
            $smsRecord->ip = \Yii::$app->request->userIP;
            $smsRecord->addtime = time();
            $smsRecord->save();
            return [
                'code' => 0,
                'msg' => '成功'
            ];
        } else {
            return [
                'code' => 1,
                'msg' => $res->Message.$resp->sub_msg
            ];
        }
    }
    /**
     * 发送短信  退款通知
     * @param string $store_id 商铺ID
     * @param string $content 内容，字符串
     * @return array
     */
    public static function send_refund($store_id, $content = null)
    {
//        require \Yii::$app->basePath . '/extensions/aliyun/api_demo/SmsDemo.php';
        $sms_setting = SmsSetting::findOne(['is_delete' => 0, 'store_id' => $store_id]);
        if ($sms_setting->status == 0) {
            return [
                'code' => 1,
                'msg' => '短信通知服务未开启'
            ];
        }
//        $content_sms[$sms_setting->msg] = substr($content, -8);
        $res = null;
        $resp = null;

        $a = str_replace("，", ",", $sms_setting->mobile);
        $g = explode(",", $a);
        $tpl = json_decode($sms_setting->tpl_refund,true);
        if(!is_array($tpl) || !$tpl['tpl']){
            return [
                'code'=>1,
                'msg'=>'未设置退款短信'
            ];
        }
        foreach ($g as $mobile) {
            try {
                $acsClient = new \SmsDemo($sms_setting->AccessKeyId, $sms_setting->AccessKeySecret);
                $res = $acsClient->sendSms($sms_setting->sign, $tpl['tpl'], $mobile, '');
            } catch (\Exception $e) {
//                \Yii::warning("阿里云短信调用失败：" . $e->getMessage());
                try {
                    $c = new \TopClient();
                    $c->appkey = $sms_setting->AccessKeyId;
                    $c->secretKey = $sms_setting->AccessKeySecret;
                    $req = new \AlibabaAliqinFcSmsNumSendRequest;
                    $req->setSmsType("normal");
                    $req->setSmsFreeSignName($sms_setting->sign);
                    $req->setRecNum($mobile);
                    $req->setSmsTemplateCode($tpl['tpl']);
                    $resp = $c->execute($req);
                } catch (\Exception $e) {
//                    \Yii::warning("阿里大鱼调用失败：" . $e->getMessage());
                    return false;

                }
            }
//            $msg = $resp ? json_encode($resp, JSON_UNESCAPED_UNICODE) : ($res ? json_encode($res, JSON_UNESCAPED_UNICODE) : "");
//            \Yii::trace("短信发送结果：" . $msg);
        }
        if (($res && $res->Code == "OK") || ($resp && $resp->code == 0)) {
            $smsRecord = new SmsRecord();
            $smsRecord->mobile = $sms_setting->mobile;
            $smsRecord->tpl = $tpl['tpl'];
            $smsRecord->content = '';
            $smsRecord->ip = \Yii::$app->request->userIP;
            $smsRecord->addtime = time();
            $smsRecord->save();
            return [
                'code' => 0,
                'msg' => '成功'
            ];
        } else {
            return [
                'code' => 1,
                'msg' => $res->Message.$resp->sub_msg
            ];
        }
    }


    public static function send_text($store_id, $content = null,$mobile)
    {
//        require \Yii::$app->basePath . '/extensions/aliyun/api_demo/SmsDemo.php';
        $sms_setting = SmsSetting::findOne(['is_delete' => 0, 'store_id' => $store_id]);
        $mobile_cache = \Yii::$app->cache->get('mobile_cache'.$mobile);
        if($mobile_cache){
            return [
                'code'=>1,
                'msg'=>'请勿频繁发送短信',
                'data'=>$mobile,
            ];
        }
        \Yii::$app->cache->set('mobile_cache'.$mobile,true,60);
        if ($sms_setting->status == 0) {
            return [
                'code' => 1,
                'msg' => '短信通知服务未开启'
            ];
        }
        if(!$mobile){
            return [
                'code'=>1,
                'msg'=>'请输入手机号'
            ];
        }
        $tpl = json_decode($sms_setting->tpl_code,true);
        if(!is_array($tpl) || !$tpl['tpl']){
            return [
                'code'=>1,
                'msg'=>'未设置验证码短信'
            ];
        }
        $content_sms[$tpl['msg']] = substr($content, -8);
        $res = null;
        $resp = null;

        try {
            $acsClient = new \SmsDemo($sms_setting->AccessKeyId, $sms_setting->AccessKeySecret);
            $res = $acsClient->sendSms($sms_setting->sign, $tpl['tpl'], $mobile, $content_sms);
        } catch (\Exception $e) {
            \Yii::warning("阿里云短信调用失败：" . $e->getMessage());
            try {
                $c = new \TopClient();
                $c->appkey = $sms_setting->AccessKeyId;
                $c->secretKey = $sms_setting->AccessKeySecret;
                $req = new \AlibabaAliqinFcSmsNumSendRequest;
                $req->setSmsType("normal");
                $req->setSmsFreeSignName($sms_setting->sign);
                $req->setRecNum($mobile);
                $req->setSmsTemplateCode($tpl['tpl']);
                $resp = $c->execute($req);
            } catch (\Exception $e) {
//                    \Yii::warning("阿里大鱼调用失败：" . $e->getMessage());
                return false;

            }
        }
        \Yii::trace("短信发送结果：" . $resp ? json_encode($resp, JSON_UNESCAPED_UNICODE) : json_encode($res, JSON_UNESCAPED_UNICODE));
        if (($res && $res->Code == "OK")) {
            if (is_array($content_sms)) {
                foreach ($content_sms as $k => $v)
                    $content_sms[$k] = strval($v);
                $content_sms = json_encode($content_sms, JSON_UNESCAPED_UNICODE);
            }
            $smsRecord = new SmsRecord();
            $smsRecord->mobile = $mobile;
            $smsRecord->tpl = $tpl['tpl'];
            $smsRecord->content = $content_sms;
            $smsRecord->ip = \Yii::$app->request->userIP;
            $smsRecord->addtime = time();
            $smsRecord->save();
            return [
                'code' => 0,
                'msg' => $content
            ];
        } else {
            return [
                'code' => 2,
                'msg' => $res->Message
            ];
        }
    }
}