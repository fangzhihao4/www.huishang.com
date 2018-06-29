<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/8/7
 * Time: 12:59
 */

namespace app\modules\mch\models;


use app\models\Attr;
use app\models\AttrGroup;
use app\models\Goods;
use app\models\GoodsCard;
use app\models\GoodsCat;
use app\models\GoodsPic;
use yii\data\Pagination;
use yii\helpers\VarDumper;

class GoodsForm extends Model
{
    public $goods;

    public $store_id;
    public $name;
    public $goods_pic_list;
    public $cat_id;
    public $price;
    public $original_price;
    public $service;
    public $detail;
    public $sort;
    public $virtual_sales;

    public $cover_pic;
    public $video_url;

    public $attr;
    public $unit;

    public $individual_share;
    public $share_commission_first;
    public $share_commission_second;
    public $share_commission_third;
    public $weight;
    public $freight;

    public $full_cut;
    public $integral;
    public $goods_card;

    public $goods_num;
    public $use_attr;
    public $share_type;
    public $quick_purchase;
    public $hot_cakes;
    public $cost_price;
//    public $member_discount;
    public $rebate;


    /**
     * @return array
     */
    public function rules()
    {
        return [
            [['name', 'service', 'unit'], 'trim'],
            [['store_id', 'name', 'price', 'cat_id', 'detail', 'goods_pic_list', 'cover_pic'], 'required'],
            [['store_id', 'sort', 'virtual_sales', 'freight', 'share_type','quick_purchase','hot_cakes'], 'integer'],
            [['price', 'original_price', 'cost_price', 'weight'], 'number'],
            [['price',], 'number', 'min' => 0.01,],
            [['detail', 'service', 'cover_pic', 'video_url',], 'string'],
            [['name'], 'string', 'max' => 255],
            [['sort'], 'default', 'value' => 1000],
            [['virtual_sales'], 'default', 'value' => 0],
            [['attr', 'individual_share', 'full_cut', 'integral', 'goods_card'], 'safe',],
            [['individual_share',], 'default', 'value' => 0],
            [['share_commission_first', 'share_commission_second', 'share_commission_third', 'freight','rebate',], 'default', 'value' => 0],
            [['share_commission_first', 'share_commission_second', 'share_commission_third','rebate',], 'number', 'min' => 0],
            [['goods_num',], 'integer', 'min' => 0,],
            [['use_attr'], 'safe'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'store_id' => 'Store ID',
            'name' => '商品名称',
            'price' => '售价',
            'original_price' => '原价（只做显示用）',
            'detail' => '图文详情',
            'cat_id' => '商品分类',
            'status' => '上架状态：0=下架，1=上架',
            'goods_pic_list' => '商品图片',
            'sort' => '排序',
            'virtual_sales' => '虚拟销量',
            'cover_pic' => '商品缩略图',
            'video_url' => '视频',
            'unit' => '单位',
            'share_commission_first' => '一级佣金比例',
            'share_commission_second' => '二级佣金比例',
            'share_commission_third' => '三级佣金比例',
            'weight' => '重量',
            'freight' => '运费规则ID',
            'full_cut' => '满减',
            'integral' => '积分设置',
            'goods_num' => '商品库存',
            'cost_price' => '成本价',
//            'member_discount' => '是否参与会员折扣',
            'rebate' => '自购返利',
        ];
    }

    /**
     *
     */
    public function getList($store_id)
    {
        $query = Goods::find()
            ->alias('g')
            ->andWhere(['g.is_delete' => 0, 'g.store_id' => $store_id]);
        $count = $query->count();
        $p = new Pagination(['totalCount' => $count, 'pageSize' => 20]);

        $list = $query
            ->select(['g.*', 'c.name AS cname'])
            ->leftJoin('{{%cat}} c', 'g.cat_id=c.id')
            ->orderBy('g.sort ASC')
            ->offset($p->offset)
            ->limit($p->limit)
            ->asArray()
            ->all();
        return [$list, $p];
    }


    // 获取商品小程序码


    /**
     * 编辑
     * @return array
     */
    public function save()
    {
        if ($this->validate()) {
            if (!is_array($this->goods_pic_list) || empty($this->goods_pic_list) || count($this->goods_pic_list) == 0 || !$this->goods_pic_list[0])
                return [
                    'code' => 1,
                    'msg' => '商品图片不能为空',
                ];
            if (!$this->use_attr && ($this->goods_num === null || $this->goods_num === '')) {
                return [
                    'code' => 1,
                    'msg' => '请填写商品库存',
                ];
            }

            if (!$this->original_price)
                $this->original_price = $this->price;
                if ($this->original_price > 99999999.99){
                return [
                    'code' => 1,
                    'msg' => '商品原价超过限制',
                ];
            }

            if (!$this->cost_price)
                $this->cost_price = $this->price;
                if ($this->cost_price > 99999999.99){
                return [
                    'code' => 1,
                    'msg' => '商品成本价超过限制',
                ];
            }

            if ($this->price > 99999999.99){
                return [
                    'code' => 1,
                    'msg' => '商品售价超过限制',
                ];
            }            $goods = $this->goods;
            if ($goods->isNewRecord) {
                $goods->is_delete = 0;
                $goods->addtime = time();
                $goods->status = 0;
                $goods->attr = json_encode([], JSON_UNESCAPED_UNICODE);
            }

            $this->full_cut = json_encode($this->full_cut, JSON_UNESCAPED_UNICODE);
            if (!isset($this->integral['more'])) {
                $this->integral['more'] = '';
            }

            $this->integral = json_encode($this->integral, JSON_UNESCAPED_UNICODE);

            $_this_attributes = $this->attributes;
            
            unset($_this_attributes['attr']);
            $this->cat_id = array_unique($this->cat_id);
            foreach ($this->cat_id as $index => $value) {
                if (!$value) { 
                    return [
                        'code' => 1,
                        'msg' => '请选择分类'
                    ];
                }
            }
            $cat_id = $this->cat_id;
            $_this_attributes['cat_id'] = 0;
            $goods->attributes = $_this_attributes;
            
            $goods->quick_purchase = $this->quick_purchase;
//            $goods->member_discount = $this->member_discount;
            $goods->hot_cakes = $this->hot_cakes;
            $goods->use_attr = $this->use_attr ? 1 : 0;
            if ($goods->save()) {
                //多分类设置
                GoodsCat::updateAll(['is_delete'=>1],['goods_id'=>$goods->id]);
                foreach($cat_id as $index=>$value){
                    $cat = new GoodsCat();
                    $cat->goods_id = $goods->id;
                    $cat->store_id = $goods->store_id;
                    $cat->addtime = time();
                    $cat->cat_id = $value;
                    $cat->is_delete = 0;
                    $cat->save();
                }

                //商品图片保存
                GoodsPic::updateAll(['is_delete' => 1], ['goods_id' => $goods->id]);
                foreach ($this->goods_pic_list as $pic_url) {
                    $goods_pic = new GoodsPic();
                    $goods_pic->goods_id = $goods->id;
                    $goods_pic->pic_url = $pic_url;
                    $goods_pic->is_delete = 0;
                    $goods_pic->save();
                }
                $this->setAttr($goods);

                //商品卡券保存
                GoodsCard::updateAll(['is_delete' => 1], ['goods_id' => $goods->id]);
                foreach ($this->goods_card as $card_id) {
                    $goods_card = new GoodsCard();
                    $goods_card->goods_id = $goods->id;
                    $goods_card->card_id = $card_id;
                    $goods_card->is_delete = 0;
                    $goods_card->addtime = time();
                    $goods_card->save();
                }
                return [
                    'code' => 0,
                    'msg' => '保存成功',
                ];
            } else {
                return $this->getModelError($goods);
            }
        } else {
            return $this->getModelError();
        }
    }

    /**
     * @param Goods $goods
     */
    private function setAttr($goods)
    {
        if (!$this->use_attr) {
            list($default_attr, $default_attr_group) = $this->getDefaultAttr();
            $this->attr = [
                [
                    'attr_list' => [
                        [
                            'attr_group_name' => $default_attr_group->attr_group_name,
                            'attr_id' => $default_attr->id,
                            'attr_name' => $default_attr->attr_name,
                        ],
                    ],
                    'num' => intval($this->goods_num) ? intval($this->goods_num) : 0,
                    'price' => 0,
                ],
            ];
        }
        if (empty($this->attr) || !is_array($this->attr))
            return;
        $new_attr = [];
        foreach ($this->attr as $i => $item) {
            $new_attr_item = [
                'attr_list' => [],
                'num' => intval($item['num']),
                'price' => doubleval($item['price']),
                'no' => $item['no'] ? $item['no'] : '',
                'pic' => $item['pic'] ? $item['pic'] : '',
            ];
            foreach ($item['attr_list'] as $a) {
                $attr_group_model = AttrGroup::findOne(['store_id' => $this->store_id, 'attr_group_name' => $a['attr_group_name'], 'is_delete' => 0]);
                if (!$attr_group_model) {
                    $attr_group_model = new AttrGroup();
                    $attr_group_model->attr_group_name = $a['attr_group_name'];
                    $attr_group_model->store_id = $this->store_id;
                    $attr_group_model->is_delete = 0;
                    $attr_group_model->save();
                }
                $attr_model = Attr::findOne(['attr_group_id' => $attr_group_model->id, 'attr_name' => $a['attr_name'], 'is_delete' => 0]);
                if (!$attr_model) {
                    $attr_model = new Attr();
                    $attr_model->attr_name = $a['attr_name'];
                    $attr_model->attr_group_id = $attr_group_model->id;
                    $attr_model->is_delete = 0;
                    $attr_model->save();
                }
                $new_attr_item['attr_list'][] = [
                    'attr_id' => $attr_model->id,
                    'attr_name' => $attr_model->attr_name,
                ];
            }
            $new_attr[] = $new_attr_item;
        }
        $goods->attr = json_encode($new_attr, JSON_UNESCAPED_UNICODE);
        $goods->save();

    }


    /**
     * @return array
     */
    private function getDefaultAttr()
    {
        $default_attr_name = '默认';
        $default_attr_group_name = '规格';
        $attr = Attr::findOne([
            'attr_name' => $default_attr_name,
            'is_delete' => 0,
            'is_default' => 1,
        ]);
        $attr_group = null;
        if (!$attr) {
            $attr_group = AttrGroup::findOne([
                'attr_group_name' => $default_attr_group_name,
                'is_delete' => 0,
            ]);
            if (!$attr_group) {
                $attr_group = new AttrGroup();
                $attr_group->store_id = $this->store_id;
                $attr_group->attr_group_name = $default_attr_group_name;
                $attr_group->is_delete = 0;
                $attr_group->save(false);
            }
            $attr = new Attr();
            $attr->attr_group_id = $attr_group->id;
            $attr->attr_name = $default_attr_name;
            $attr->is_delete = 0;
            $attr->is_default = 1;
            $attr->save(false);
        } else {
            $attr_group = AttrGroup::findOne($attr->attr_group_id);
        }
        return [$attr, $attr_group];
    }
}