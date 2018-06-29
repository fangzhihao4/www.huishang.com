<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/10/3
 * Time: 11:34
 */

namespace app\modules\admin\controllers;


use app\hejiang\Cloud;
use app\hejiang\CloudAdmin;
use app\models\Admin;
use app\models\AdminPermission;
use app\modules\admin\behaviors\AdminBehavior;
use app\modules\admin\behaviors\LoginBehavior;
use app\modules\admin\models\UserEditForm;
use yii\data\Pagination;
use yii\helpers\VarDumper;

class UserController extends Controller
{
    public function behaviors()
    {
        return array_merge(parent::behaviors(), [
            'login' => [
                'class' => LoginBehavior::className(),
            ],
            'admin' => [
                'class' => AdminBehavior::className(),
                'ignore' => ['me'],
            ],
        ]);
    }

    public function actionIndex()
    {
        $query = Admin::find()->where(['is_delete' => 0]);
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count]);
        $list = $query->limit($pagination->limit)->offset($pagination->offset)->orderBy('addtime DESC')->all();
        return $this->render('index', [
            'list' => $list,
            'pagination' => $pagination,
        ]);
    }

    public function actionEdit($id = null)
    {
        if (\Yii::$app->request->isPost) {

            $this->renderJson(CloudAdmin::saveEditUserData());
        } else {
            $data = CloudAdmin::getEditUserData();
            return $this->render('edit', $data);
        }
    }

    public function actionModifyPassword($id)
    {
        $admin = Admin::findOne([
            'id' => $id,
            'is_delete' => 0,
        ]);
        if (!$admin)
            return $this->renderJson([
                'code' => 1,
                'msg' => '用户不存在，请刷新页面后重试',
            ]);
        $paswword = \Yii::$app->request->post('password');
        if (strlen($paswword) == 0)
            return $this->renderJson([
                'code' => 1,
                'msg' => '密码不能为空',
            ]);
        $admin->password = \Yii::$app->security->generatePasswordHash($paswword);
        $admin->auth_key = \Yii::$app->security->generateRandomString();
        $admin->access_token = \Yii::$app->security->generateRandomString();
        if ($admin->save())
            return $this->renderJson([
                'code' => 0,
                'msg' => '修改密码成功',
            ]);
        return $this->renderJson([
            'code' => 1,
            'msg' => '修改密码失败',
        ]);
    }

    public function actionDelete($id)
    {
        if (!\Yii::$app->request->isPost)
            return;
        $admin = Admin::findOne([
            'id' => $id,
            'is_delete' => 0,
        ]);
        if (!$admin)
            return $this->renderJson([
                'code' => 1,
                'msg' => '用户不存在，请刷新页面后重试',
            ]);
        $admin->is_delete = 1;
        if ($admin->save())
            return $this->renderJson([
                'code' => 0,
                'msg' => '删除用户成功',
            ]);
        return $this->renderJson([
            'code' => 1,
            'msg' => '删除用户失败',
        ]);
    }

    public function actionMe()
    {
        return $this->render('me');
    }

}