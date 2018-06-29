<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/2/28
 * Time: 10:22
 */

namespace app\modules\mch\controllers\mch;


use app\models\District;
use app\models\Mch;
use app\models\MchCommonCat;
use app\models\Option;
use app\models\User;
use app\modules\mch\controllers\Controller;
use app\modules\mch\models\mch\CashConfirmForm;
use app\modules\mch\models\mch\CashListForm;
use app\modules\mch\models\mch\CommonCatEditForm;
use app\modules\mch\models\mch\MchEditForm;
use app\modules\mch\models\mch\MchListForm;
use yii\helpers\VarDumper;

class IndexController extends Controller
{
    public function actionIndex()
    {
        $form = new MchListForm();
        $form->attributes = \Yii::$app->request->get();
        $form->review_status = 1;
        $form->store_id = $this->store->id;
        $res = $form->search();
        return $this->render('index', [
            'list' => $res['data']['list'],
            'pagination' => $res['data']['pagination'],
            'get' => \Yii::$app->request->get(),
        ]);
    }

    public function actionApply($review_status = 0)
    {
        $form = new MchListForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->review_status = $review_status;
        $res = $form->search();
        return $this->render('apply', [
            'list' => $res['data']['list'],
            'pagination' => $res['data']['pagination'],
            'get' => \Yii::$app->request->get(),
        ]);
    }

    public function actionEdit($id)
    {
        $model = Mch::findOne([
            'id' => $id,
            'store_id' => $this->store->id,
            'is_delete' => 0,
        ]);
        if (!$model) {
            \Yii::$app->response->redirect(\Yii::$app->request->referrer)->send();
            return;
        }
        if (\Yii::$app->request->isPost) {
            $form = new MchEditForm();
            $form->model = $model;
            $form->attributes = \Yii::$app->request->post();
            return $this->renderJson($form->save());
        } else {
            foreach($model as $index=>$value){
                $model[$index] = str_replace("\"","&quot;",$value);
            }
            return $this->render('edit', [
                'model' => $model,
                'province' => District::findOne(['id' => $model->province_id]),
                'city' => District::findOne(['id' => $model->city_id]),
                'district' => District::findOne(['id' => $model->district_id]),
                'mch_common_cat_list' => MchCommonCat::find()->where(['store_id' => $this->store->id, 'is_delete' => 0])->all(),
            ]);
        }
    }

    public function actionCommonCat()
    {
        return $this->render('common-cat', [
            'list' => MchCommonCat::find()->where(['store_id' => $this->store->id, 'is_delete' => 0,])->orderBy('sort')->all(),
        ]);
    }

    public function actionCommonCatEdit($id = null)
    {
        $model = MchCommonCat::findOne(['id' => $id, 'store_id' => $this->store->id, 'is_delete' => 0,]);
        if (!$model)
            $model = new MchCommonCat();
        if (\Yii::$app->request->isPost) {
            $form = new CommonCatEditForm();
            $form->attributes = \Yii::$app->request->post();
            $form->store_id = $this->store->id;
            $form->model = $model;
            return $this->renderJson($form->save());
        } else {
            return $this->render('common-cat-edit', [
                'model' => $model,
            ]);
        }
    }

    public function actionCommonCatDelete($id)
    {
        $model = MchCommonCat::findOne(['id' => $id, 'store_id' => $this->store->id, 'is_delete' => 0,]);
        if ($model) {
            $model->is_delete = 1;
            $model->save();
        }
        \Yii::$app->response->redirect(\Yii::$app->request->referrer)->send();
    }

    public function actionCash()
    {
        $get = \Yii::$app->request->get();
        if (!isset($get['status']) || $get['status'] === null || $get['status'] === '')
            $get['status'] = -1;
        $form = new CashListForm();
        $form->attributes = $get;
        $form->store_id = $this->store->id;
        $res = $form->search();
        return $this->render('cash', [
            'get' => $get,
            'list' => isset($res['data']['list']) ? $res['data']['list'] : [],
            'pagination' => isset($res['data']['pagination']) ? $res['data']['pagination'] : null,
        ]);
    }

    public function actionCashSubmit()
    {
        $form = new CashConfirmForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        return $this->renderJson($form->save());
    }

    public function actionTplMsg()
    {
        $m = Option::get('mch_tpl_msg', $this->store->id, [
            'apply' => '',
            'order' => '',
        ]);
        if (\Yii::$app->request->isPost) {
            Option::set('mch_tpl_msg', [
                'apply' => \Yii::$app->request->post('apply', ''),
                'order' => \Yii::$app->request->post('order', ''),
            ], $this->store->id);
            return $this->renderJson([
                'code' => 0,
                'msg' => '保存成功。',
            ]);
        } else {
            return $this->render('tpl-msg', [
                'model' => $m,
            ]);
        }
    }
}