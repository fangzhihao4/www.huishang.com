<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/9
 * Time: 11:18
 */

namespace app\modules\mch\models\mch;


use app\models\Goods;
use app\models\Mch;
use app\models\Order;
use app\models\OrderDetail;
use app\models\OrderRefund;
use app\models\Shop;
use app\models\User;
use app\modules\mch\extensions\Export;
use app\modules\mch\models\Model;
use yii\data\Pagination;

class OrderListForm extends Model
{
    public $store_id;
    public $keyword;
    public $status;
    public $page;
    public $limit;
    public $flag;//是否导出
    public $date_start;
    public $date_end;
    public $keyword_1;
    public $seller_comments;


    public function rules()
    {
        return [
            [['keyword',], 'trim'],
            [['status', 'page', 'limit', 'keyword_1'], 'integer'],
            [['status',], 'default', 'value' => -1],
            [['page',], 'default', 'value' => 1],
            //[['limit',], 'default', 'value' => 20],
            [['flag', 'date_start', 'date_end'], 'trim'],
            [['flag'], 'default', 'value' => 'no'],
            [['seller_comments'], 'string'],
        ];
    }

    public function search()
    {
        if (!$this->validate()) {
            return $this->getModelError();
        }
        $query = Order::find()->alias('o')->where([
            'o.store_id' => $this->store_id
        ])->andWhere(['>', 'o.mch_id', 0])
            ->leftJoin(['u' => User::tableName()], 'u.id=o.user_id')
            ->leftJoin(['m'=>Mch::tableName()],'m.id=o.mch_id');

        if ($this->status == 0) {//未付款
            $query->andWhere(['o.is_pay' => 0]);
        }
        if ($this->status == 1) {//待发货
            $query->andWhere([
                'o.is_send' => 0
            ])->andWhere(['or', ['o.is_pay' => 1], ['o.pay_type' => 2]]);
        }
        if ($this->status == 2) {//待确认收货
            $query->andWhere([
                'o.is_send' => 1,
                'o.is_confirm' => 0
            ]);
        }
        if ($this->status == 3) {//已确认收货
            $query->andWhere([
                'o.is_send' => 1,
                'o.is_confirm' => 1
            ]);
        }
        if ($this->status == 4) {//售后

        }
        if ($this->status == 5) {//已取消订单
            $query->andWhere([
                'or',
                ['o.is_cancel' => 1],
                ['o.is_delete' => 1]
            ]);
        } else {
            $query->andWhere([
                'o.is_cancel' => 0,
                'o.is_delete' => 0,
            ]);
        }
        if ($this->status == 6) {
            $query->andWhere(['o.apply_delete' => 1]);
        }
        if ($this->status == 7) {

        }
        if ($this->status == 8) {
            $query->andWhere(['o.is_recycle' => 1]);
        } else {
            $query->andWhere(['o.is_recycle' => 0]);
        }
        if ($this->date_start) {
            $query->andWhere(['>=', 'o.addtime', strtotime($this->date_start)]);
        }
        if ($this->date_end) {
            $query->andWhere(['<=', 'o.addtime', strtotime($this->date_end) + 86400]);
        }

        if ($this->keyword) {//关键字查找
            if ($this->keyword_1 == 1) {
                $query->andWhere(['like', 'o.order_no', $this->keyword]);
            }
            if ($this->keyword_1 == 2) {
                $query->andWhere(['like', 'u.nickname', $this->keyword]);
            }
            if ($this->keyword_1 == 3) {
                $query->andWhere(['like', 'o.name', $this->keyword]);
            }
        }
        $query1 = clone $query;
        if ($this->flag == "EXPORT") {
            $list_ex = $query1->select('o.*,u.nickname')->orderBy('o.addtime DESC')->asArray()->all();
            foreach ($list_ex as $i => $item) {
                $list_ex[$i]['goods_list'] = $this->getOrderGoodsList($item['id']);
            }
            Export::order_2($list_ex, null);
        }
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count, 'pageSize' => $this->limit, 'page' => $this->page - 1]);
        $list = $query->limit($pagination->limit)->offset($pagination->offset)->orderBy('o.addtime DESC')
            ->select('o.*,u.nickname,m.realname,m.tel,m.name')->asArray()->all();


        foreach ($list as $i => $item) {
            $list[$i]['goods_list'] = $this->getOrderGoodsList($item['id']);
            $order_refund = OrderRefund::findOne(['store_id' => $this->store_id, 'order_id' => $item['id'], 'is_delete' => 0]);
            $list[$i]['refund'] = "";
            if ($order_refund) {
                $list[$i]['refund'] = $order_refund->status;
            }
            $list[$i]['integral'] = json_decode($item['integral'], true);
            $list[$i]['flag'] = 0;
        }
        return [
            'row_count' => $count,
            'page_count' => $pagination->pageCount,
            'pagination' => $pagination,
            'list' => $list,
        ];

    }

    public function getOrderGoodsList($order_id)
    {
        $order_detail_list = OrderDetail::find()->alias('od')
            ->leftJoin(['g' => Goods::tableName()], 'od.goods_id=g.id')
            ->where([
                'od.is_delete' => 0,
                'od.order_id' => $order_id,
            ])->select('od.*,g.name,g.unit')->asArray()->all();
        foreach ($order_detail_list as $i => $order_detail) {
            $goods = new Goods();
            $goods->id = $order_detail['goods_id'];
            $order_detail_list[$i]['goods_pic'] = $goods->getGoodsPic(0)->pic_url;
            $order_detail_list[$i]['attr_list'] = json_decode($order_detail['attr']);
        }
        return $order_detail_list;
    }
}