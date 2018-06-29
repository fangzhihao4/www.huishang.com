<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/3/9
 * Time: 10:28
 */
?>
<style>
    body {
        background: #f7f6f1;
    }

    .main-box {
        position: fixed;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
    }

    .main-content {
        max-width: 260px;
    }

    .title {
        text-align: center;
        padding: 16px;
        font-size: 1.35rem;
    }

    .qrcode {
        max-width: 260px;
        border-radius: 0;
        border: 1px solid #eee;
        margin-bottom: 20px;
        padding: 1rem;
        background-color: #fff;
    }

    .desc {
        background: #eee;
        max-width: 100%;
        text-align: center;
        padding: 12px;
        border-radius: 999px;
        box-shadow: inset 1px 1px 3px 0px rgba(0, 0, 0, .2), 1px 1px 1px #fff;
    }

    .login-success {
        color: #1f9832;
        display: none;
    }

</style>
<div class="main-box" flex="dir:left main:center cross:center">
    <div class="main-content">
        <div class="title">微信登陆</div>
        <img class="qrcode" src="<?= $img_url ?>">
        <div class="desc">
            <div class="login-tip">请使用微信扫描小程序码登录</div>
            <div class="login-success">登录成功</div>
        </div>
    </div>
</div>
<script>
    var stop = false;

    function checkLogin() {
        if (stop)
            return;
        $.ajax({
            url: '<?=Yii::$app->urlManager->createUrl(['user/passport/check-login', 'token' => $token])?>',
            dataType: 'json',
            success: function (res) {
                if (res.code == 1) {
                    stop = true;
                    console.log(res.msg);
                }
                if (res.code == 0) {
                    console.log('登录成功');
                    $('.login-tip').hide();
                    $('.login-success').show();
                    location.href = '<?=Yii::$app->urlManager->createUrl(['user'])?>';
                }
                if (res.code == -1) {
                    checkLogin();
                }
            },
            error: function () {
                stop = true;
            }
        });
    }

    checkLogin();
</script>