<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/9
 * Time: 17:08
 */

namespace app\modules\mch\models\mch;


use app\models\Goods;
use app\models\MchCat;
use app\models\MchGoodsCat;
use app\modules\mch\models\Model;
use yii\data\Pagination;

class GoodsListForm extends Model
{
    public $store_id;
    public $keyword;
    public $status;

    public $limit;
    public $page;

    public $cat;

    public function rules()
    {
        return [
            [['keyword', 'status', 'limit', 'page'], 'trim'],
            [['keyword','cat'], 'string'],
            [['status'], 'in', 'range' => [1, 0]],
        ];
    }

    public function search()
    {
        if (!$this->validate()) {
            return $this->getModelError();
        }

        $query_cat = MchGoodsCat::find()->alias('gc')
            ->leftJoin(['c' => MchCat::tableName()], 'c.id=gc.cat_id')
            ->select(['gc.goods_id', 'c.name', 'gc.cat_id']);

        $query = Goods::find()->alias('g')->where(['g.store_id' => $this->store_id, 'g.is_delete' => 0])
            ->andWhere(['>', 'g.mch_id', 0])
            ->leftJoin(['gc' => $query_cat], 'gc.goods_id = g.id');

        $cat_query = clone $query;

        if ($this->status) {
            $query->andWhere(['g.status' => $this->status]);
        }
        if($this->keyword){
            $query->andWhere(['LIKE', 'g.name', $this->keyword]);
        }
        if ($this->cat) {
            $query->andWhere(['gc.name'=>$this->cat]);
        }

        //有商品的分类列表
        $cat_list = $cat_query->groupBy('gc.name')->orderBy(['g.cat_id' => SORT_ASC])
            ->select(['gc.name'])->asArray()->column();

        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count, 'pageSize' => $this->limit]);
        $query->select('g.id,g.name,g.price,g.original_price,g.status,g.cover_pic,g.sort,g.attr,g.cat_id,g.virtual_sales,g.store_id,g.quick_purchase');

        $list = $query->groupBy('g.id')->orderBy(['g.sort' => SORT_ASC, 'g.addtime' => SORT_DESC])
            ->limit($pagination->limit)->offset($pagination->offset)->all();

        return [
            'list' => $list,
            'pagination' => $pagination,
            'cat_list' => $cat_list
        ];
    }
}