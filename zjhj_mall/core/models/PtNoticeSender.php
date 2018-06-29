<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/12/5
 * Time: 17:37
 */

namespace app\models;


use luweiss\wechat\Wechat;
use yii\helpers\VarDumper;

class PtNoticeSender
{
    public $wechat;
    public $store_id;
    public $order_id;
    public $order;
    public $user;
    public $form_id;
    public $wechat_template_message;

    /**
     * PtNoticeSender constructor.
     * @param Wechat $wechat
     * @param integer $store_id
     */
    public function __construct($wechat, $store_id)
    {
        $this->wechat = $wechat;
        $this->store_id = $store_id;

        $this->wechat_template_message = WechatTemplateMessage::findOne(['store_id' => $this->store_id]);
    }

    /**
     * 发送拼团成功模板消息
     * @param integer $order_id 拼团订单id（团长订单或团员订单）
     * @return bool
     */
    public function sendSuccessNotice($order_id)
    {
        $tpl_id = Option::get('pintuan_success_notice', $this->store_id);
        if (!$tpl_id) {
            \Yii::warning('模板消息发送失败，模板消息ID未配置');
            return false;
        }
        $order = PtOrder::find()->alias('po')
            //->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name,fi.form_id')
            ->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name')
            ->leftJoin(['u' => User::tableName()], 'po.user_id=u.id')
            ->leftJoin(['pod' => PtOrderDetail::find()->select('id,goods_id,order_id')->where(['is_delete' => 0])->orderBy('addtime DESC')], 'po.id=pod.order_id')
            ->leftJoin(['pg' => PtGoods::tableName()], 'pod.goods_id=pg.id')
            //->leftJoin(['fi' => FormId::find()->orderBy('id DESC')], 'po.order_no=fi.order_no')
            ->where([
                'AND',
                [
                    'po.id' => $order_id,
                    'po.is_pay' => 1,
                    'po.is_delete' => 0,
                    'po.status' => 3,
                    'po.is_success' => 1,
                ],
                ['IS NOT', 'pod.id', null],
            ])
            ->limit(1)
            ->asArray()
            ->one();
        if (!$order) {
            \Yii::warning('模板消息发送失败，订单不存在');
            return false;
        }
        if ($order['parent_id'] != 0) {
            $order = PtOrder::find()->alias('po')
                //->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name,fi.form_id')
                ->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name')
                ->leftJoin(['u' => User::tableName()], 'po.user_id=u.id')
                ->leftJoin(['pod' => PtOrderDetail::find()->select('id,goods_id,order_id')->where(['is_delete' => 0])->orderBy('addtime DESC')], 'po.id=pod.order_id')
                ->leftJoin(['pg' => PtGoods::tableName()], 'pod.goods_id=pg.id')
                //->leftJoin(['fi' => FormId::find()->orderBy('id DESC')], 'po.order_no=fi.order_no')
                ->where([
                    'AND',
                    [
                        'po.id' => $order['parent_id'],
                        'po.is_pay' => 1,
                        'po.is_delete' => 0,
                        'po.status' => 3,
                        'po.is_success' => 1,
                    ],
                    ['IS NOT', 'pod.id', null],
                ])
                ->limit(1)
                ->asArray()
                ->one();
            if (!$order) {
                \Yii::warning('模板消息发送失败，订单不存在');
                return false;
            }
        }
        $sub_order_list = PtOrder::find()->alias('po')
            ->select('po.*,pg.name AS goods_name,fi.form_id')
//            ->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name,fi.form_id')
//            ->leftJoin(['u' => User::tableName()], 'po.user_id=u.id')
            ->leftJoin(['pod' => PtOrderDetail::find()->select('id,goods_id,order_id')->where(['is_delete' => 0])->orderBy('addtime DESC')], 'po.id=pod.order_id')
            ->leftJoin(['pg' => PtGoods::tableName()], 'pod.goods_id=pg.id')
            ->leftJoin(['fi' => FormId::find()->orderBy('id DESC')], 'po.order_no=fi.order_no')
            ->where([
                'AND',
                [
                    'po.parent_id' => $order['id'],
                    'po.is_pay' => 1,
                    'po.is_delete' => 0,
                    'po.status' => 3,
                    'po.is_success' => 1,
                ],
                ['IS NOT', 'pod.id', null],
            ])
            ->orderBy('po.addtime')
            ->asArray()
            ->all();
        $order_list = array_merge([$order], $sub_order_list);
        $nickname_list = [];
        foreach ($order_list as $key => $order) {
            if ($order['order_no']=="robot"){
                $order_list[$key]['nickname'] = PtRobot::find()->andWhere(['id'=>$order['user_id']])->select('name')->scalar();
                $order_list[$key]['wechat_open_id'] = '';
            }else{
                $order_list[$key]['nickname'] = User::find()->andWhere(['id'=>$order['user_id']])->select('nickname')->scalar();
                $order_list[$key]['wechat_open_id'] = User::find()->andWhere(['id'=>$order['user_id']])->select('wechat_open_id')->scalar();
            }
            $nickname_list[] = $order_list[$key]['nickname'];
            $form_id = FormId::find()->where(['order_no' => $order['order_no']])->orderBy('id DESC')->one();
            $order_list[$key]['form_id'] = $form_id ? $form_id->form_id : null;
        }

        foreach ($order_list as $order) {
            if (!$order['form_id']) {
                \Yii::warning("拼团订单(id={$order['id']})未发送模板消息，form_id不存在");
                continue;
            }
            $data = [
                'touser' => $order['wechat_open_id'],
                'template_id' => $tpl_id,
                'page' => 'pages/pt/order/order?status=2',
                'form_id' => $order['form_id'],
                'data' => [
                    'keyword1' => [
                        'value' => $order['goods_name'],
                        'color' => '#555555',
                    ],
                    'keyword2' => [
                        'value' => $order['order_no'],
                        'color' => '#555555',
                    ],
                    'keyword3' => [
                        'value' => implode(',', $nickname_list),
                        'color' => '#555555',
                    ],
                ],
            ];
            $res = $this->sendNotice(json_encode($data, JSON_UNESCAPED_UNICODE));
            if ($res == false) {
                \Yii::warning("拼团订单(id={$order['id']})发送消息失败，网络错误");
                continue;
            }
            if (isset($res['errcode']) && $res['errcode'] != 0) {
                \Yii::warning("拼团订单(id={$order['id']})发送消息失败，" . (isset($res['errmsg']) ? $res['errmsg'] : null));
                continue;
            }
        }
        return true;
    }

