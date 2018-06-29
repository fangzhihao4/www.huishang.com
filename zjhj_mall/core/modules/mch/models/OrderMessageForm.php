<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/4/24
 * Time: 16:23
 */

namespace app\modules\mch\models;


use app\models\Goods;
use app\models\Mch;
use app\models\MsOrder;
use app\models\Order;
use app\models\OrderMessage;
use app\models\PtOrder;
use app\models\User;
use app\models\YyOrder;
use yii\data\Pagination;

class OrderMessageForm extends Model
{
    public $store_id;
    public $limit;
    public $page;

    public function rules()
    {
        return [
            [['limit', 'page'], 'integer'],
            [['limit'], 'default', 'value' => 5],
            [['page'], 'default', 'value' => 1]
        ];
    }

    public function search()
    {
        if (!$this->validate()) {
            return $this->getModelError();
        }
        $query = OrderMessage::find()->alias('om')->where([
            'om.store_id' => $this->store_id,
            'om.is_delete' => 0,
            'om.order_type' => [0, 1, 2, 3, 4]
        ]);
        $count = $query->count();

        $pagination = new Pagination(['totalCount' => $count, 'pageSize' => $this->limit]);

        $list = $query->orderBy(['om.addtime' => SORT_DESC])->limit($pagination->limit)->offset($pagination->offset)->asArray()->all();


        $id = array();
        $urlManager = \Yii::$app->urlManager;
        foreach ($list as $index => $value) {
            if ($value['order_type'] == 0) {
                $order = Order::findOne(['id' => $value['order_id'], 'store_id' => $this->store_id]);
                if ($value['type'] == 0) {
                    $list[$index]['url'] = $urlManager->createUrl(['mch/order/index', 'status' => 1]);
                } else {
                    $list[$index]['url'] = $urlManager->createUrl(['mch/order/refund']);
                }
            } elseif ($value['order_type'] == 1) {
                $order = MsOrder::findOne(['id' => $value['order_id'], 'store_id' => $this->store_id]);
                if ($value['type'] == 0) {
                    $list[$index]['url'] = $urlManager->createUrl(['mch/miaosha/order/index', 'status' => 1]);
                } else {
                    $list[$index]['url'] = $urlManager->createUrl(['mch/miaosha/order/refund']);
                }
            } elseif ($value['order_type'] == 2) {
                $order = PtOrder::findOne(['id' => $value['order_id'], 'store_id' => $this->store_id]);
                if ($value['type'] == 0) {
                    $list[$index]['url'] = $urlManager->createUrl(['mch/group/order/index', 'status' => 1]);
                } else {
                    $list[$index]['url'] = $urlManager->createUrl(['mch/group/order/refund']);
                }
            } elseif ($value['order_type'] == 3) {
                $yy_order = YyOrder::findOne(['id' => $value['order_id'], 'store_id' => $this->store_id]);
                if ($value['type'] == 0) {
                    $list[$index]['url'] = $urlManager->createUrl(['mch/book/order/index', 'status' => 1]);
                } else {
                    $list[$index]['url'] = $urlManager->createUrl(['mch/book/order/index', 'status' => 3]);
                }
                $user = User::findOne(['id' => $yy_order->user_id]);
                $order['order_no'] = $yy_order->order_no;
                $order['name'] = $user->nickname;
            } elseif ($value['order_type'] == 4) {
                $mch_goods = Goods::findOne(['id' => $value['order_id']]);
                $mch = Mch::findOne(['id' => $mch_goods->mch_id]);
                $list[$index]['url'] = $urlManager->createUrl(['mch/mch/goods/goods', 'keyword' => $mch_goods->name]);
                $order['order_no'] = $mch_goods->name;
                $order['name'] = $mch->name;
            } else {
                $order = [];
            }
            $list[$index]['order_no'] = $order['order_no'];
            $list[$index]['name'] = $order['name'];

            $time = time() - $value['addtime'];

            if ($time < 60) {
                $list[$index]['time'] = $time . '秒前';
            } else if ($time < 3600) {
                $list[$index]['time'] = ceil($time / 60) . '分钟前';
            } else if ($time < 86400) {
                $list[$index]['time'] = ceil($time / 3600) . '小时前';
            } else {
                $list[$index]['time'] = ceil($time / 86400) . '天前';
            }
            $id[] = $value['id'];
        }

        return [
            'list' => $list,
            'pagination' => $pagination
        ];
    }
}