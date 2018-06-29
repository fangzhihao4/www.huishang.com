<?php
/**
 * Created by PhpStorm.
 * User: zc
 * Date: 2018/4/25
 * Time: 9:36
 */

namespace app\modules\api\models;

use app\models\User;
use Curl\Curl;
class UserForm extends Model
{
    public $store_id;
    public $user_id;
    public $appId;
    public $code;
    public $encryptedData;
    public $iv;
    public $wechat_app;
    public $phone;

    public function rules()
    {
        return [
            [['user_id',], 'required'],
            [['binding','phone','phonecode'], 'integer'],
            [['appId','code','encryptedData','iv','wechat_app'], 'string'],
        ];
    }
    public function userEmpower()
    {
        $user = user::find()->where(['store_id'=>$this->store_id,'id'=>$this->user_id])->one();
        $user->binding = $this->phone;
        if($user->save()){
            return [
                'code' => 0
            ];
        }else{
            return [
                'code'=>1,
                'msg'=>'fail'
            ];
        }
    }

    public function binding()
    {
        $res = $this->getOpenid($this->code);
        if (strlen($res['session_key']) != 24) {
            return 1;
        }
        if (strlen($this->iv) != 24) {
            return 3;
        }
        $aesKey=base64_decode($res['session_key']);
        $aesIV=base64_decode($this->iv);
        $aesCipher=base64_decode($this->encryptedData);
        $result=openssl_decrypt( $aesCipher, "AES-128-CBC", $aesKey, 1, $aesIV);
        $dataObj=json_decode($result);

        return [
            'code' => 0,
            'msg' => 'success',
            'data' =>[
                'dataObj' => $dataObj->phoneNumber,
            ]
        ];
    }

    private function getOpenid($code)
    {
        $api = "https://api.weixin.qq.com/sns/jscode2session?appid={$this->wechat_app->app_id}&secret={$this->wechat_app->app_secret}&js_code={$code}&grant_type=authorization_code";
        $curl = new Curl();
        $curl->setOpt(CURLOPT_SSL_VERIFYPEER, false);
        $curl->get($api);
        $res = $curl->response;
        $res = json_decode($res, true);
        return $res;
    }

}