    /**
     * 发送拼团失败消息
     * @param integer $order_id 拼团订单id（团长订单）
     */
    public function sendFailNotice($order_id)
    {
        $tpl_id = Option::get('pintuan_fail_notice', $this->store_id);
        if (!$tpl_id) {
            \Yii::warning('模板消息发送失败，模板消息ID未配置');
            return false;
        }
        $order = PtOrder::find()->alias('po')
            //->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name,fi.form_id')
            ->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name')
            ->leftJoin(['u' => User::tableName()], 'po.user_id=u.id')
            ->leftJoin(['pod' => PtOrderDetail::find()->select('id,goods_id,order_id')->where(['is_delete' => 0])->orderBy('addtime DESC')], 'po.id=pod.order_id')
            ->leftJoin(['pg' => PtGoods::tableName()], 'pod.goods_id=pg.id')
            //->leftJoin(['fi' => FormId::find()->orderBy('id DESC')], 'po.order_no=fi.order_no')
            ->where([
                'AND',
                [
                    'po.id' => $order_id,
                    'po.is_pay' => 1,
                    'po.is_delete' => 0,
                    'po.status' => 4,
                    'po.parent_id' => 0,
                ],
                ['IS NOT', 'pod.id', null],
            ])
            ->limit(1)
            ->asArray()
            ->one();
        if (!$order) {
            \Yii::warning('模板消息发送失败，订单不存在');
            return false;
        }
        $sub_order_list = PtOrder::find()->alias('po')
            //->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name,fi.form_id')
            ->select('po.*,u.wechat_open_id,u.nickname,pg.name AS goods_name')
            ->leftJoin(['u' => User::tableName()], 'po.user_id=u.id')
            ->leftJoin(['pod' => PtOrderDetail::find()->select('id,goods_id,order_id')->where(['is_delete' => 0])->orderBy('addtime DESC')], 'po.id=pod.order_id')
            ->leftJoin(['pg' => PtGoods::tableName()], 'pod.goods_id=pg.id')
            //->leftJoin(['fi' => FormId::find()->orderBy('id DESC')], 'po.order_no=fi.order_no')
            ->where([
                'AND',
                [
                    'po.parent_id' => $order['id'],
                    'po.is_pay' => 1,
                    'po.is_delete' => 0,
                    'po.status' => 4,
                ],
                ['IS NOT', 'pod.id', null],
            ])
            ->orderBy('po.addtime')
            ->asArray()
            ->all();
        $order_list = array_merge([$order], $sub_order_list);

        foreach ($order_list as $order) {
            $form_id = FormId::find()->where(['order_no' => $order['order_no']])->orderBy('id DESC')->one();
            $order['form_id'] = $form_id ? $form_id->form_id : null;
            if (!$order['form_id']) {
                \Yii::warning("拼团订单(id={$order['id']})未发送模板消息，form_id不存在");
                continue;
            }
            $data = [
                'touser' => $order['wechat_open_id'],
                'template_id' => $tpl_id,
                'page' => 'pages/pt/order/order?status=3',
                'form_id' => $order['form_id'],
                'data' => [
                    'keyword1' => [
                        'value' => $order['goods_name'],
                        'color' => '#555555',
                    ],
                    'keyword2' => [
                        'value' => '未在规定时间内凑集拼团人数',
                        'color' => '#555555',
                    ],
                    'keyword3' => [
                        'value' => $order['order_no'],
                        'color' => '#555555',
                    ],
                ],
            ];
            $res = $this->sendNotice(json_encode($data, JSON_UNESCAPED_UNICODE));
            if ($res == false) {
                \Yii::warning("拼团订单(id={$order['id']})发送消息失败，网络错误");
                continue;
            }
            if (isset($res['errcode']) && $res['errcode'] != 0) {
                \Yii::warning("拼团订单(id={$order['id']})发送消息失败，" . (isset($res['errmsg']) ? $res['errmsg'] : null));
                continue;
            }
        }
        return true;

    }


