<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/12/28
 * Time: 15:53
 */
$this->title = '提现管理';
$url_manager = Yii::$app->urlManager;
?>

<div class="panel mb-3">
    <div class="panel-header">
        <span><?= $this->title ?></span>
        <ul class="nav nav-right">
            <li class="nav-item">
                <a class="nav-link <?= !isset($get['status']) || $get['status'] == -1 ? 'active' : null ?>"
                   href="<?= $url_manager->createUrl(['mch/mch/index/cash', 'status' => -1]) ?>">全部</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <?= !isset($get['status']) || $get['status'] == 0 ? 'active' : null ?>"
                   href="<?= $url_manager->createUrl(['mch/mch/index/cash', 'status' => 0]) ?>">待审核</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <?= isset($get['review_status']) && $get['status'] == 1 ? 'active' : null ?>"
                   href="<?= $url_manager->createUrl(['mch/mch/index/cash', 'status' => 1]) ?>">已通过</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <?= isset($get['review_status']) && $get['status'] == 2 ? 'active' : null ?>"
                   href="<?= $url_manager->createUrl(['mch/mch/index/cash', 'status' => 2]) ?>">未通过</a>
            </li>
        </ul>
    </div>
    <div class="panel-body">
        <?php if (!$list || count($list) == 0): ?>
            <div class="p-5 text-center text-muted">暂无提现记录</div>
        <?php else: ?>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>商户</th>
                    <th>用户</th>
                    <th>提现金额</th>
                    <th>时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <?php foreach ($list as $item): ?>
                    <tr>
                        <td><?= $item['id'] ?></td>
                        <td><?= $item['name'] ?></td>
                        <td><?= $item['nickname'] ?></td>
                        <td><?= $item['money'] ?></td>
                        <td><?= $item['addtime'] ?></td>
                        <td>
                            <?php if ($item['status'] == 0): ?>
                                <a class="transfer-confirm" data-warning="确认通过？资金将转入用户微信零钱。"
                                   href="<?= $url_manager->createUrl(['mch/mch/index/cash-submit', 'status' => 1, 'id' => $item['id'],]) ?>">转账</a>
                                <span>|</span>
                                <a class="transfer-confirm" data-warning="确认拒绝？资金将反之商户账户余额。"
                                   href="<?= $url_manager->createUrl(['mch/mch/index/cash-submit', 'status' => 2, 'id' => $item['id'],]) ?>">拒绝</a>
                            <?php else: ?>
                                <?php if ($item['status'] == 1): ?>
                                    <span class="text-success">已转账</span>
                                <?php else: ?>
                                    <span class="text-danger">已拒绝</span>
                                <?php endif; ?>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </table>
            <?= \yii\widgets\LinkPager::widget(['pagination' => $pagination]) ?>
        <?php endif; ?>
    </div>
</div>
<script>
    $(document).on('click', '.transfer-confirm', function () {
        var btn = $(this);
        $.confirm({
            content: btn.attr('data-warning'),
            confirm: function () {
                $.loading();
                $.ajax({
                    url: btn.attr('href'),
                    dataType: 'json',
                    success: function (res) {
                        $.alert({
                            content: res.msg,
                            confirm: function () {
                                location.reload();
                            }
                        });
                    }
                });
            },
        });
        return false;
    });
</script>
