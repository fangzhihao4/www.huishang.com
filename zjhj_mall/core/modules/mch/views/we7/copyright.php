<?php
defined('YII_RUN') or exit('Access Denied');
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/2/6
 * Time: 10:11
 */
$urlManager = Yii::$app->urlManager;
$this->title = '版权设置';
$this->params['active_nav_group'] = 1;
?>

<div class="panel mb-3">
    <div class="panel-header"><?= $this->title ?></div>
    <div class="panel-body">
        <form class="auto-form" method="post" return="<?=$url?>">

            <div class="form-group row">
                <div class="form-group-label col-sm-2 text-right">
                    <label class="col-form-label">底部版权文字</label>
                </div>
                <div class="col-sm-6" style="max-width: 360px">
                    <input class="form-control" name="text" value="<?=$data['copyright']['text']?>">
                </div>
            </div>
            <div class="form-group row">
                <div class="form-group-label col-sm-2 text-right">
                    <label class="col-form-label">底部版权图标</label>
                </div>
                <div class="col-sm-6" style="max-width: 360px">
                    <div class="upload-group">
                        <div class="input-group">
                            <input class="form-control file-input" name="icon" value="<?=$data['copyright']['icon']?>">
                                        <span class="input-group-btn">
                                        <a class="btn btn-secondary upload-file" href="javascript:"
                                           data-toggle="tooltip"
                                           data-placement="bottom" title="上传文件">
                                            <span class="iconfont icon-cloudupload"></span>
                                        </a>
                                    </span>
                                        <span class="input-group-btn">
                                        <a class="btn btn-secondary select-file" href="javascript:"
                                           data-toggle="tooltip"
                                           data-placement="bottom" title="从文件库选择">
                                            <span class="iconfont icon-viewmodule"></span>
                                        </a>
                                    </span>
                                        <span class="input-group-btn">
                                        <a class="btn btn-secondary delete-file" href="javascript:"
                                           data-toggle="tooltip"
                                           data-placement="bottom" title="删除文件">
                                            <span class="iconfont icon-close"></span>
                                        </a>
                                    </span>
                        </div>
                        <div class="upload-preview text-center upload-preview">
                            <span class="upload-preview-tip">240&times;60</span>
                            <img class="upload-preview-img" src="<?=$data['copyright']['icon']?>">
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="form-group-label col-sm-2 text-right">
                    <label class="col-form-label">底部版权链接</label>
                </div>
                <div class="col-sm-6" style="max-width: 360px">
                    <div class="input-group page-link-input">
                        <input class="form-control link-input"
                               readonly
                               name="url" value="<?=$data['copyright']['url']?>">
                        <input class="link-open-type"
                               name="open_type"
                               type="hidden" value="<?=$data['copyright']['open_type']?>">
                                    <span class="input-group-btn">
                                    <a class="btn btn-secondary pick-link-btn" href="javascript:">选择链接</a>
                                </span>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="form-group-label col-sm-2 text-right">
                </div>
                <div class="col-sm-6" style="max-width: 360px">
                    <a class="btn btn-primary auto-form-btn" href="javascript:">保存</a>
                </div>
            </div>
        </form>
    </div>
</div>
