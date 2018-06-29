<?php
/**
 * @link http://www.zjhejiang.com/
 * @copyright Copyright (c) 2018 浙江禾匠信息科技有限公司
 * @author Lu Wei
 */
defined('YII_RUN') or exit('Access Denied');
$this->title = '提现';
?>

<div class="panel mb-3">
    <div class="panel-body">
        <div class="p-3">
            <div flex="dir:left cross:center">
                <div style="font-size: 1.75rem;">账户余额：</div>
                <div style="color: #ff4544" class="mr-3" flex="dir:left cross:bottom">
                    <div style="font-size: 1.75rem"><?= $account_money ?></div>
                    <div style="font-size: .75rem;line-height: 2.5">元</div>
                </div>
                <div>
                    <button class="btn btn-primary show-cash-modal">提现</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="panel mb-3">
    <div class="panel-header">
        <span>提现记录</span>
    </div>
    <div class="panel-body">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>金额（元）</th>
                <th>时间</th>
                <th>状态</th>
            </tr>
            </thead>
            <?php if (!is_array($list) || !count($list)): ?>
                <tr>
                    <td colspan="3" class="text-center text-muted p-5">暂无记录</td>
                </tr>
            <?php else: ?>
                <?php foreach ($list as $item): ?>
                    <tr>
                        <td><?= $item['money'] ?></td>
                        <td><?= $item['addtime'] ?></td>
                        <td>
                            <?php if ($item['status'] == 0): ?>
                                <span>待审核</span>
                            <?php elseif ($item['status'] == 1): ?>
                                <span class="text-success">已转账</span>
                            <?php else: ?>
                                <span class="text-danger">已拒绝</span>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php endif; ?>
        </table>
        <?= \yii\widgets\LinkPager::widget(['pagination' => $pagination]) ?>
    </div>
</div>
<div class="modal fade cash-modal" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">提现</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="mb-3">请输入提现金额（1~<?= $account_money ?>）：</div>
                <input class="form-control cash-input" type="number" min="1" step="0.01">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary cash-submit">提交</button>
            </div>
        </div>
    </div>
</div>

<script>
    var account_money =<?=$account_money ? $account_money : 0?>;
    $(document).on('click', '.show-cash-modal', function () {
        if (account_money < 1) {
            $.toast({
                content: '账户余额低于1元无法提现。',
            });
        } else {
            $('.cash-modal').modal('show');
        }
    });
    $(document).on('click', '.cash-submit', function () {
        var money = parseFloat($('.cash-input').val());
        if (isNaN(money)) {
            $.toast({
                content: '提现金额只能是数字。',
            });
            $('.cash-input').val('');
            return;
        }
        money = money.toFixed(2);
        $('.cash-input').val(money);
        var btn = $(this);
        btn.btnLoading();
        $.ajax({
            type: 'post',
            data: {
                _csrf: _csrf,
                money: money,
            },
            dataType: 'json',
            success: function (res) {
                $('.cash-modal').modal('hide');
                if (res.code == 0) {
                    $.alert({
                        content: res.msg,
                        confirm: function () {
                            location.reload();
                        }
                    });
                } else {
                    $.toast({
                        content: res.msg,
                    });
                }
            },
            complete: function () {
                btn.btnReset();
            }
        });
    });
</script>