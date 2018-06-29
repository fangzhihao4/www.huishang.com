<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/1/25
 * Time: 11:37
 */

namespace app\models;

class UserCenterForm extends Model
{
    public $store_id;
    public $user_id;
    public $data;
    public $store;

    public function rules()
    {
        return [
            [['data'], 'required'],
            [['data'], 'string'],
        ];
    }

    /**
     * @return Store
     */
    private function getStore()
    {
        $store = Store::findOne($this->store_id);
        return $store;
    }

    public function saveData()
    {
        if (!$this->validate())
            return $this->getModelError();

        Option::set('user_center_data', $this->data, $this->store_id);
        return [
            'code' => 0,
            'msg' => '保存成功',
        ];
    }

    public function getData()
    {
        $store = $this->getStore();
        $data = Option::get('user_center_data', $this->store_id);
        $default_data = $this->getDefaultData();
        if (!$data) {
            $data = $default_data;
        } else {
            $data = json_decode($data, true);
            $data = $this->checkData($data, $default_data);
        }
        foreach ($data['menus'] as $i => $menu) {
            if ($menu['id'] == 'dianhua') {
                $data['menus'][$i]['tel'] = $store->contact_tel;
            }
        }
        return [
            'code' => 0,
            'data' => $data,
            'menu_list' => $default_data['menus'],
        ];
    }

    public function checkData($list = array(), $default_list = array())
    {
        $new_list = [];
        foreach ($default_list as $index => $value) {
            if (isset($list[$index])) {
                if (is_array($value) && $index != 'menus') {
                    $new_list[$index] = $this->checkData($list[$index], $value);
                } else {
                    $new_list[$index] = $list[$index];
                }
            } else {
                $new_list[$index] = $value;
            }
        }
        return $new_list;
    }

    public function getDefaultData()
    {
        $store = $this->getStore();
        return [
            'user_center_bg' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/img-user-bg.png',
            'orders' => [
                'status_0' => [
                    'text' => '待付款',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-order-0.png',
                ],
                'status_1' => [
                    'text' => '待发货',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-order-1.png',
                ],
                'status_2' => [
                    'text' => '待收货',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-order-2.png',
                ],
                'status_3' => [
                    'text' => '已完成',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-order-3.png',
                ],
                'status_4' => [
                    'text' => '售后',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-order-4.png',
                ],
            ],
            'menus' => [
                [
                    'id' => 'pintuan',
                    'name' => '我的拼团',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-pt.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/pt/order/order',
                    'tel' => '',
                ],
                [
                    'id' => 'yuyue',
                    'name' => '我的预约',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-yy.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/book/order/order',
                    'tel' => '',
                ],
                [
                    'id' => 'fenxiao',
                    'name' => '分销中心',
                    'name_1' => '成为分销商',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-fx.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/share/index',
                    'tel' => '',
                ],
                [
                    'id' => 'kaquan',
                    'name' => '我的卡券',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-card.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/card/card',
                    'tel' => '',
                ],
                [
                    'id' => 'youhuiquan',
                    'name' => '我的优惠券',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-yhq.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/coupon/coupon',
                    'tel' => '',
                ],
                [
                    'id' => 'lingquan',
                    'name' => '领券中心',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-lingqu.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/coupon-list/coupon-list',
                    'tel' => '',
                ],
                [
                    'id' => 'shoucang',
                    'name' => '我的收藏',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-sc.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/favorite/favorite',
                    'tel' => '',
                ],
                [
                    'id' => 'kefu',
                    'name' => '在线客服',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-kf.png',
                    'open_type' => 'contact',
                    'url' => '',
                    'tel' => '',
                ],
                [
                    'id' => 'dianhua',
                    'name' => '联系我们',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-lx.png',
                    'open_type' => 'tel',
                    'url' => '',
                    'tel' => $store ? $store->contact_tel : '',
                ],
                [
                    'id' => 'fuwu',
                    'name' => '服务中心',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-help.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/article-list/article-list?id=2',
                    'tel' => '',
                ],
                [
                    'id' => 'guanyu',
                    'name' => '关于我们',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-about-us.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/article-detail/article-detail?id=about_us',
                    'tel' => '',
                ],
                [
                    'id' => 'miaosha',
                    'name' => '秒杀',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-ms.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/miaosha/order/order',
                    'tel' => '',
                ],
                [
                    'id' => 'address',
                    'name' => '收货地址',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-dz.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/address/address',
                    'tel' => '',
                ],
                [
                    'id' => 'bangding',
                    'name' => '绑定手机号',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-bangding.png',
                    'open_type' => 'navigator',
                    'url' => '/pages/bangding/bangding',
                    'tel' => '',
                ],
                [
                    'id' => 'mch',
                    'name' => '入驻商',
                    'icon' => \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/images/user-center/icon-user-mch.png',
                    'open_type' => 'navigator',
                    'url' => '/mch/m/myshop/myshop',
                    'tel' => '',
                ],
            ],
            'copyright' => [
                'text' => '',
                'icon' => '',
                'url' => '',
                'open_type' => '',
            ],
            'menu_style' => 0,
            'top_style' => 0,
            'is_wallet'=>1
        ];
    }
}