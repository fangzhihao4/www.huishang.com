<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/12/19
 * Time: 11:53
 */

namespace app\modules\mch\controllers;


use app\models\AdminPermission;
use app\models\Option;
use app\models\Store;
use app\models\UserCenterForm;
use app\models\We7Db;
use app\models\We7UserAuth;
use app\modules\mch\models\CopyForm;
use app\modules\mch\models\CopyrightForm;
use app\modules\mch\models\We7AuthForm;
use yii\data\Pagination;
use yii\db\Query;
use yii\helpers\VarDumper;

class We7Controller extends Controller
{
    public function actionAuth($keyword = null)
    {
        if (\Yii::$app->request->isPost) {
            $form = new We7AuthForm();
            $form->attributes = \Yii::$app->request->post();
            return $this->renderJson($form->save());
        } else {
            $query = new Query();
            $query->select('u.uid,u.username,u.joindate,ua.auth')
                ->from(['u' => We7Db::getTableName('users')])
                ->leftJoin(['ua' => We7UserAuth::tableName()], 'u.uid=ua.we7_user_id');
            if ($keyword) {
                $query->andWhere([
                    'OR',
                    ['LIKE', 'u.uid', $keyword],
                    ['LIKE', 'u.username', $keyword],
                ]);
            }
            $count = $query->count();
            $pagination = new Pagination(['totalCount' => $count,]);
            $list = $query->limit($pagination->limit)->offset($pagination->offset)->orderBy('u.uid DESC')->all();
            foreach ($list as $i => $item) {
                $list[$i]['auth'] = $item['auth'] ? json_decode($item['auth'], true) : null;
            }
            return $this->render('auth', [
                'list' => $list,
                'permission_list' => AdminPermission::getList(),
                'pagination' => $pagination,
            ]);
        }
    }

    public function actionCopyright($id = null, $url = null)
    {
        if (!$id) {
            $store_id = $this->store->id;
        } else {
            $store_id = $id;
        }
        $model = new UserCenterForm();
        $model->store_id = $store_id;
        $res = $model->getData();
        $data = $res['data'];
        if (\Yii::$app->request->isPost) {
            $form = new CopyrightForm();
            $form->data = $data;
            $form->store_id = $store_id;
            $form->attributes = \Yii::$app->request->post();
            $this->renderJson($form->save());
        } else {
            foreach($data as $index=>$value){
                $data[$index] = str_replace("\"","&quot;",$value);
            }
            return $this->render('copyright', [
                'data' => $data,
                'url'=>$url
            ]);
        }
    }

    public function actionCopyrightList($keyword = null)
    {
        $query = Store::find()->where(['is_delete' => 0]);
        if ($keyword) {
            $query->andWhere(['like', 'name', $keyword]);
        }
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count]);
        $list = $query->limit($pagination->limit)->offset($pagination->offset)->asArray()->all();
        return $this->render('copyright-list', [
            'list' => $list,
            'pagination'=>$pagination
        ]);
    }
}