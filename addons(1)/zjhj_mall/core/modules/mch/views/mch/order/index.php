<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/5/9
 * Time: 11:01
 */
defined('YII_RUN') or exit('Access Denied');

use yii\widgets\LinkPager;

/* @var \app\models\User $user */

$urlManager = Yii::$app->urlManager;
$statics = Yii::$app->request->baseUrl . '/statics';
$this->title = '订单管理';
$status = Yii::$app->request->get('status');
$is_recycle = Yii::$app->request->get('is_recycle');
$condition = [];
if ($status === '' || $status === null || $status == -1)
    $status = -1;
?>
<style>
    .order-item {
        border: 1px solid transparent;
        margin-bottom: 1rem;
    }

    .order-item table {
        margin: 0;
    }

    .order-item:hover {
        border: 1px solid #3c8ee5;
    }

    .goods-item {
        margin-bottom: .75rem;
    }

    .goods-item:last-child {
        margin-bottom: 0;
    }

    .goods-pic {
        width: 5.5rem;
        height: 5.5rem;
        display: inline-block;
        background-color: #ddd;
        background-size: cover;
        background-position: center;
        margin-right: 1rem;
    }

    .goods-name {
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
    }

    .order-tab-1 {
        width: 40%;
    }

    .order-tab-2 {
        width: 20%;
        text-align: center;
    }

    .order-tab-3 {
        width: 10%;
        text-align: center;
    }

    .order-tab-4 {
        width: 20%;
        text-align: center;
    }

    .order-tab-5 {
        width: 10%;
        text-align: center;
    }

    .status-item.active {
        color: inherit;
    }
