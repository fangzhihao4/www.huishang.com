<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/2/6
 * Time: 10:44
 */

namespace app\modules\mch\models;


use app\models\Option;

class CopyrightForm extends Model
{
    public $data;
    public $store_id;

    public $text;
    public $icon;
    public $url;
    public $open_type;

    public function rules()
    {
        return [
            [['text','icon','url','open_type'],'trim'],
            [['text','icon','url','open_type'],'string'],
        ];
    }

    public function save()
    {
        if(!$this->validate()){
            return $this->getModelError();
        }

        $_data = $this->data;
        $_data['copyright'] = [
            'text'=>$this->text,
            'icon'=>$this->icon,
            'url'=>$this->url,
            'open_type'=>$this->open_type
        ];
        $_data = json_encode($_data,JSON_UNESCAPED_UNICODE);
        Option::set('user_center_data', $_data, $this->store_id);
        return [
            'code' => 0,
            'msg' => '保存成功',
        ];
    }
}