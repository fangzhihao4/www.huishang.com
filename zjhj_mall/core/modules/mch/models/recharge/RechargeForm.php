<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/15
 * Time: 11:31
 */

namespace app\modules\mch\models\recharge;
use app\modules\mch\models\Model;

/**
 * @property \app\models\Recharge $model;
 */
class RechargeForm extends Model
{
    public $model;
    public $store_id;

    public $name;
    public $pay_price;
    public $send_price;

    public function rules()
    {
        return [
            [['name','pay_price'],'required'],
            [['name'],'trim'],
            [['name'],'string'],
            [['pay_price'],'number','min'=>0.01],
            [['send_price'],'number','min'=>0],
            [['send_price'],'default','value'=>0],
        ];
    }

    public function attributeLabels()
    {
        return [
            'name'=>'充值名称',
            'pay_price'=>'支付金额',
            'send_price'=>'赠送金额'
        ];
    }

    public function save()
    {
        if(!$this->validate()){
            return $this->getModelError();
        }
        if($this->model->isNewRecord){
            $this->model->store_id = $this->store_id;
            $this->model->is_delete = 0;
            $this->model->addtime = time();
        }
        $_attributes = $this->attributes;
        $this->model->attributes = $_attributes;
        if($this->model->save()){
            return [
                'code'=>0,
                'msg'=>'成功'
            ];
        }else{
            return $this->getModelError($this->model);
        }
    }
}