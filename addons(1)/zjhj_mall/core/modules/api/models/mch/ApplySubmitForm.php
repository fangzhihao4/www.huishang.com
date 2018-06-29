<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/2/28
 * Time: 11:06
 */

namespace app\modules\api\models\mch;


use app\models\Mch;
use app\models\UserFormId;
use app\modules\api\models\Model;
use yii\helpers\Html;

class ApplySubmitForm extends Model
{
    public $store_id;
    public $user_id;
    public $realname;
    public $tel;
    public $name;
    public $province_id;
    public $city_id;
    public $district_id;
    public $address;
    public $mch_common_cat_id;
    public $service_tel;

    public $form_id;

    public function rules()
    {
        return [
            [['realname', 'tel', 'name', 'province_id', 'city_id', 'district_id', 'address', 'mch_common_cat_id', 'service_tel',], 'required',],
            [['realname', 'tel', 'name', 'address', 'service_tel',], 'trim',],
            [['province_id', 'city_id', 'district_id', 'mch_common_cat_id',], 'integer',],
            ['form_id', 'string'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'realname' => '联系人',
            'tel' => '联系电话',
            'name' => '店铺名称',
            'address' => '详细地址',
            'service_tel' => '客服电话',
            'province_id' => '所在地区',
            'city_id' => '所在地区',
            'district_id' => '所在地区',
            'mch_common_cat_id' => '所售类目',
        ];
    }

    public function save()
    {
        if (!$this->validate()) {
            return $this->getModelError();
        }
        $this->saveFormId();
        $mch = Mch::findOne([
            'store_id' => $this->store_id,
            'user_id' => $this->user_id,
            'is_delete' => 0,
        ]);
        if ($mch && $mch->review_status != 2) {
            return [
                'code' => 1,
                'msg' => '您已提交过申请，请勿重复提交',
            ];
        }
        if (!$mch) {
            $mch = new Mch();
            $mch->store_id = $this->store_id;
            $mch->user_id = $this->user_id;
        }
        $mch->realname = Html::encode($this->realname);
        $mch->tel = Html::encode($this->tel);
        $mch->name = Html::encode($this->name);
        $mch->province_id = $this->province_id;
        $mch->city_id = $this->city_id;
        $mch->district_id = $this->district_id;
        $mch->address = Html::encode($this->address);
        $mch->mch_common_cat_id = $this->mch_common_cat_id;
        $mch->service_tel = Html::encode($this->service_tel);
        $mch->addtime = time();
        $mch->is_delete = 0;
        $mch->is_open = 0;
        $mch->is_lock = 0;
        $mch->review_status = 0;
        $mch->review_result = '';
        $mch->logo = \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/shop/img/shop-logo.png';
        $mch->header_bg = \Yii::$app->request->hostInfo . \Yii::$app->request->baseUrl . '/statics/shop/img/shop-header-bg.jpg';
        if ($mch->save())
            return [
                'code' => 0,
                'msg' => '申请提交成功，系统将尽快审核您提交的内容'
            ];
        return $this->getModelError($mch);
    }

    private function saveFormId()
    {
        $m = new UserFormId();
        $m->user_id = $this->user_id;
        $m->form_id = $this->form_id;
        $m->times = 1;
        $m->addtime = time();
        $m->save();
    }
}