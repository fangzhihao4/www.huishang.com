<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/7/15
 * Time: 14:33
 */

namespace app\modules\api\models;


use app\models\Attr;
use app\models\AttrGroup;
use app\models\Cart;
use app\models\Goods;
use app\models\Mch;
use app\models\MiaoshaGoods;
use yii\data\Pagination;

class CartListForm extends Model
{
    public $store_id;
    public $user_id;
    public $page;
    public $limit;
    public $list;
    public $mch_list;

    public function rules()
    {
        return [
            [['page', 'limit'], 'integer'],
            [['page',], 'default', 'value' => 1],
            [['limit',], 'default', 'value' => 1000],
        ];
    }

    public function save()
    {
        if ($this->list) {
            $cart_list = json_decode($this->list, true);
            foreach ($cart_list as $v) {
                $form = Cart::find()->where(['store_id' => $this->store_id, 'is_delete' => 0])->where('id=:id', [':id' => $v['cart_id']])->one();
                $form->num = $v['num'];
                $form->save();
                //$rt= Cart::CartForm()->updateAll(array('num'=>$v['num']),'id=:id AND store_id=:store_id',array(':id'=>$v['cart_id'],':store_id'=>$this->store_id));
            }
        };
        if ($this->mch_list) {
            $mch_list = json_decode($this->mch_list, true);
            if (is_array($mch_list)) {
                foreach ($mch_list as $i => $mch) {
                    if (is_array($mch['list'])) {
                        foreach ($mch['list'] as $j => $item) {
                            $cart = Cart::findOne([
                                'id' => $item['cart_id'],
                                'user_id' => $this->user_id,
                            ]);
                            if (!$cart)
                                continue;
                            $cart->num = intval($item['num']);
                            $cart->save();
                        }
                    }
                }
            }
        }
        return [
            'code' => 0,
            'msg' => 'success',
        ];

    }

