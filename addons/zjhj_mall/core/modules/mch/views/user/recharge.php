<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/17
 * Time: 9:23
 */
defined('YII_RUN') or exit('Access Denied');
use \app\models\User;

$urlManager = Yii::$app->urlManager;
$this->title = '余额充值记录';
$this->params['active_nav_group'] = 4;
?>

<div class="panel mb-3">
    <div class="panel-header"><?= $this->title ?></div>
    <div class="panel-body">
        <div class="float-right mb-4">
            <form method="get">

                <?php $_s = ['keyword'] ?>
                <?php foreach ($_GET as $_gi => $_gv):if (in_array($_gi, $_s)) continue; ?>
                    <input type="hidden" name="<?= $_gi ?>" value="<?= $_gv ?>">
                <?php endforeach; ?>

                <div class="input-group">
                    <input class="form-control"
                           placeholder="微信昵称"
                           name="keyword"
                           autocomplete="off"
                           value="<?= isset($_GET['keyword']) ? trim($_GET['keyword']) : null ?>">
                    <span class="input-group-btn">
                    <button class="btn btn-primary">搜索</button>
                </span>
                </div>
            </form>
        </div>
        <div class="text-danger"></div>
        <table class="table table-bordered bg-white">
            <thead>
            <tr>
                <th>ID</th>
                <th>订单号</th>
                <th>昵称</th>
                <th>支付金额</th>
                <th>赠送金额</th>
                <th>充值时间</th>
            </tr>
            </thead>
            <?php foreach ($list as $v): ?>
                <tr style="<?= $v['flag'] == 1 ? 'color:#ff4544' : '' ?>">
                    <td><?= $v['id'] ?></td>
                    <td>
                        <div><?= $v['order_no'] ?></div>
                        <?php if ($v['flag'] == 1): ?>
                            <div>
                                <span style="background-color: #ff4544;color:#fff;">此订单数据异常，即订单的支付金额、赠送金额与充值设置不一致</span>
                            </div>
                        <?php endif ?>
                    </td>
                    <td><?= $v['nickname'] ?></td>
                    <td><?= $v['pay_price'] ?></td>
                    <td><?= $v['send_price'] ?></td>
                    <td><?= date('Y-m-d H:i:s', $v['pay_time']); ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
        <div class="text-center">
            <?= \yii\widgets\LinkPager::widget(['pagination' => $pagination,]) ?>
            <div class="text-muted"><?= $row_count ?>条数据</div>
        </div>
    </div>
</div>
