<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/10/3
 * Time: 14:52
 */

namespace app\modules\admin\models;

use app\models\Admin;
use yii\helpers\VarDumper;

/**
 * @property Admin $admin
 */
class UserEditForm extends Model
{
    public $admin;
    public $username;
    public $password;
    public $remark;
    public $app_max_count;
    public $permission;
    public $expire_time;
    public $no_expire_time;

    public function rules()
    {
        return [
            [['username', 'remark',], 'trim'],
            [['username', 'password'], 'required', 'on' => 'add'],
            [['app_max_count'], 'integer', 'min' => 0,],
            [['app_max_count'], 'required',],
            [['remark'], 'string', 'length' => [0, 255]],
            [['permission', 'expire_time', 'no_expire_time',], 'safe',],
        ];
    }

    public function attributeLabels()
    {
        return [
            'username' => '用户名',
            'password' => '登录密码',
            'remark' => '备注',
            'app_max_count' => '小程序数量',
        ];
    }


    public function save()
    {
        if (!$this->validate())
            return $this->getModelError();
        if (!$this->permission || !is_array($this->permission))
            $this->permission = [];
        $this->admin->remark = $this->remark;
        $this->admin->app_max_count = $this->app_max_count;
        $this->admin->permission = json_encode($this->permission, JSON_UNESCAPED_UNICODE);
        if ($this->no_expire_time) {
            $this->admin->expire_time = 0;
        } else {
            $this->admin->expire_time = strtotime($this->expire_time . ' 23:59:59');
        }

        if ($this->admin->isNewRecord) {
            $exist_admin = Admin::findOne([
                'username' => $this->username,
                'is_delete' => 0,
            ]);
            if ($exist_admin)
                return [
                    'code' => 1,
                    'msg' => '此用户名已被使用，请更换其它用户名',
                ];
            $this->admin->username = $this->username;
            $this->admin->password = \Yii::$app->security->generatePasswordHash($this->password);
            $this->admin->auth_key = \Yii::$app->security->generateRandomString();
            $this->admin->access_token = \Yii::$app->security->generateRandomString();
            $this->admin->addtime = time();
        }
        if ($this->admin->save())
            return [
                'code' => 0,
                'msg' => '保存成功',
            ];
        else
            return $this->getModelError($this->admin);
    }
}