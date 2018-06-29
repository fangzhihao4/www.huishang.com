<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/8/7
 * Time: 12:59
 */

namespace app\modules\user\models\mch;


use app\models\Attr;
use app\models\AttrGroup;
use app\models\Goods;
use app\models\GoodsPic;
use app\models\MchGoodsCat;
use app\models\MchPostageRules;
use app\models\OrderMessage;
use app\modules\user\models\Model;

class GoodsEditForm extends Model
{
    /** @var  Goods $model */
    public $model;

    public $cat_id;

    public $name;
    public $unit;
    public $sort;
    public $weight;
    public $cover_pic;
    public $goods_pic_list;
    public $price;
    public $original_price;
    public $service;
    public $freight;
    public $full_cut;

    public $use_attr;
    public $goods_num;
    public $attr;

    public $detail;


    /**
     * @return array
     */
    public function rules()
    {
        return [
            ['cat_id', 'each', 'rule' => ['integer']],
            [['name', 'service', 'unit'], 'trim'],
            [['cat_id', 'name', 'cover_pic',], 'required'],
            ['goods_pic_list', 'each', 'rule' => ['required'],],
            [['price', 'freight', 'full_cut', 'detail'], 'required'],

            ['name', 'string', 'max' => 255],
            ['unit', 'default', 'value' => '件'],
            ['sort', 'integer',],
            ['sort', 'default', 'value' => 1000],
            ['weight', 'number',],
            ['weight', 'default', 'value' => 0],
            ['price', 'number', 'min' => 0.01, 'max' => 1000000],
            ['original_price', 'number', 'min' => 0, 'max' => 1000000],
            ['service', 'string', 'max' => 255],
            ['freight', 'integer', 'min' => 0],

            ['use_attr', 'integer',],
            ['goods_num', 'integer', 'min' => 0],
            ['attr', 'safe',],
            ['detail', 'string',],
            ['detail', function () {
                $this->detail = preg_replace('/[\xf0-\xf7].{3}/', '', $this->detail);
            }],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'cat_id' => '商品分类',
            'name' => '商品名称',
            'unit' => '单位',
            'sort' => '排序',
            'weight' => '重量',
            'cover_pic' => '商品缩略图',
            'goods_pic_list' => '商品组图',
            'price' => '售价',
            'original_price' => '原价',
            'service' => '服务内容',
            'detail' => '图文详情',
        ];
    }

    /**
     * 获取内容
     */
    public function search()
    {
        //分类获取
        $cat_list_form = new CatListForm();
        $cat_list_form->mch_id = $this->model->mch_id;
        $cat_list = $cat_list_form->search();
        if ($this->model->id) {
            $goods_cat_list = MchGoodsCat::find()->where(['goods_id' => $this->model->id,])->all();
        } else {
            $goods_cat_list = [];
        }
        foreach ($cat_list as $i => $cat) {
            $checked = false;
            foreach ($goods_cat_list as $goods_cat) {
                if ($goods_cat->cat_id == $cat['id']) {
                    $checked = true;
                    break;
                }
            }
            $cat_list[$i]['checked'] = $checked;
            if (is_array($cat['list'])) {
                foreach ($cat['list'] as $j => $sub_cat) {
                    $checked = false;
                    foreach ($goods_cat_list as $goods_cat) {
                        if ($goods_cat->cat_id == $sub_cat['id']) {
                            $checked = true;
                            break;
                        }
                    }
                    $cat_list[$i]['list'][$j]['checked'] = $checked;
                }
            }
        }

        //运费规则
        $postage_riles = MchPostageRules::find()->where(['mch_id' => $this->model->mch_id, 'is_delete' => 0])->select('id,name')->asArray()->all();
        if (!is_array($postage_riles))
            $postage_riles = [];

        //规格数据
        $attr_group_list = $this->model->getAttrData();
        $attr_row_list = [];
        if ($this->model->use_attr) {
            $attr_row_list = json_decode($this->model->attr, true);
            foreach ($attr_row_list as $i => $attr_row) {
                foreach ($attr_row['attr_list'] as $j => $attr) {
                    $group = AttrGroup::find()->where(['id' => Attr::find()->select('attr_group_id')->where(['id' => $attr['attr_id']])])->one();
                    $attr_row_list[$i]['attr_list'][$j]['attr_group_name'] = $group ? $group->attr_group_name : '';
                }
            }
        }

        //商品组图
        $goods_pic_list = $this->model->goodsPicList;
        $gpic_list = [];
        foreach ($goods_pic_list as $item) {
            $gpic_list[] = $item->pic_url;
        }

        return [
            'code' => 0,
            'data' => [
                'cat_list' => $cat_list,
                'attr_group_list' => $attr_group_list,
                'attr_row_list' => $attr_row_list,
                'postage_riles' => $postage_riles,
                'model' => [
                    'name' => $this->model->name,
                    'unit' => $this->model->unit,
                    'sort' => $this->model->sort,
                    'weight' => $this->model->weight,
                    'cover_pic' => $this->model->cover_pic,
                    'goods_pic_list' => $gpic_list,
                    'price' => $this->model->price,
                    'original_price' => $this->model->original_price,
                    'service' => $this->model->service,
                    'freight' => $this->model->freight ? $this->model->freight : 0,
                    'full_cut' => $this->model->full_cut ? json_decode($this->model->full_cut, true) : ['pieces' => null, 'forehead' => null],
                    'use_attr' => $this->model->use_attr ? 1 : 0,
                    'detail' => $this->model->detail,
                    'goods_num' => $this->model->getNum(),
                ],
            ],
        ];

    }

