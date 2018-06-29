<?php
/**
 * Created by PhpStorm.
 * User: peize
 * Date: 2017/12/7
 * Time: 20:05
 */

namespace app\modules\mch\models\group;


use app\models\Goods;
use app\models\PtGoods;
use app\models\PtOrder;
use app\models\PtOrderDetail;
use app\models\PtRobot;
use app\models\Shop;
use app\models\User;
use app\modules\admin\models\Model;
use app\modules\mch\extensions\Export;
use yii\data\Pagination;
use app\models\PtGoodsDetail;

class PtOrderForm extends Model
{
    public $offline;
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
            [['status', 'keyword_1', 'user_id'], 'integer'],
            [['status',], 'default', 'value' => -1],
            [['flag'], 'trim'],
            [['flag'], 'default', 'value' => 'no']
        ];
    }

    /**
     * 拼团订单列表
     */
    public function getList()
    {
        if (!$this->validate())
            return $this->getModelError();

        $query = PtOrder::find()
            ->alias('o')
            ->select([
                'o.*',
                'od.attr', 'od.num', 'od.pic',
                'g.name AS goods_name',
//                'u.nickname',
            ])
            ->andWhere(['o.is_delete' => 0, 'o.store_id' => $this->store_id])
            ->leftJoin(['od' => PtOrderDetail::tableName()], 'od.order_id=o.id')
            ->leftJoin(['g' => PtGoods::tableName()], 'g.id=od.goods_id');
//            ->leftJoin(['u' => User::tableName()], 'u.id=o.user_id');

        if ($this->offline != null) {
            $query->andwhere('o.offline=:offline', [':offline' => $this->offline]);
        }

        if ($this->status == 0) {//未付款
            $query->andWhere([
                'o.is_pay' => 0,
            ])->andWhere(['or', ['o.status' => 1], 'o.pay_type' => 2]);
        }
        if ($this->status == 1) {//待发货
            $query->andWhere([
                'o.is_send' => 0,
                'o.status' => 3,
                'o.is_success' => 1,
            ])->andWhere(['or', ['o.is_pay' => 1], ['o.pay_type' => 2]]);
        }
        if ($this->status == 2) {//待确认收货
            $query->andWhere([
                'o.is_send' => 1,
                'o.is_confirm' => 0,
                'o.is_success' => 1,
            ])->andWhere(['or', ['o.is_pay' => 1], ['o.pay_type' => 2]]);
        }
        if ($this->status == 3) {//已确认收货
            $query->andWhere([
                'o.is_send' => 1,
                'o.is_confirm' => 1,
                'o.status' => 3,
            ])->andWhere(['or', ['o.is_pay' => 1], ['o.pay_type' => 2]]);
        }
        if ($this->status == 5) {//已取消
            $query->andWhere([
                'o.is_pay' => 0,
                'o.is_cancel' => 1,

            ]);
        } else {
            $query->andWhere([
                'o.is_cancel' => 0
            ]);
        }
        if ($this->status == 6) {//拼团中
            $query->andWhere([
                'o.is_success' => 0,
                'o.is_group' => 1,
                'o.status' => 2,

            ])->andWhere(['or', ['o.is_pay' => 1], ['o.pay_type' => 2]]);
        }
        if ($this->status == 4) {//拼团失败
            $query->andWhere([
                'o.status' => 4,
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
                $query->andWhere(['like', 'o.name', $this->keyword]);
            }
//            $query->andWhere([
//                'OR',
//                ['LIKE', 'o.id', $this->keyword],
//                ['LIKE', 'o.order_no', $this->keyword],
//                ['LIKE', 'g.name', $this->keyword],
//                ['LIKE', 'o.mobile', $this->keyword],
//                ['LIKE', 'o.address', $this->keyword],
//                ['LIKE', 'o.express_no', $this->keyword],
//                ['LIKE', 'u.nickname', $this->keyword],
//            ]);
        }

        if ($this->user_id) {
            $query->andWhere(['o.user_id' => $this->user_id]);
        }
        if ($this->date_start) {
            $query->andWhere(['>=', 'o.addtime', strtotime($this->date_start)]);
        }
        if ($this->date_end) {
            $query->andWhere(['<=', 'o.addtime', strtotime($this->date_end)]);
        }

        $query1 = clone $query;
        if ($this->flag == "EXPORT") {
            $list_ex = $query1->select('o.*')->orderBy('o.addtime DESC')->asArray()->all();
            foreach ($list_ex as $i => $item) {
                if ($item['order_no'] != 'robot') {
                    $list_ex[$i]['nickname'] = User::find()->andWhere(['id' => $item['user_id']])->select('nickname')->scalar();
                } else {
                    $list_ex[$i]['nickname'] = PtRobot::find()->andWhere(['id' => $item['user_id']])->select('name')->scalar();
                }
                $list_ex[$i]['goods_list'] = $this->getOrderGoodsList($item['id']);
            }
            if ($this->offline == 2) {
                $offline = true;
            } else {
                $offline = false;
            }
            Export::order_2($list_ex, $offline);
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
            if ($v['shop_id']) {
                $list[$k]['shop'] = Shop::find()->select(['name', 'mobile', 'address', 'longitude', 'latitude'])->where(['store_id' => $this->store_id, 'id' => $v['shop_id']])->asArray()->one();
            }
            if ($v['order_no'] != 'robot') {
                $list[$k]['nickname'] = User::find()->andWhere(['id' => $v['user_id']])->select('nickname')->scalar();
            } else {
                $list[$k]['nickname'] = PtRobot::find()->andWhere(['id' => $v['user_id']])->select('name')->scalar();
            }
        }
        return [
            'list' => $list,
            'p' => $p,
            'row_count' => $count,
        ];
    }

    /**
     * @return array
     * 拼团管理订单列表（团长）
     */
    public function getGroupList()
    {
        if (!$this->validate())
            return $this->getModelError();
        $query = PtOrder::find()
            ->alias('o')
            ->select([
                'o.*',
                'od.attr', 'od.num', 'od.pic',
                'g.name goods_name', 'g.group_num',
//                'u.nickname',
            ])
            ->andWhere(['o.is_delete' => 0, 'o.store_id' => $this->store_id, 'o.is_group' => 1, 'o.parent_id' => 0])
            ->andWhere(['or', ['o.is_pay' => 1], ['o.pay_type' => 2]])
            ->leftJoin(['od' => PtOrderDetail::tableName()], 'od.order_id=o.id')
            ->leftJoin(['g' => PtGoods::tableName()], 'g.id=od.goods_id');
//            ->leftJoin(['u' => User::tableName()], 'u.id=o.user_id');

        if ($this->status == 0) {//拼团中
            $query->andWhere([
                'o.status' => 2,
            ]);
        }
        if ($this->status == 1) {//拼团成功
            $query->andWhere([
                'o.status' => 3,
                'o.is_success' => 1,
            ]);
        }
        if ($this->status == 2) {//拼团失败
            $query->andWhere([
                'o.status' => 4,
            ]);
        }

        if ($this->keyword) {//关键字查找
            $query->andWhere([
                'OR',
                ['LIKE', 'o.id', $this->keyword],
                ['LIKE', 'o.order_no', $this->keyword],
                ['LIKE', 'g.name', $this->keyword],
                ['LIKE', 'u.nickname', $this->keyword],
            ]);
        }

        $count = $query->count();
        $p = new Pagination(['totalCount' => $count, 'pageSize' => 20]);
        $list = $query
            ->orderBy('o.addtime DESC')
            ->offset($p->offset)
            ->limit($p->limit)
            ->asArray()
            ->all();

        foreach ($list as $key => $item) {
            if ($item['class_group']) {
                $detail = PtGoodsDetail::findone(['id' => $item['class_group'], 'store_id' => $this->store_id]);
                $list[$key]['group_num'] = $detail->group_num;
                $list[$key]['colonel'] = $detail->colonel;
            }
            $list[$key]['currentNum'] = PtOrder::find()->andWhere(['OR', ['id' => $item['id']], ['parent_id' => $item['id']]])->count();

            if ($item['order_no'] != 'robot') {
                $list[$key]['nickname'] = User::find()->andWhere(['id' => $item['user_id']])->select('nickname')->scalar();
            } else {
                $list[$key]['nickname'] = PtRobot::find()->andWhere(['id' => $item['user_id']])->select('name')->scalar();
            }
        }
        return [
            'list' => $list,
            'p' => $p,
            'row_count' => $count,
        ];

    }

    /**
     * @return array
     * 拼团管理订单列表（团长）
     */
    public function getGroupInfo($pid = 0)
    {
        $query = PtOrder::find()
            ->alias('o')
            ->select([
                'o.*',
                'od.attr', 'od.num', 'od.pic',
                'g.name goods_name', 'g.id goods_id', 'g.group_num',
//                'u.nickname',
            ])
            ->andWhere(['o.is_delete' => 0, 'o.store_id' => $this->store_id, 'o.is_group' => 1])
            ->andWhere(['or', ['o.is_pay' => 1], ['o.pay_type' => 2]])
            ->andWhere(['or', ['o.id' => $pid], ['o.parent_id' => $pid]])
            ->leftJoin(['od' => PtOrderDetail::tableName()], 'od.order_id=o.id')
            ->leftJoin(['g' => PtGoods::tableName()], 'g.id=od.goods_id');
//            ->leftJoin(['u'=>User::tableName()],'u.id=o.user_id');

        $count = $query->count();
        $p = new Pagination(['totalCount' => $count, 'pageSize' => 20]);

        $list = $query
            ->orderBy('o.id ASC')
            ->offset($p->offset)
            ->limit($p->limit)
            ->asArray()
            ->all();
        foreach ($list AS $key => $value) {
            if ($value['class_group']) {
                $detail = PtGoodsDetail::findone(['id' => $value['class_group'], 'store_id' => $this->store_id]);
                $list[$key]['group_num'] = $detail->group_num;
                $list[$key]['colonel'] = $detail->colonel;
            }

            if ($value['order_no'] != 'robot') {
                $list[$key]['nickname'] = User::find()->andWhere(['id' => $value['user_id']])->select('nickname')->scalar();
            } else {
                $list[$key]['nickname'] = PtRobot::find()->andWhere(['id' => $value['user_id']])->select('name')->scalar();
            }
        }
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
    public function getOrderGoodsList($order_id)
    {
        $order_detail_list = PtOrderDetail::find()->alias('od')
            ->leftJoin(['g' => PtGoods::tableName()], 'od.goods_id=g.id')
            ->where([
                'od.is_delete' => 0,
                'od.order_id' => $order_id,
            ])->select('od.*,g.name')->asArray()->all();
        foreach ($order_detail_list as $i => $order_detail) {
            $goods = new PtGoods();
            $goods->id = $order_detail['goods_id'];
            $order_detail_list[$i]['goods_pic'] = $goods->cover_pic;
            $order_detail_list[$i]['attr_list'] = json_decode($order_detail['attr']);
        }
        return $order_detail_list;
    }
}