<?php
defined('YII_RUN') or exit('Access Denied');
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/10/3
 * Time: 12:04
 */
/* @var \yii\web\View $this */
$this->title = '我的小程序商城';
$url_manager = Yii::$app->urlManager;
$current_url = Yii::$app->request->absoluteUrl;
$this->params['active_nav_link'] = 'admin/app/index';
?>
<div class="mb-3">
    <a href="javascript:" class="btn btn-sm btn-primary mr-3 add-app">添加小程序商城</a>
    <span>
        <span>可创建小程序商城数量：<?= $app_max_count == 0 ? '无限制' : $app_max_count . '个' ?></span>
        <?php if ($app_max_count != 0): ?>
            <span>，剩余创建个数：<?= $app_max_count - $app_count ?></span>
        <?php endif; ?>
    </span>
</div>
<table class="table bg-white">
    <thead>
    <tr>
        <th>ID</th>
        <th>名称</th>
        <th>操作</th>
    </tr>
    </thead>
    <?php if (count($list) == 0): ?>
        <tr>
            <td colspan="3" class="text-center p-5">
                <a href="javascript:" class="add-app">添加小程序商城</a>
            </td>
        </tr>
    <?php endif; ?>
    <?php foreach ($list as $item): ?>
        <tr>
            <td><?= $item->id ?></td>
            <td>
                <a href="<?= $url_manager->createUrl(['admin/app/entry', 'id' => $item->id]) ?>"><?= $item->name ?></a>
            </td>
            <td>
                <a class="mr-3"
                   href="<?= $url_manager->createUrl(['admin/app/entry', 'id' => $item->id]) ?>">进入商城</a>
                <a class="delete-btn"
                   href="<?= $url_manager->createUrl(['admin/app/delete', 'id' => $item->id]) ?>">删除</a>
            </td>
        </tr>
    <?php endforeach; ?>
</table>
<script>
    $(document).on("click", ".add-app", function () {
        $.myPrompt({
            content: "请输入小程序名称：",
            confirm: function (val) {
                if (!val) {
                    return false;
                }
                $.myLoading({
                    title: "正在提交",
                });
                $.ajax({
                    url: "<?=$url_manager->createUrl(['admin/app/edit'])?>",
                    type: "post",
                    dataType: "json",
                    data: {
                        _csrf: _csrf,
                        name: val,
                    },
                    success: function (res) {
                        $.myLoadingHide();
                        $.myToast({
                            content: res.msg,
                            callback: function () {
                                location.reload();
                            }
                        });
                    }
                });

            }
        });
    });
    $(document).on("click", ".delete-btn", function () {
        var href = $(this).attr("href");
        $.myConfirm({
            content: "确认删除小程序？此操作将不可恢复！",
            confirm: function () {
                $.myLoading({
                    title: "正在提交",
                });
                $.ajax({
                    url: href,
                    dataType: "json",
                    success: function (res) {
                        $.myLoadingHide();
                        $.myToast({
                            content: res.msg,
                            callback: function () {
                                location.reload();
                            }
                        });
                    }
                });

            }
        });
        return false;
    });
</script>