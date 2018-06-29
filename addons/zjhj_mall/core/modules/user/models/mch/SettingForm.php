<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/3
 * Time: 11:13
 */

namespace app\modules\user\models\mch;


use app\modules\user\models\Model;

/**
 * @property \app\models\Mch $model
 */
class SettingForm extends Model
{
    public $model;


    public $realname;
    public $tel;
    public $name;
    public $province_id;
    public $city_id;
    public $district_id;
    public $address;
    public $mch_common_cat_id;
    public $service_tel;
    public $logo;
    public $header_bg;

    public function rules()
    {
        return [
            [['realname', 'tel', 'name', 'province_id', 'city_id', 'district_id', 'address', 'mch_common_cat_id', 'service_tel', 'logo', 'header_bg'], 'required'],
            [['realname', 'tel', 'name', 'province_id', 'city_id', 'district_id', 'address', 'mch_common_cat_id', 'service_tel', 'logo', 'header_bg'], 'trim'],
            [['province_id', 'city_id', 'district_id', 'mch_common_cat_id'], 'integer'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'realname' => '联系人',
            'tel' => '联系电话',
            'name' => '店铺名称',
            'province_id' => '所在省份',
            'city_id' => '所在城市',
            'district_id' => '所在地区',
            'address' => '详细地址',
            'mch_common_cat_id' => '所售类目',
            'service_tel' => '客服电话',
            'logo' => '店铺头像',
            'header_bg' => '背景图',
        ];
    }

    public function save()
    {
        if(!$this->validate()){
            return $this->getModelError();
        }
        if(!$this->model){
            return [
                'code'=>1,
                'msg'=>'系统异常，请刷新重试'
            ];
        }
        $_attributes = $this->attributes;
        $this->model->attributes = $_attributes;
        if($this->model->save()){
            return [
                'code'=>0,
                'msg'=>'保存成功'
            ];
        }else{
            foreach($this->model->errors as $error){
                return [
                    'code'=>1,
                    'msg'=>$error
                ];
            }
        }
    }
}