    public function sendRefundNotice($order_id)
    {

    }

    /**
     * 发送退款模板消息
     * @param double $refund_price 退款金额
     * @param string $refund_reason 退款原因
     * @param string $remark 备注
     */
    public function refundMsg($order_id=0,$refund_price, $refund_reason = '', $remark = '')
    {
        $this->order = PtOrder::findOne($order_id);
        if (!$this->order)
            return;
        $this->user = User::findOne($this->order->user_id);
        $this->form_id = FormId::find()->where(['order_no' => $this->order->order_no])->orderBy('id DESC')->one();

        try {
            if (!$this->wechat_template_message->refund_tpl)
                return;
            $data = [
                'touser' => $this->user->wechat_open_id,
                'template_id' => $this->wechat_template_message->refund_tpl,
                'form_id' => $this->form_id->form_id,
                'page' => 'pages/pt/order/order?status=4',
                'data' => [
                    'keyword1' => [
                        'value' => $refund_price,
                        'color' => '#333333',
                    ],
                    'keyword2' => [
                        'value' => $this->order->order_no,
                        'color' => '#333333',
                    ],
                    'keyword3' => [
                        'value' => $refund_reason,
                        'color' => '#333333',
                    ],
                    'keyword4' => [
                        'value' => $remark,
                        'color' => '#333333',
                    ],
                ],
            ];
            $this->sendTplMsg($data);
        } catch (\Exception $e) {
            \Yii::warning($e->getMessage());
        }
    }

    /**
     * 发送订单取消模板消息
     */
    public function revokeMsg($remark = '订单已取消')
    {
        $this->order = PtOrder::findOne($this->order_id);

        if (!$this->order)
            return;
        $this->user = User::findOne($this->order->user_id);
        $this->form_id = FormId::find()->where(['order_no' => $this->order->order_no])->orderBy('id DESC')->one();

        try {
            if (!$this->wechat_template_message->revoke_tpl)
                return;
            $goods_list = OrderDetail::find()
                ->select('g.name,od.num')
                ->alias('od')->leftJoin(['g' => Goods::tableName()], 'od.goods_id=g.id')
                ->where(['od.order_id' => $this->order->id, 'od.is_delete' => 0])->asArray()->all();
            $goods_names = '';
            foreach ($goods_list as $goods) {
                $goods_names .= $goods['name'];
            }
            $data = [
                'touser' => $this->user->wechat_open_id,
                'template_id' => $this->wechat_template_message->revoke_tpl,
                'form_id' => $this->form_id->form_id,
                //'page' => 'pages/order/order?status=' . ($this->order->is_pay == 1 ? 1 : 0),
                'data' => [
                    'keyword1' => [
                        'value' => $goods_names,
                        'color' => '#333333',
                    ],
                    'keyword2' => [
                        'value' => $this->order->order_no,
                        'color' => '#333333',
                    ],
                    'keyword3' => [
                        'value' => $this->order->total_price,
                        'color' => '#333333',
                    ],
                    'keyword4' => [
                        'value' => $remark,
                        'color' => '#333333',
                    ],
                ],
            ];
            $this->sendTplMsg($data);
//            $this->sendNotice($data);
        } catch (\Exception $e) {
            \Yii::warning($e->getMessage());
        }
    }


    private function sendTplMsg($data)
    {
        $access_token = $this->wechat->getAccessToken();
        $api = "https://api.weixin.qq.com/cgi-bin/message/wxopen/template/send?access_token={$access_token}";
        $data = json_encode($data, JSON_UNESCAPED_UNICODE);
        $this->wechat->curl->post($api, $data);
        $res = json_decode($this->wechat->curl->response, true);
        if (!empty($res['errcode']) && $res['errcode'] != 0) {
            \Yii::warning("模板消息发送失败：\r\ndata=>{$data}\r\nresponse=>" . json_encode($res, JSON_UNESCAPED_UNICODE));
        }
    }

    function sendNotice($data)
    {
        if (!$this->wechat)
            return false;
        $access_token = $this->wechat->getAccessToken();
        $api = "https://api.weixin.qq.com/cgi-bin/message/wxopen/template/send?access_token={$access_token}";
        $curl = $this->wechat->curl;
        $curl->post($api, $data);
        if ($curl->http_error)
            return false;
        return json_decode($curl->response, true);
    }
}