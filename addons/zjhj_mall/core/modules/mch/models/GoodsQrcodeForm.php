<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/9/22
 * Time: 14:53
 */

namespace app\modules\mch\models;

use app\extensions\GrafikaHelper;
use app\models\Goods;
use app\models\Store;
use Curl\Curl;
use Grafika\Color;
use Grafika\Grafika;

class GoodsQrcodeForm extends Model
{
    public $store_id;
    public $goods_id;
    public $user_id;

    public function rules()
    {
        return [
            [['goods_id'], 'required'],
        ];
    }
    public function search()
    {
        $goods = Goods::findOne($this->goods_id);
        if (!$goods)
            return [
                'code' => 1,
                'msg' => '商品不存在',
            ];
        //获取小程序码图片
        $wxapp_qrcode_file_res = $this->getQrcode($goods->id);
        if ($wxapp_qrcode_file_res['code'] == 1) {
            return [
                'code' => 1,
                'msg' => '获取小程序码失败，' . $wxapp_qrcode_file_res['msg'],
            ];
        }else{
            $goods_qrcode_url = $wxapp_qrcode_file_res['file_path'];
        }
        $goods_pic_save_path = \Yii::$app->basePath . '/web/temp/';

        $goods_pic_save_name = md5("v=1.6.2&goods_id={$goods->id}&goods_name={$goods->name}&store_name={$store->name}") . '.jpg';
        $goods_qrcode_path = $goods_pic_save_path.$goods_pic_save_name;
        $fp = fopen($goods_qrcode_path, 'w');
        fwrite($fp, $goods_qrcode_url);
        fclose($fp);

        $goods_qrcode_url = trim(strrchr($goods_qrcode_path, '/'),'/');
        $pic_url = str_replace('http://', 'http://', \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/temp/' . $goods_qrcode_url);
        return [
            'code' => 0,
            'data' => [
                'pic_url' => $pic_url . '?v=' . time(),
            ],
        ];

    }
    private function getQrcode($goods_id)
    {
        $wechat = $this->getWechat();
        $access_token = $wechat->getAccessToken();
        if (!$access_token) {
            return [
                'code' => 1,
                'msg' => $wechat->errMsg,
            ];
        }
        $api = "https://api.weixin.qq.com/wxa/getwxacodeunlimit?access_token={$access_token}";
        $curl = new Curl();
        $curl->setOpt(CURLOPT_SSL_VERIFYPEER, false);
        $data = json_encode([
            'scene' => "gid:{$goods_id},uid:-1",
            'page' => 'pages/goods/goods',
            'width' => 	430,
        ]);
        \Yii::trace("GET WXAPP QRCODE:" . $data);
        $curl->post($api, $data);

        if (in_array('Content-Type: image/jpeg', $curl->response_headers)) {
            //返回图片
            return [
                'code' => 0,
                'file_path' => $curl->response,
            ];
        } else {
            //返回文字
            $res = json_decode($curl->response, true);
            return [
                'code' => 1,
                'msg' => $res['errmsg'],
            ];
        }
    }
}