</style>
<div class="panel mb-3">
    <div class="panel-header"><?= $this->title ?></div>
    <div class="panel-body">
        <div class="mb-3 clearfix">
            <div class="p-4 bg-shaixuan">
                <form method="get">
                    <?php $_s = ['keyword', 'keyword_1', 'date_start', 'date_end','page','per-page'] ?>
                    <?php foreach ($_GET as $_gi => $_gv):if (in_array($_gi, $_s)) continue; ?>
                        <input type="hidden" name="<?= $_gi ?>" value="<?= $_gv ?>">
                    <?php endforeach; ?>
                    <div flex="dir:left">
                        <div class="mr-4">
                            <div class="form-group row w-20">
                                <div class="col-5">
                                    <select class="form-control" name="keyword_1">
                                        <option value="1" <?= $_GET['keyword_1'] == 1 ? "selected" : "" ?>>订单号</option>
                                        <option value="2" <?= $_GET['keyword_1'] == 2 ? "selected" : "" ?>>用户</option>
                                        <option value="3" <?= $_GET['keyword_1'] == 3 ? "selected" : "" ?>>收货人</option>
                                    </select>
                                </div>
                                <div class="col-7">
                                    <input class="form-control"
                                           name="keyword"
                                           autocomplete="off"
                                           value="<?= isset($_GET['keyword']) ? trim($_GET['keyword']) : null ?>">
                                </div>
                            </div>
                        </div>
                        <div class="mr-4">
                            <div class="form-group row">
                                <div>
                                    <label class="col-form-label">下单时间：</label>
                                </div>
                                <div>
                                    <div class="input-group">
                                        <input class="form-control" id="date_start" name="date_start"
                                               autocomplete="off"
                                               value="<?= isset($_GET['date_start']) ? trim($_GET['date_start']) : '' ?>">
                                        <span class="input-group-btn">
                                            <a class="btn btn-secondary" id="show_date_start" href="javascript:">
                                                <span class="iconfont icon-daterange"></span>
                                            </a>
                                        </span>
                                        <span class="middle-center input-group-addon" style="padding:0 4px">至</span>
                                        <input class="form-control" id="date_end" name="date_end"
                                               autocomplete="off"
                                               value="<?= isset($_GET['date_end']) ? trim($_GET['date_end']) : '' ?>">
                                        <span class="input-group-btn">
                                            <a class="btn btn-secondary" id="show_date_end" href="javascript:">
                                                <span class="iconfont icon-daterange"></span>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                                <div class="middle-center">
                                    <a href="javascript:" class="new-day btn btn-primary" data-index="7">近7天</a>
                                    <a href="javascript:" class="new-day btn btn-primary" data-index="30">近30天</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div flex="dir:left">
                        <div class="mr-4">
                            <div class="form-group">
                                <button class="btn btn-primary mr-4">筛选</button>
                                <a class="btn btn-secondary"
                                   href="<?= Yii::$app->request->url . "&flag=EXPORT" ?>">批量导出</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="mb-4">
            <ul class="nav nav-tabs status">
                <li class="nav-item">
                    <a class="status-item nav-link <?= $status == -1 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']])) ?>">全部</a>
                </li>
                <li class="nav-item">
                    <a class="status-item nav-link <?= $status == 0 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']], $condition, ['status' => 0])) ?>">未付款</a>

                </li>
                <li class="nav-item">
                    <a class="status-item nav-link <?= $status == 1 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']], $condition, ['status' => 1])) ?>">待发货</a>
                </li>
                <li class="nav-item">
                    <a class="status-item  nav-link <?= $status == 2 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']], $condition, ['status' => 2])) ?>">待收货</a>
                </li>
                <li class="nav-item">
                    <a class="status-item  nav-link <?= $status == 3 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']], $condition, ['status' => 3])) ?>">已完成</a>
                </li>
                <li class="nav-item">
                    <a class="status-item  nav-link <?= $status == 6 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']], $condition, ['status' => 6])) ?>">待处理</a>
                </li>
                <li class="nav-item">
                    <a class="status-item  nav-link <?= $status == 5 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']], $condition, ['status' => 5])) ?>">已取消</a>
                </li>
                <li class="nav-item">
                    <a class="status-item  nav-link <?= $status == 7 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']], $condition, ['status' => 7])) ?>">异常订单</a>
                </li>
                <li class="nav-item">
                    <a class="status-item  nav-link <?= $status == 8 ? 'active' : null ?>"
                       href="<?= $urlManager->createUrl(array_merge([$_GET['r']], $condition, ['status' => 8])) ?>">回收站</a>
                </li>
            </ul>
        </div>
        <table class="table table-bordered bg-white">
            <tr>
                <th class="order-tab-1">商品信息</th>
                <th class="order-tab-2">金额</th>
                <th class="order-tab-3">实际付款</th>
                <th class="order-tab-4">订单状态</th>
                <th class="order-tab-5">操作</th>
            </tr>
        </table>
        <?php foreach ($list as $order_item): ?>
            <div class="order-item" style="<?= $order_item['flag'] == 1 ? 'color:#ff4544' : '' ?>">
                <?php if ($order_item['flag'] == 1): ?>
                    <div class="text-danger">注：此订单数据异常，请谨慎发货，及时联系管理员处理</div>
                <?php endif; ?>
                <table class="table table-bordered bg-white">
                    <tr>
                        <td colspan="5" class="text-center">
                            <span class="mr-4">商户店铺名称：<?=$order_item['name']?></span>
                            <span class="mr-4">商户联系人：<?=$order_item['realname']?></span>
                            <span class="mr-4">商户联系电话：<?=$order_item['tel']?></span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <span class="mr-5"><?= date('Y-m-d H:i:s', $order_item['addtime']) ?></span>
                            <span class="mr-5">订单号：<?= $order_item['order_no'] ?></span>
                            <span>用户：<?= $order_item['nickname'] ?></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="order-tab-1">
                            <?php foreach ($order_item['goods_list'] as $goods_item): ?>
                                <div class="goods-item" flex="dir:left box:first">
                                    <div class="fs-0">
                                        <div class="goods-pic"
                                             style="background-image: url('<?= $goods_item['goods_pic'] ?>')"></div>
                                    </div>
                                    <div class="goods-info">
                                        <div class="goods-name"><?= $goods_item['name'] ?></div>
                                        <div class="fs-sm">
                                            规格：
                                        <span class="text-danger">
                                            <?php $attr_list = json_decode($goods_item['attr']); ?>
                                            <?php if (is_array($attr_list)):foreach ($attr_list as $attr): ?>
                                                <span class="mr-3"><?= $attr->attr_group_name ?>
                                                    :<?= $attr->attr_name ?></span>
                                            <?php endforeach;;endif; ?>
                                        </span>
                                        </div>
                                        <div class="fs-sm">数量：
                                            <span
                                                class="text-danger"><?= $goods_item['num'] . $goods_item['unit'] ?></span>
                                        </div>
                                        <div class="fs-sm">小计：
                                            <span class="text-danger"><?= $goods_item['total_price'] ?>元</span></div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </td>
                        <td class="order-tab-2">
                            <div>总金额：<?= $order_item['total_price'] ?>元（含运费）</div>
                            <?php if ($order_item['express_price_1']): ?>
                                <div>运费：<?= $order_item['express_price_1'] ?>元</div>
                                <div class="text-danger">包邮，运费减免</div>
                            <?php else: ?>
                                <div>运费：<?= $order_item['express_price'] ?>元</div>
                            <?php endif; ?>
                            <?php if ($order_item['user_coupon_id']): ?>
                                <div>优惠券优惠：<?= $order_item['coupon_sub_price'] ?>元</div>
                            <?php endif; ?>
                            <?php if ($order_item['before_update_price']): ?>
                                <?php if ($order_item['pay_price'] > $order_item['before_update_price']): ?>
                                    <div>后台修改加价：<?= $order_item['pay_price'] - $order_item['before_update_price'] ?>元
                                    </div>
                                <?php else: ?>
                                    <div>后台修改优惠：<?= $order_item['before_update_price'] - $order_item['pay_price'] ?>元
                                    </div>
                                <?php endif; ?>
                            <?php endif; ?>
                            <?php if ($order_item['integral'] && $order_item['integral']['forehead_integral']): ?>
                                <div>积分使用：<?= $order_item['integral']['forehead_integral'] ?></div>
                                <div>积分抵扣：<?= $order_item['integral']['forehead'] ?>元</div>
                            <?php endif; ?>
                            <?php if ($order_item['discount'] && $order_item['discount'] != 10): ?>
                                <div>会员折扣：<?= $order_item['discount'] ?>折</div>
                            <?php endif; ?>
                        </td>
                        <td class="order-tab-3">
                            <div><?= $order_item['pay_price'] ?>元</div>
                        </td>
                        <td class="order-tab-4">
                            <div>
                                付款状态：
                                <?php if ($order_item['is_pay'] == 1): ?>
                                    <span class="badge badge-success">已付款</span>
                                <?php else: ?>
                                    <span class="badge badge-default">未付款</span>
                                <?php endif; ?>
                            </div>

                            <?php if ($order_item['pay_type'] == 2): ?>
                                <div>
                                    支付方式：
                                    <span class="badge badge-success">货到付款</span>
                                </div>
                            <?php elseif ($order_item['pay_type'] == 3): ?>
                                <div>
                                    支付方式：
                                    <span class="badge badge-success">余额支付</span>
                                </div>
                            <?php else: ?>
                                <div>
                                    支付方式：
                                    <span class="badge badge-success">微信支付</span>
                                </div>
                            <?php endif; ?>

                            <?php if ($order_item['apply_delete'] == 1): ?>
                                <div>
                                    申请取消：
                                    <?php if ($order_item['is_delete'] == 0): ?>
                                        <span class="badge badge-warning">申请中</span>
                                    <?php else: ?>
                                        <span class="badge badge-warning">申请成功</span>
                                    <?php endif; ?>
                                </div>
                            <?php endif; ?>

                            <div>
                                发货方式：
                                <?php if ($order_item['is_offline'] == 1): ?>
                                    <span class="badge badge-warning">到店自提</span>
                                <?php else: ?>
                                    <span class="badge badge-warning">快递发送</span>
                                <?php endif; ?>
                            </div>
                            <?php if ($order_item['is_pay'] == 1): ?>
                                <div>
                                    发货状态：
                                    <?php if ($order_item['is_send'] == 1): ?>
                                        <span class="badge badge-success">已发货</span>
                                    <?php else: ?>
                                        <span class="badge badge-default">未发货</span>
                                    <?php endif; ?>
                                </div>
                            <?php endif; ?>

                            <?php if ($order_item['is_send'] == 1): ?>
                                <div>
                                    收货状态：
                                    <?php if ($order_item['is_confirm'] == 1): ?>
                                        <span class="badge badge-success">已收货</span>
                                    <?php else: ?>
                                        <span class="badge badge-default">未收货</span>
                                    <?php endif; ?>
                                </div>
                            <?php endif; ?>

                            <?php if ($order_item['is_send'] == 1): ?>
                                <?php if ($order_item['is_offline'] == 0 || $order_item['express']): ?>
                                    <div>快递单号：<a href="https://www.baidu.com/s?wd=<?= $order_item['express_no'] ?>"
                                                 target="_blank"><?= $order_item['express_no'] ?></a></div>
                                    <div>快递公司：<?= $order_item['express'] ?></div>
                                <?php elseif ($order_item['is_offline'] == 1): ?>
                                    <div>核销员：<?= $order_item['clerk_name'] ?></div>
                                <?php endif; ?>
                            <?php endif; ?>

                            <?php if ($order_item['refund']): ?>
                                <div>售后状态：
                                    <?php if ($order_item['refund'] == 0): ?>
                                        <span>待商家处理</span>
                                    <?php elseif ($order_item['refund'] == 1): ?>
                                        <span>同意并已退款</span>
                                    <?php elseif ($order_item['refund'] == 2): ?>
                                        <span>已同意换货</span>
                                    <?php elseif ($order_item['refund'] == 3): ?>
                                        <span>已拒绝退换货</span>
                                    <?php endif; ?>
                                </div>
                            <?php endif; ?>

                        </td>
                        <td class="order-tab-5">
                            <a class="btn btn-sm btn-primary"
                               href="<?= $urlManager->createUrl(['mch/mch/order/detail', 'order_id' => $order_item['id']]) ?>">详情</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="5">
                            <div>
                                <span class="mr-3">收货人：<?= $order_item['name'] ?></span>
                                <span class="mr-3">电话：<?= $order_item['mobile'] ?></span>
                                <?php if ($order_item['is_offline'] == 0): ?>
                                    <span>地址：<?= $order_item['address'] ?></span>
                                <?php endif; ?>
                            </div>
                            <div <?= $order_item['remark'] ? '' : 'hidden' ?>>
                                用户备注：<?= $order_item['remark'] ?>
                            </div>
                            <?php if ($order_item['shop_id']): ?>
                                <div>
                                    <span class="mr-3">门店名称：<?= $order_item['shop']['name'] ?></span>
                                    <span class="mr-3">门店地址：<?= $order_item['shop']['address'] ?></span>
                                    <span class="mr-3">电话：<?= $order_item['shop']['mobile'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if ($order_item['content']): ?>
                                <div><span>备注：<?= $order_item['content'] ?></span></div>
                            <?php endif; ?>
                        </td>
                    </tr>
                </table>
            </div>
        <?php endforeach; ?>
        <div class="text-center">
            <?= LinkPager::widget(['pagination' => $pagination,]) ?>
            <div class="text-muted"><?= $row_count ?>条数据</div>
        </div>
    </div>
</div>

<?= $this->render('/layouts/ss') ?>

<script>
    console.log(window.location.href)
    $(document).on('click', '.del', function () {
        var a = $(this);
        $.myConfirm({
            content: a.data('content'),
            confirm: function () {
                $.ajax({
                    url: a.data('url'),
                    type: 'get',
                    dataType: 'json',
                    success: function (res) {
                        if (res.code == 0) {
                            window.location.reload();
                        } else {
                            $.myAlert({
                                title: res.msg
                            });
                        }
                    }
                });
            }
        });
        return false;
    });
</script>
<script>
    $(document).on('click', '.is-express', function () {
        if ($(this).val() == 0) {
            $('.is-true-express').prop('hidden', true);
        } else {
            $('.is-true-express').prop('hidden', false);
        }
    });
</script>
