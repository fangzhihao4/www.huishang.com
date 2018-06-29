<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/10/16
 * Time: 15:43
 */

namespace app\modules\api\controllers;


use app\modules\api\models\miaosha\CommentListForm;
use app\modules\api\models\miaosha\DetailsForm;
use app\modules\api\models\miaosha\ExpressDetailForm;
use app\modules\api\models\miaosha\GoodsQrcodeForm;
use app\modules\api\models\miaosha\OrderCommentForm;
use app\modules\api\models\miaosha\OrderCommentPreview;
use app\modules\api\models\miaosha\OrderConfirmForm;
use app\modules\api\models\miaosha\OrderDetailForm;
use app\modules\api\models\miaosha\OrderListForm;
use app\modules\api\models\miaosha\OrderPayDataForm;
use app\modules\api\models\miaosha\OrderRefundDetailForm;
use app\modules\api\models\miaosha\OrderRefundForm;
use app\modules\api\models\miaosha\OrderRefundPreviewForm;
use app\modules\api\models\miaosha\OrderRevokeForm;
use app\modules\api\models\miaosha\OrderSubmitForm;
use app\modules\api\models\miaosha\OrderSubmitPreviewForm;
use app\modules\api\models\MiaoshaGoodsListForm;
use app\modules\api\models\MiaoshaListForm;

class MiaoshaController extends Controller
{
    //今日秒杀安排列表
    public function actionList()
    {
        $form = new MiaoshaListForm();
        $form->store_id = $this->store->id;
        $form->time = intval(date('H'));
        $form->date = date('Y-m-d');
        $this->renderJson($form->search());
    }

    //秒杀商品列表
    public function actionGoodsList()
    {
        $form = new MiaoshaGoodsListForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->date = date('Y-m-d');
        $this->renderJson($form->search());
    }


    /**
     * 秒杀商品详情
     */
    public function actionDetails()
    {
        $form = new DetailsForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        if (!\Yii::$app->user->isGuest) {
            $form->user_id = \Yii::$app->user->id;
        }
        $this->renderJson($form->search());
    }

    //获取商品二维码海报
    public function actionGoodsQrcode()
    {
        $form = new GoodsQrcodeForm();
        $form->attributes = \Yii::$app->request->get();

        $form->store_id = $this->store_id;
        if (!\Yii::$app->user->isGuest) {
            $form->user_id = \Yii::$app->user->id;
        }
        return $this->renderJson($form->search());
    }

    //商品评价列表
    public function actionCommentList()
    {
        $form = new CommentListForm();
        $form->attributes = \Yii::$app->request->get();
        $this->renderJson($form->search());
    }

    /**
     * 秒杀订单提交预览页面
     */
    public function actionSubmitPreview()
    {
        $form = new OrderSubmitPreviewForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->search());
    }

    /**
     * 订单提交
     */
    public function actionSubmit()
    {
        $form = new OrderSubmitForm();
        $model = \Yii::$app->request->post();
        if($model['offline'] == 0){
            $form->scenario = "EXPRESS";
        }else{
            $form->scenario = "OFFLINE";
        }
        $form->attributes = $model;
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->save());
    }

    /**
     * 订单支付数据
     */
    public function actionPayData()
    {
        $form = new OrderPayDataForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user = \Yii::$app->user->identity;
        $this->renderJson($form->search());
    }

    //订单列表
    public function actionOrderList()
    {
        $form = new OrderListForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->search());
    }


    //订单详情
    public function actionOrderDetails()
    {
        $form = new OrderDetailForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->search());
    }


    //订单取消
    public function actionRevoke()
    {
        $form = new OrderRevokeForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->save());
    }

    //订单物流信息
    public function actionExpressDetail()
    {
        $form = new ExpressDetailForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->search());
    }


    //订单确认收货
    public function actionConfirm()
    {
        $form = new OrderConfirmForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->save());
    }

    //评论预览页面
    public function actionCommentPreview()
    {
        $form = new OrderCommentPreview();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->search());
    }

    //评论提交
    public function actionComment()
    {
        $form = new OrderCommentForm();
        $form->attributes = \Yii::$app->request->post();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->save());
    }


    //售后页面
    public function actionRefundPreview()
    {
        $form = new OrderRefundPreviewForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->search());
    }

    //售后提交
    public function actionRefund()
    {
        $form = new OrderRefundForm();
        $form->attributes = \Yii::$app->request->post();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->save());
    }

    //售后订单详情
    public function actionRefundDetail()
    {
        $form = new OrderRefundDetailForm();
        $form->attributes = \Yii::$app->request->get();
        $form->store_id = $this->store->id;
        $form->user_id = \Yii::$app->user->id;
        $this->renderJson($form->search());
    }


}