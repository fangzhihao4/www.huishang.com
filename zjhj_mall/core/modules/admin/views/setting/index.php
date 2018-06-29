<?php
defined('YII_RUN') or exit('Access Denied');
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/10/3
 * Time: 12:04
 */
/* @var \yii\web\View $this */
$this->title = '系统设置';
$url_manager = Yii::$app->urlManager;
$current_url = Yii::$app->request->absoluteUrl;
$return_url = $url_manager->createUrl(['admin/setting/index']);
$this->params['active_nav_link'] = 'admin/setting/index';
?>
<style>
    form {
        position: relative;
    }

    .form-disable {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background: rgba(255, 255, 255, .75);
        z-index: 10;
        text-align: center;
        padding: 50px 0;
    }

    .form-disable .alert {
        display: table;
        margin: 0 auto;
    }
</style>

<form method="post" return="<?= $return_url ?>" class="auto-submit-form card">
    <div class="card-header"><?= $this->title ?></div>
    <div class="card-body">

        <div class="form-group row">
            <label class="col-sm-3 col-form-label">网站名称</label>
            <div class="col-sm-6">
                <input class="form-control" value="<?= $option['name'] ?>" name="name">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Logo图片URL</label>
            <div class="col-sm-6">
                <div class="input-group mb-2">
                    <input class="form-control" value="<?= $option['logo'] ?>" name="logo">
                    <span class="input-group-btn">
                        <a class="btn btn-secondary upload-btn" href="javascript:">上传图片</a>
                    </span>
                </div>
                <div style="display: inline-block;background: #fff;border: 1px solid #e3e3e3">
                    <img src="<?= $option['logo'] ?>" class="logo-preview"
                         style="height: 50px;width: auto;display: inline-block" alt="请上传图片">
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">底部版权信息</label>
            <div class="col-sm-6">
                <input class="form-control" value="<?= \yii\helpers\Html::encode($option['copyright']) ?>"
                       name="copyright">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3 col-form-label">密码输错n次禁止登录</label>
            <div class="col-sm-6">
                <input type="number" min="1" step="1" class="form-control"
                       value="<?= $option['max_login_error'] ? $option['max_login_error'] : null ?>"
                       name="max_login_error">
                <div class="fs-sm text-muted">账户输错密码n次后当天禁止登录，最小值：1，建议值：5</div>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-3"></label>
            <div class="col-sm-6 offset-sm-3">
                <a class="btn btn-primary submit-btn" href="javascript:">保存</a>
            </div>
        </div>
    </div>
</form>
<script>
    $('.upload-btn').plupload({
        url: '<?=$url_manager->createUrl(["upload/image"])?>',
        success: function (e, res, status) {
            res = JSON.parse(res);
            if (res.code == 0) {
                $('input[name=logo]').val(res.data.url);
                $('.logo-preview').attr('src', res.data.url);
            }
        },
    });
</script>