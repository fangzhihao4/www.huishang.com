<?php
/**
 * Created by PhpStorm.
 * User: peize
 * Date: 2018/3/12
 * Time: 10:31
 */

namespace app\modules\api\models\miaosha;


use app\extensions\getInfo;
use app\models\MiaoshaGoods;
use app\models\MsGoods;
use app\models\MsGoodsPic;
use app\modules\api\models\Model;

class DetailsForm extends Model
{
    public $id;
    public $user_id;
    public $store_id;
    public $miaosha_goods;

    public function rules()
    {
        return [
            [['id'], 'required'],
            [['user_id'], 'safe'],
        ];
    }

    /**
     * @return array
     * 秒杀商品详情
     */
    public function search()
    {
        if (!$this->validate())
            return $this->getModelError();
        $this->miaosha_goods = MiaoshaGoods::findOne(['id' => $this->id]);
        if (!$this->miaosha_goods) {
            return [
                'code' => 1,
                'msg' => '商品不存在或已下架',
            ];
        }
        $goods = MsGoods::findOne([
            'id' => $this->miaosha_goods->goods_id,
            'is_delete' => 0,
            'status' => 1,
            'store_id' => $this->store_id,
        ]);
        if (!$goods)
            return [
                'code' => 1,
                'msg' => '商品不存在或已下架',
            ];
        $pic_list = MsGoodsPic::find()->select('pic_url')->where(['goods_id' => $goods->id, 'is_delete' => 0])->asArray()->all();
        $is_favorite = 0;

        $service_list = explode(',', $goods->service);
        $new_service_list = [];
        if (is_array($service_list))
            foreach ($service_list as $item) {
                $item = trim($item);
                if ($item)
                    $new_service_list[] = $item;
            }
        $res_url = getInfo::getVideoInfo($goods->video_url);
        $goods->video_url = $res_url['url'];
        $miaosha = $this->getMiaoshaData($goods->id);
        $miaosha_data = $miaosha['miaosha_data'];
        if ($miaosha_data) {
            $miaosha_data['miaosha_price'] = number_format($miaosha_data['miaosha_price'], 2, '.', '');
            $miaosha_data['rest_num'] = min((int)$goods->getNum(), (int)$miaosha_data['miaosha_num']) - $miaosha_data['sell_num'];
        }
        $miaosha['miaosha_data'] = $miaosha_data;
        return [
            'code' => 0,
            'data' => (object)[
                'id' => $goods->id,
                'pic_list' => $pic_list,
                'name' => $goods->name,
                'price' => floatval($goods->original_price),
                'detail' => $goods->detail,
                'sales_volume' => $goods->getSalesVolume() + $goods->virtual_sales,
                'attr_group_list' => $goods->getAttrGroupList(),
                'num' => $goods->getNum(),
                'is_favorite' => $is_favorite,
                'service_list' => $new_service_list,
                'original_price' => floatval($goods->original_price),
                'video_url' => $goods->video_url,
                'unit' => $goods->unit,
                'miaosha' => $miaosha,
                'use_attr' => intval($goods->use_attr),
            ],
        ];
    }

    //获取商品秒杀数据
    public function getMiaoshaData($goods_id)
    {
        $miaosha_goods = $this->miaosha_goods;
        $attr_data = json_decode($miaosha_goods->attr, true);
        $total_miaosha_num = 0;
        $total_sell_num = 0;
        $miaosha_price = 0.00;
        foreach ($attr_data as $i => $attr_data_item) {
            $total_miaosha_num += $attr_data_item['miaosha_num'];
            $total_sell_num += $attr_data_item['sell_num'];
            if ($miaosha_price == 0) {
                $miaosha_price = $attr_data_item['miaosha_price'];
            } else {
                $miaosha_price = min($miaosha_price, $attr_data_item['miaosha_price']);
            }
        }
        $miaosha_data = null;
        if (count($attr_data) == 1) {
            $miaosha_data = $attr_data[0];
        }
        return [
            'miaosha_num' => $total_miaosha_num,
            'sell_num' => $total_sell_num,
            'miaosha_price' => (float)$miaosha_price,
            'begin_time' => strtotime($miaosha_goods->open_date . ' ' . $miaosha_goods->start_time . ':00:00'),
            'end_time' => strtotime($miaosha_goods->open_date . ' ' . $miaosha_goods->start_time . ':59:59'),
            'now_time' => time(),
            'buy_max' => $miaosha_goods->buy_max,
            'buy_limit' => $miaosha_goods->buy_limit,
            'miaosha_data' => $miaosha_data,
        ];
    }


}