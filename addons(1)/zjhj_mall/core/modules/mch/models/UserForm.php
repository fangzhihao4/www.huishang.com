<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/3
 * Time: 13:54
 */

namespace app\modules\mch\models;

/**
 * @property \app\models\User $user
 */
class UserForm extends Model
{
    public $store_id;
    public $user;
    public $level;
    public $contact_way;
    public $comments;


    public function rules()
    {
        return [
            [['level'],'integer'],
            [['contact_way','comments'], 'string', 'max' => 255],
        ];
    }

    public function attributeLabels()
    {
        return [
            'level'=>'会员等级',
            'contact_way'=>'联系方式',
            'comments'=>'备注'
        ];
    }

    public function save()
    {
        if(!$this->validate()){
            return $this->getModelError();
        }

        $this->user->level = $this->level;
        $this->user->contact_way = trim($this->contact_way);
        $this->user->comments = trim($this->comments);

        if($this->user->save()){
            return [
                'code'=>0,
                'msg'=>'成功'
            ];
        }else{
            return $this->getModelError($this->user);
        }
    }
}