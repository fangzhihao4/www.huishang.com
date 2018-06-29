<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/12/19
 * Time: 15:53
 */

namespace app\modules\mch\models;


use app\models\We7UserAuth;

class We7AuthForm extends Model
{
    public $we7_user_id;
    public $auth;

    public function rules()
    {
        return [
            [['we7_user_id',], 'required'],
            [['auth'], 'safe'],
        ];
    }

    public function save()
    {
        if (!$this->validate())
            return $this->getModelError();
        $model = We7UserAuth::findOne(['we7_user_id' => $this->we7_user_id]);
        if (!$model) {
            $model = new We7UserAuth();
            $model->we7_user_id = $this->we7_user_id;
        }
        if (empty($this->auth))
            $this->auth = [];
        $model->auth = json_encode($this->auth, JSON_UNESCAPED_UNICODE);
        if ($model->save())
            return [
                'code' => 0,
                'msg' => '保存成功',
            ];
        return [
            'code' => 1,
            'msg' => '保存失败',
        ];
    }
}