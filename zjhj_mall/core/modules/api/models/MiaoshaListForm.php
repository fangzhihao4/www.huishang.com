<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/10/16
 * Time: 15:48
 */

namespace app\modules\api\models;


use app\models\Miaosha;
use app\models\MiaoshaGoods;
use app\models\MsGoods;

class MiaoshaListForm extends Model
{
    public $store_id;
    public $date;
    public $time;

    public function search()
    {
        if (!$this->validate())
            return $this->getModelError();
        $miaosha = Miaosha::findOne([
            'store_id' => $this->store_id,
        ]);
        if (!$miaosha)
            return [
                'code' => 1,
                'msg' => '暂无秒杀安排',
            ];
        $miaosha->open_time = json_decode($miaosha->open_time, true);
        $miaosha_list = MiaoshaGoods::find()->alias('mg')->where([
            'mg.open_date' => $this->date,
            'mg.start_time' => $miaosha->open_time,
            'mg.is_delete' => 0,
            'g.is_delete'  => 0,
            'g.status' => 1,
        ])->leftJoin(['g' => MsGoods::tableName()], 'mg.goods_id=g.id')
            ->groupBy('mg.start_time')->asArray()
            ->select('mg.*')->all();
        $has_active = false;
        foreach ($miaosha_list as $i => $item) {
            if ($item['start_time'] < $this->time) {
                $miaosha_list[$i]['status'] = 0;
                $miaosha_list[$i]['status_text'] = '已结束';
                $miaosha_list[$i]['active'] = false;
            } elseif ($item['start_time'] == $this->time) {
                $miaosha_list[$i]['status'] = 1;
                $miaosha_list[$i]['status_text'] = '进行中';
                $miaosha_list[$i]['active'] = true;
                $has_active = true;
            } else {
                $miaosha_list[$i]['status'] = 2;
                $miaosha_list[$i]['status_text'] = '即将开始';
                $miaosha_list[$i]['active'] = false;
            }
            $miaosha_list[$i]['title'] = $item['start_time'] < 10 ? ('0' . $item['start_time'] . ':00') : ($item['start_time'] . ':00');
            $miaosha_list[$i]['begin_time'] = strtotime($item['open_date'] . ' ' . $item['start_time'] . ':00:00');
            $miaosha_list[$i]['end_time'] = strtotime($item['open_date'] . ' ' . $item['start_time'] . ':59:59');
            $miaosha_list[$i]['now_time'] = time();
        }
        if (!$has_active) {
            foreach ($miaosha_list as $i => $item) {
                if ($item['status']==2){
                    $miaosha_list[$i]['active'] = true;
                    break;
                }
            }
        }
        return [
            'code' => 0,
            'data' => [
                'list' => $miaosha_list,
            ],
        ];
    }
}