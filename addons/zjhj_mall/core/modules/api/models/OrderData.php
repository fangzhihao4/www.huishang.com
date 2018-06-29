<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/28
 * Time: 10:22
 */

namespace app\modules\api\models;


use app\models\Option;

class OrderData
{
    /**
     * 支付方式
     * @param $store_id
     * @param array $is_payment //支付方式
     * @param array $ignore //忽略的支付方式
     * @return array
     */
    public static function getPayType($store_id,$is_payment = array(),$ignore = array())
    {
        if(!$is_payment || empty($is_payment)){
            $pay_str = Option::get('payment', $store_id, 'admin', '{"wechat":"1"}');
            $is_payment = json_decode($pay_str, true);
        }
        $pay_type_list = [];
        foreach ($is_payment as $index => $value) {
            if(in_array($index,$ignore)){
                continue;
            }
            if ($index == 'wechat' && $value == 1) {
                $pay_type_list[] = [
                    'name' => '微信支付',
                    'payment' => 0,
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/recharge/icon-online.png'
                ];
            }
            if ($index == 'huodao' && $value == 1) {
                $pay_type_list[] = [
                    'name' => '货到付款',
                    'payment' => 2,
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/recharge/icon-huodao.png'
                ];
            }
            if ($index == 'balance' && $value == 1) {
                $balance = Option::get('re_setting', $store_id, 'app');
                $balance = json_decode($balance, true);
                if($balance && $balance['status'] == 1){
                    $pay_type_list[] = [
                        'name' => '账户余额支付',
                        'payment' => 3,
                        'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/recharge/icon-balance.png'
                    ];
                }
            }
        }
        if(!$pay_type_list){
            $pay_type_list[] = [
                'name' => '微信支付',
                'payment' => 0,
                'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/recharge/icon-online.png'
            ];
        }
        return $pay_type_list;
    }



    //积分计算
    /**
     * @param $goods_item object 重新编写的goods_item
     * @param $store_integral int 商城设置的积分规则
     * @param $goods_id array 已设置积分的商品id数组
     * @return array
     */
    public static function integral($goods_item, $store_integral, $goods_id = array())
    {
        $integral = json_decode($goods_item->integral, true);
        $resIntegral = [
            'forehead' => 0,
            'forehead_integral' => 0,
        ];
        if ($integral) {
            //赠送积分计算
            $give = $integral['give'];
            if (strpos($give, '%') !== false) {
                // 百分比
                $give = trim($give, '%');
                $goods_item->give = (int)($goods_item->price * ($give / 100));
            } else {
                // 固定积分
                $goods_item->give = (int)($give * $goods_item->num);
            }
            //抵扣积分计算
            $forehead = $integral['forehead'];
            if (strpos($forehead, '%') !== false) {//百分比积分抵扣计算
                $forehead = trim($forehead, '%');
                if ($forehead >= 100) {
                    $forehead = 100;
                }
                if ($integral['more'] == '1') {//多件累计计算
                    $resIntegral['forehead_integral'] = (int)(($forehead / 100) * $goods_item->price * $store_integral);
                } else {
                    if (!in_array($goods_item->id, $goods_id)) { //不允许多件累计   同id商品值计算一次积分抵扣
                        $resIntegral['forehead_integral'] = (int)(($forehead / 100) * $goods_item->single_price * $store_integral);
                    }
                }
            } else {
                if ($integral['more'] == '1') {
                    $resIntegral['forehead_integral'] = (int)($store_integral * $goods_item->price);
                    if ($goods_item->price > ($forehead * $goods_item->num)) {
                        $resIntegral['forehead_integral'] = (int)($forehead * $goods_item->num * $store_integral);
                    }
                } else {
                    if (!in_array($goods_item->id, $goods_id)) {
                        $goodsPrice = $goods_item->single_price;
                        $resIntegral['forehead_integral'] = (int)($store_integral * $goodsPrice);
                        if ($goodsPrice > $forehead) {
                            $resIntegral['forehead_integral'] = (int)($forehead * $store_integral);
                        }
                    }
                }
            }
            $resIntegral['forehead'] = sprintf("%.2f", ($resIntegral['forehead_integral'] / $store_integral));
        }


        return [
            'resIntegral' => $resIntegral,
            'give' => $goods_item->give
        ];
    }
}