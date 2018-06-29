<?php
defined('YII_RUN') or exit('Access Denied');
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/8/31
 * Time: 18:05
 */
$data = json_decode($block->data, true);

?>
<div class="home-block">
    <div class="block-content">
        <div class="block-name">版块：<?= $block->name ?></div>
    </div>
    <img class="block-img" src="<?= Yii::$app->request->baseUrl ?>/statics/images/block-bg.png">
</div>