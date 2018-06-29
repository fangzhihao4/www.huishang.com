<?php

defined('YII_RUN') or exit('Access Denied');
use \app\models\User;

$urlManager = Yii::$app->urlManager;
$this->title = '会员购买记录';
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
                <th>购买前</th>
                <th>购买后</th>
                <th>购买时间</th>
            </tr>
            </thead>
            <?php foreach ($list as $v): ?>
                <tr>
                    <td><?= $v['id'] ?></td>
                    <td><?= $v['order_no'] ?></td>
                    <td><?= $v['nickname'] ?></td>
                    <td><?= $v['pay_price'] ?></td>
                    <td><?= $v['current_name'] ?></td>
                    <td><?= $v['after_name'] ?></td>
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