    public function search()
    {
        $query = Cart::find()->where(['store_id' => $this->store_id, 'user_id' => $this->user_id, 'is_delete' => 0]);
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count, 'page' => $this->page - 1]);
        /* @var Cart[] $list */
        $list = $query->orderBy('goods_id DESC')->limit($pagination->limit)->offset($pagination->offset)->all();
        $new_list = [];
        $mch_list = [];//入驻商的商品
        foreach ($list as $item) {
            $goods = Goods::findOne([
                'id' => $item->goods_id,
                'is_delete' => 0,
                'status' => 1,
            ]);
            if (!$goods)
                continue;
            $attr_list = Attr::find()->alias('a')
                ->select('ag.attr_group_name,a.attr_name,')
                ->leftJoin(['ag' => AttrGroup::tableName()], 'a.attr_group_id=ag.id')
                ->where(['a.id' => json_decode($item->attr, true)])
                ->asArray()->all();
            $goods_attr_info = $goods->getAttrInfo(json_decode($item->attr, true));
            $attr_num = intval(empty($goods_attr_info['num']) ? 0 : $goods_attr_info['num']);
            $goods_pic = isset($goods_attr_info['pic']) ? $goods_attr_info['pic'] ?: $goods->getGoodsPic(0)->pic_url : $goods->getGoodsPic(0)->pic_url;
            $new_item = (object)[
                'cart_id' => $item->id,
                'goods_id' => $goods->id,
                'goods_name' => $goods->name,
                'goods_pic' => $goods_pic,
                'num' => $item->num,
                'attr_list' => $attr_list,
                'price' => doubleval(empty($goods_attr_info['price']) ? $goods->price : $goods_attr_info['price']) * $item->num,
                'unitPrice' => doubleval($goods_attr_info['price']),
                'max_num' => $attr_num,
                'disabled' => ($item->num > $attr_num) ? true : false,
            ];

            if ($goods->mch_id != 0) {
                if (!is_array($mch_list['mch_id_' . $goods->mch_id]))
                    $mch_list['mch_id_' . $goods->mch_id] = [];
                $new_item->mch_id = $goods->mch_id;
                $mch_list['mch_id_' . $goods->mch_id][] = $new_item;
            } else {
                $new_list[] = $new_item;
            }

        }
        $new_mch_list = [];
        foreach ($mch_list as $i => $item) {
            $mch = Mch::findOne([
                'id' => $item[0]->mch_id,
                'is_delete' => 0,
                'is_open' => 1,
                'is_lock' => 0,
            ]);
            if ($mch) {
                $new_mch_list[] = [
                    'id' => $mch->id,
                    'name' => $mch->name,
                    'list' => $item,
                ];
            }
        }

        return [
            'code' => 0,
            'msg' => 'success',
            'data' => [
                'row_count' => $count,
                'page_count' => $pagination->pageCount,
                'list' => $new_list,
                'mch_list' => $new_mch_list,
            ],
        ];
    }

    /**
     * @param Goods $goods
     * @param array $attr_id_list eg.[12,34,22]
     * @return array ['attr_list'=>[],'miaosha_price'=>'秒杀价格','miaosha_num'=>'秒杀数量','sell_num'=>'已秒杀商品数量']
     */
    private function getMiaoshaData($goods, $attr_id_list = [])
    {
        $miaosha_goods = MiaoshaGoods::findOne([
            'goods_id' => $goods->id,
            'is_delete' => 0,
            'open_date' => date('Y-m-d'),
            'start_time' => intval(date('H')),
        ]);
        if (!$miaosha_goods)
            return null;
        $attr_data = json_decode($miaosha_goods->attr, true);
        sort($attr_id_list);
        $miaosha_data = null;
        foreach ($attr_data as $i => $attr_data_item) {
            $_tmp_attr_id_list = [];
            foreach ($attr_data_item['attr_list'] as $item) {
                $_tmp_attr_id_list[] = $item['attr_id'];
            }
            sort($_tmp_attr_id_list);
            if ($attr_id_list == $_tmp_attr_id_list) {
                $miaosha_data = $attr_data_item;
                break;
            }
        }
        return $miaosha_data;
    }

    /**
     * 获取商品秒杀价格，若库存不足则使用商品原价，若有部分库存，则部分数量使用秒杀价，部分使用商品原价，商品库存不足返回false
     * @param array $miaosha_data ['attr_list'=>[],'miaosha_price'=>'秒杀价格','miaosha_num'=>'秒杀数量','sell_num'=>'已秒杀商品数量']
     * @param Goods $goods
     * @param array $attr_id_list eg.[12,34,22]
     * @param integer $buy_num 购买数量
     *
     * @return false|float
     */
    private function getMiaoshaPrice($miaosha_data, $goods, $attr_id_list, $buy_num)
    {
        $attr_data = json_decode($goods->attr, true);
        sort($attr_id_list);
        $goost_attr_data = null;
        foreach ($attr_data as $i => $attr_data_item) {
            $_tmp_attr_id_list = [];
            foreach ($attr_data_item['attr_list'] as $item) {
                $_tmp_attr_id_list[] = intval($item['attr_id']);
            }
            sort($_tmp_attr_id_list);
            if ($attr_id_list == $_tmp_attr_id_list) {
                $goost_attr_data = $attr_data_item;
                break;
            }
        }
        $goods_price = $goost_attr_data['price'];
        if (!$goods_price)
            $goods_price = $goods->price;

        $miaosha_price = min($miaosha_data['miaosha_price'], $goods_price);

        if ($buy_num > $goost_attr_data['num'])//商品库存不足
        {
            \Yii::warning([
                'res' => '库存不足',
                'm_data' => $miaosha_data,
                'g_data' => $goost_attr_data,
                '$attr_id_list' => $attr_id_list,
            ]);
            return false;
        }

        if ($buy_num <= ($miaosha_data['miaosha_num'] - $miaosha_data['sell_num'])) {
            \Yii::warning([
                'res' => '库存充足',
                'price' => $buy_num * $miaosha_price,
                'm_data' => $miaosha_data,
            ]);
            return $buy_num * $miaosha_price;
        }

        $miaosha_num = ($miaosha_data['miaosha_num'] - $miaosha_data['sell_num']);
        $original_num = $buy_num - $miaosha_num;

        \Yii::warning([
            'res' => '部分充足',
            'price' => $miaosha_num * $miaosha_price + $original_num * $goods_price,
            'm_data' => $miaosha_data,
        ]);
        return $miaosha_num * $miaosha_price + $original_num * $goods_price;
    }

}