<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/2/28
 * Time: 14:50
 */

namespace app\modules\api\models\mch;


use app\models\District;
use app\models\Mch;
use app\models\MchCommonCat;
use app\modules\api\models\Model;

class ApplyForm extends Model
{
    public $store_id;
    public $user_id;

    public static $review_status_text = [
        0 => '待审核',
        1 => '审核通过',
        2 => '审核未通过',
    ];

    public function search()
    {
        $mch_common_cat_list = $this->getMchCommonCatList();
        $mch = Mch::findOne([
            'store_id' => $this->store_id,
            'user_id' => $this->user_id,
            'is_delete' => 0,
        ]);
        if (!$mch) {
            return [
                'code' => 0,
                'data' => [
                    'mch_common_cat_list' => $mch_common_cat_list,
                ],
            ];
        }
        $province = District::findOne($mch->province_id);
        $city = District::findOne($mch->city_id);
        $district = District::findOne($mch->district_id);
        $edit_district = [
            'province' => [
                'id' => $province->id,
                'name' => $province->name,
            ],
            'city' => [
                'id' => $city->id,
                'name' => $city->name,
            ],
            'district' => [
                'id' => $district->id,
                'name' => $district->name,
            ],
        ];
        $mch_common_cat_name = '';
        foreach ($mch_common_cat_list as $item) {
            if ($item['id'] == $mch->mch_common_cat_id) {
                $mch_common_cat_name = $item['name'];
                break;
            }
        }
        return [
            'code' => 0,
            'data' => [
                'apply' => [
                    'realname' => $mch->realname,
                    'tel' => $mch->tel,
                    'name' => $mch->name,
                    'province_id' => $mch->province_id,
                    'city_id' => $mch->city_id,
                    'district_id' => $mch->district_id,
                    'address' => $mch->address,
                    'mch_common_cat_id' => $mch->mch_common_cat_id,
                    'mch_common_cat_name' => $mch_common_cat_name,
                    'service_tel' => $mch->service_tel,
                    'review_status' => $mch->review_status,
                    'review_status_text' => self::$review_status_text[$mch->review_status],
                    'review_result' => $mch->review_result,
                    'review_time' => date('m-d H:i', $mch->review_time),
                ],
                'edit_district' => $edit_district,
                'mch_common_cat_list' => $mch_common_cat_list,
            ],
        ];
    }

    private function getMchCommonCatList()
    {
        $list = MchCommonCat::find()->where([
            'store_id' => $this->store_id,
            'is_delete' => 0,
        ])->select('id,name')->asArray()->all();
        return $list;
    }
}