    /**
     * 保存内容
     * @return array
     */
    public function save()
    {
        if (!$this->original_price)
            $this->original_price = $this->price;
        if (!$this->validate()) {
            return $this->getModelError();
        }
        if (!$this->use_attr && ($this->goods_num === null || $this->goods_num === '')) {
            return [
                'code' => 1,
                'msg' => '请填写商品库存',
            ];
        }
        if ($this->use_attr) {
            if (!$this->attr || !is_array($this->attr) || !count($this->attr))
                return [
                    'code' => 1,
                    'msg' => '请填写规格信息',
                ];
        }
        $this->full_cut = json_encode($this->full_cut, JSON_UNESCAPED_UNICODE);

        if ($this->model->isNewRecord) {
            $this->model->is_delete = 0;
            $this->model->addtime = time();
            $this->model->status = 0;
            $this->model->attr = json_encode([], JSON_UNESCAPED_UNICODE);
        }

        $this->model->attributes = $this->getAttributes(['name', 'unit', 'sort', 'weight', 'cover_pic', 'price', 'original_price', 'service', 'freight', 'full_cut', 'use_attr', 'detail',]);

        if ($this->model->save()) {
            if ($this->model->isNewRecord) {
                OrderMessage::set($this->model->id, $this->model->store_id, 4, 1);
            }
            //多分类设置
            MchGoodsCat::deleteAll(['goods_id' => $this->model->id]);
            foreach ($this->cat_id as $index => $value) {
                $mgc = new MchGoodsCat();
                $mgc->goods_id = $this->model->id;
                $mgc->cat_id = $value;
                $mgc->save();
            }

            //商品图片保存
            GoodsPic::updateAll(['is_delete' => 1], ['goods_id' => $this->model->id]);
            foreach ($this->goods_pic_list as $pic_url) {
                $goods_pic = new GoodsPic();
                $goods_pic->goods_id = $this->model->id;
                $goods_pic->pic_url = $pic_url;
                $goods_pic->is_delete = 0;
                $goods_pic->save();
            }

            //商品规格保存
            $this->setAttr($this->model);

            return [
                'code' => 0,
                'msg' => '保存成功',
            ];
        } else {
            return $this->getModelError($this->model);
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
                $attr_group_model = AttrGroup::findOne(['store_id' => $goods->store_id, 'attr_group_name' => $a['attr_group_name'], 'is_delete' => 0]);
                if (!$attr_group_model) {
                    $attr_group_model = new AttrGroup();
                    $attr_group_model->attr_group_name = $a['attr_group_name'];
                    $attr_group_model->store_id = $goods->store_id;
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
                $attr_group->store_id = $this->model->store_id;
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