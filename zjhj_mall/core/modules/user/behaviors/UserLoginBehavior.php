<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/3/9
 * Time: 15:36
 */

namespace app\modules\user\behaviors;


use yii\base\ActionEvent;
use yii\base\Behavior;
use yii\web\Controller;

class UserLoginBehavior extends Behavior
{
    public function events()
    {
        return [
            Controller::EVENT_BEFORE_ACTION => 'beforeAction',
        ];
    }

    /**
     * @param ActionEvent $e
     */
    public function beforeAction($e)
    {
        if (\Yii::$app->user->isGuest) {
            if (\Yii::$app->request->isAjax) {
                $e->action->controller->renderJson([
                    'code' => -1,
                    'msg' => '请先登录'
                ]);
            } else {
                $return_utl = \Yii::$app->request->absoluteUrl;
                \Yii::$app->response->redirect(\Yii::$app->urlManager->createUrl(['user/passport/login', 'return_utl' => $return_utl]))->send();
                \Yii::$app->end();
            }
        }
    }
}