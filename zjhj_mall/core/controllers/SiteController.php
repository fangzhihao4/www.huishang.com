<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/10/25
 * Time: 11:13
 */

namespace app\controllers;


class SiteController extends Controller
{
    public function actionIndex()
    {

        $install_lock_file = \Yii::$app->basePath . '/install.lock.php';
        if (!file_exists($install_lock_file)) {
            $this->redirect(\Yii::$app->urlManager->createUrl(['install']))->send();
        } else {
            $this->redirect(\Yii::$app->urlManager->createUrl(['admin']))->send();
        }
    }
}