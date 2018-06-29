<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/3/6
 * Time: 10:41
 */

namespace app\modules\api\behaviors;


use app\models\Mch;
use yii\base\Behavior;
use yii\web\Controller;

class MchBehavior extends Behavior
{

    public $actions;

    public function events()
    {
        return [
            Controller::EVENT_BEFORE_ACTION => 'beforeAction',
        ];
    }

    public function beforeAction($e)
    {
        if (\Yii::$app->user->isGuest)
            $e->action->controller->renderJson([
                'code' => -1,
                'msg' => '请先登录',
            ]);
        $mch = Mch::findOne([
            'user_id' => \Yii::$app->user->id,
            'is_delete' => 0,
            'review_status' => 1,
        ]);
        if (!$mch)
            $e->action->controller->renderJson([
                'code' => -2,
                'msg' => '请先申请商户入驻',
            ]);
        $e->action->controller->mch = $mch;
    }
}