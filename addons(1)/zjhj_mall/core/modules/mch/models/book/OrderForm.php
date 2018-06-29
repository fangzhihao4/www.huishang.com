<?php
/**
 * Created by PhpStorm.
 * User: peize
 * Date: 2017/12/7
 * Time: 20:05
 */

namespace app\modules\mch\models\book;


use app\models\Goods;
use app\models\PtGoods;
use app\models\PtOrder;
use app\models\PtOrderDetail;
use app\models\User;
use app\models\YyGoods;
use app\models\YyOrder;
use app\models\YyOrderForm;
use app\modules\admin\models\Model;
use app\modules\mch\extensions\Export;
use yii\data\Pagination;

class OrderForm extends Model
{
    public $store_id;
    public $user_id;
    public $keyword;

    public $status;

    public $flag;//是否导出

    public $keyword_1;
    public $date_start;
    public $date_end;

    public function rules()
    {
        return [
            [['keyword', 'date_start', 'date_end'], 'trim'],
            [['status', 'keyword_1'], 'integer'],
            [['status',], 'default', 'value' => -1],
            [['flag'], 'trim'],
            [['flag'], 'default', 'value' => 'no']
        ];
    }

    /**
     * 预约订单列表
     */
    public function getList()
    {
        if (!$this->validate())
            return $this->getModelError();

        $query = YyOrder::find()
            ->alias('o')
            ->select([
                'o.*',
                'g.name AS goods_name', 'g.cover_pic',
                'u.nickname',
            ])
            ->andWhere(['o.is_delete' => 0, 'o.store_id' => $this->store_id])
            ->leftJoin(['g' => YyGoods::tableName()], 'g.id=o.goods_id')
            ->leftJoin(['u' => User::tableName()], 'u.id=o.user_id');
        if ($this->status == 0) {//未付款
            $query->andWhere([
                'o.is_pay' => 0,
                'o.is_cancel' => 0,
            ]);
        }
        if ($this->status == 1) {//待使用
            $query->andWhere([
                'o.is_pay' => 1,
                'o.is_use' => 0,
                'o.is_cancel' => 0,
                'o.apply_delete' => 0,
                'o.is_refund' => 0,
            ]);
        }
        if ($this->status == 2) {//待评价
            $query->andWhere([
                'o.is_pay' => 1,
                'o.is_use' => 1,
            ]);
        }
        if ($this->status == 3) {//退款
            $query->andWhere([
                'o.is_pay' => 1,
                'o.apply_delete' => 1,
            ]);
        }

        if ($this->status == 5) {//已取消
            $query->andWhere([
                'o.is_pay' => 0,
                'o.is_cancel' => 1,

            ]);
        }

        if ($this->keyword) {//关键字查找
            if ($this->keyword_1 == 1) {
                $query->andWhere(['like', 'o.order_no', $this->keyword]);
            }
            if ($this->keyword_1 == 2) {
                $query->andWhere(['like', 'u.nickname', $this->keyword]);
            }
            if ($this->keyword_1 == 3) {
                $query->andWhere(['like', 'g.name', $this->keyword]);
            }
//            $query->andWhere([
//                'OR',
//                ['LIKE', 'o.id', $this->keyword],
//                ['LIKE', 'o.order_no', $this->keyword],
//                ['LIKE', 'g.name', $this->keyword],
//                ['LIKE', 'u.nickname', $this->keyword],
//            ]);
        }
        if ($this->date_start) {
            $query->andWhere(['>=', 'o.addtime', strtotime($this->date_start)]);
        }
        if ($this->date_end) {
            $query->andWhere(['<=', 'o.addtime', strtotime($this->date_end)]);
        }

        $query1 = clone $query;
        if($this->flag == "EXPORT"){
            $list_ex = $query1->select('o.*,u.nickname')->orderBy('o.addtime DESC')->asArray()->all();
            foreach ($list_ex as $i => $item) {
                $list_ex[$i]['goods_list'] = $this->getOrderGoodsList($item['goods_id'],$item['id']);
            }
            Export::expBook($list_ex);
        }
        $count = $query->count();
        $p = new Pagination(['totalCount' => $count, 'pageSize' => 20]);

        $list = $query
            ->orderBy('o.addtime DESC')
            ->offset($p->offset)
            ->limit($p->limit)
            ->asArray()
            ->all();

        foreach ($list AS $k => $v) {
            $list[$k]['orderFrom'] = YyOrderForm::find()
                ->select([
                    'key', 'value'
                ])
                ->andWhere(['store_id' => $this->store_id, 'order_id' => $v['id'], 'goods_id' => $v['goods_id'], 'is_delete' => 0])
                ->all();
        }
//        var_dump($list);die();
        return [
            'list' => $list,
            'p' => $p,
            'row_count' => $count,
        ];
    }


    /**
     * @param $order_id
     * @return array|\yii\db\ActiveRecord[]
     */
    public function getOrderGoodsList($goods_id,$order_id)
    {
        $order_list['form'] = YyOrderForm::find()->select(['key','value'])->andWhere(['order_id'=>$order_id,'goods_id'=>$goods_id])->asArray()->all();

        $order_list['name'] = YyGoods::find()->select('name')->andWhere(['id'=>$goods_id])->scalar();

        return $order_list;
    }
}