<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/10/6
 * Time: 10:20
 */

namespace app\modules\admin\controllers;


use app\models\Admin;
use app\models\Store;
use app\modules\admin\behaviors\AdminBehavior;
use app\modules\admin\behaviors\LoginBehavior;
use app\modules\admin\models\AppEditForm;
use yii\data\Pagination;
use yii\helpers\VarDumper;

class AppController extends Controller
{
    public function behaviors()
    {
        return array_merge(parent::behaviors(), [
            'login' => [
                'class' => LoginBehavior::className(),
            ],
        ]);
    }

    public function actionIndex()
    {
        $query = Store::find()->where([
            'admin_id' => \Yii::$app->admin->id,
            'is_delete' => 0,
        ]);
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count]);
        $list = $query->limit($pagination->limit)->offset($pagination->offset)->orderBy('id DESC')->all();
        return $this->render('index', [
            'list' => $list,
            'pagination' => $pagination,
            'app_max_count' => \Yii::$app->admin->identity->app_max_count,
            'app_count' => Store::find()->where([
                'admin_id' => \Yii::$app->admin->id,
                'is_delete' => 0,
            ])->count(),
        ]);
    }

    public function actionOtherApp($keyword = null)
    {
        $query = Store::find()->alias('s')->where([
            'AND',
            ['!=', 's.admin_id', \Yii::$app->admin->id],
            ['s.is_delete' => 0],
            ['a.is_delete' => 0],
        ])->leftJoin(['a' => Admin::tableName()], 's.admin_id=a.id');;
        if ($keyword = trim($keyword)) {
            $query->andWhere([
                'OR',
                ['LIKE', 's.name', $keyword],
                ['LIKE', 'a.username', $keyword],
            ]);
        }

        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count]);
        $list = $query->limit($pagination->limit)->offset($pagination->offset)->orderBy('id DESC')
            ->select('s.*,a.username')->asArray()->all();
        return $this->render('other-app', [
            'list' => $list,
            'keyword' => $keyword,
            'pagination' => $pagination,
        ]);
    }

    public function actionEdit()
    {
        $form = new AppEditForm();
        $form->attributes = \Yii::$app->request->post();
        $form->admin_id = \Yii::$app->admin->id;
        return $this->renderJson($form->save());
    }

    public function actionEntry($id)
    {
        $condition = [
            'id' => $id,
            'admin_id' => \Yii::$app->admin->id,
            'is_delete' => 0,
        ];
        if (\Yii::$app->admin->id == 1) {
            unset($condition['admin_id']);
        }
        $store = Store::findOne($condition);
//        VarDumper::dump($store, 2, 1);
//        exit;
        if (!$store) {
            \Yii::$app->response->redirect(\Yii::$app->request->referrer)->send();
            return;
        }
        \Yii::$app->session->set('store_id', $store->id);
        \Yii::$app->response->redirect(\Yii::$app->urlManager->createUrl(['mch/store/index']))->send();
    }

    public function actionDelete($id)
    {
        $condition = [
            'id' => $id,
            'admin_id' => \Yii::$app->admin->id,
            'is_delete' => 0,
        ];
        if (\Yii::$app->admin->id == 1) {
            unset($condition['admin_id']);
        }
        $store = Store::findOne($condition);
        if ($store) {
            $store->is_delete = 1;
            $store->save();
        }
        return $this->renderJson([
            'code' => 0,
            'msg' => '操作成功',
        ]);
    }
}