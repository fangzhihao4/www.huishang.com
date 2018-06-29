<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%mch}}".
 *
 * @property string $id
 * @property integer $store_id
 * @property integer $user_id
 * @property integer $addtime
 * @property integer $is_delete
 * @property integer $is_open
 * @property integer $is_lock
 * @property integer $review_status
 * @property string $review_result
 * @property integer $review_time
 * @property string $realname
 * @property string $tel
 * @property string $name
 * @property integer $province_id
 * @property integer $city_id
 * @property integer $district_id
 * @property string $address
 * @property integer $mch_common_cat_id
 * @property string $service_tel
 * @property string $logo
 * @property string $header_bg
 * @property integer $transfer_rate
 * @property string $account_money
 */
class Mch extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%mch}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['store_id', 'user_id', 'realname', 'tel', 'name', 'province_id', 'city_id', 'district_id', 'address', 'mch_common_cat_id', 'service_tel'], 'required'],
            [['store_id', 'user_id', 'addtime', 'is_delete', 'is_open', 'is_lock', 'review_status', 'review_time', 'province_id', 'city_id', 'district_id', 'mch_common_cat_id', 'transfer_rate'], 'integer'],
            [['review_result', 'logo', 'header_bg'], 'string'],
            [['account_money'], 'number'],
            [['realname', 'tel', 'name'], 'string', 'max' => 255],
            [['address', 'service_tel'], 'string', 'max' => 1000],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'store_id' => 'Store ID',
            'user_id' => 'User ID',
            'addtime' => 'Addtime',
            'is_delete' => 'Is Delete',
            'is_open' => '是否营业：0=否，1=是',
            'is_lock' => '是否被系统关闭：0=否，1=是',
            'review_status' => '审核状态：0=待审核，1=审核通过，2=审核不通过',
            'review_result' => '审核结果',
            'review_time' => '审核时间',
            'realname' => 'Realname',
            'tel' => 'Tel',
            'name' => 'Name',
            'province_id' => 'Province ID',
            'city_id' => 'City ID',
            'district_id' => 'District ID',
            'address' => 'Address',
            'mch_common_cat_id' => '所售类目',
            'service_tel' => '客服电话',
            'logo' => 'logo',
            'header_bg' => '背景图',
            'transfer_rate' => '商户手续费',
            'account_money' => '商户余额',
        ];
    }
}
