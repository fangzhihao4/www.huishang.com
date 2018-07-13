<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_dianc/template/public/ygcss.css">
<style type="text/css">
    .ygmargin{margin-top: 10px;color: #999;}
</style>
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li><a href="<?php  echo $this->createWebUrl('storetype')?>">门店类型管理</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('addstoretype')?>">添加门店类型</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                内容编辑
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">类型名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="type_name" class="form-control" value="<?php  echo $info['type_name'];?>" />
                    </div>
                </div>
               <!--  <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">简介</label>
                    <div class="col-sm-9">
                        <input type="text" name="mark" class="form-control" value="<?php  echo $info['mark'];?>" />
                    </div>
                </div> -->
                <!-- <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">链接</label>
                    <div class="col-sm-9">
                        <input type="text" name="link" class="form-control" value="<?php  echo $info['link'];?>" />
                    </div>
                </div> -->
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">图标</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_image('img', $info['img'])?>
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-xs-12 col-sm-3 col-md-2 control-label">平台手续费</label>
                  <div class="col-sm-9">
                        <p class="input-group">
                             <input type="text" onkeyup="value=value.replace(/[^\d.]/g,'')" name="poundage" value="<?php  echo $info['poundage'];?>" id="points" class="form-control" />
                             <span class="input-group-addon">%</span>
                        </p>
                        <div class="ygmargin">*分类下商户收取该分类对应的手续费</div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-xs-12 col-sm-3 col-md-2 control-label">一级佣金</label>
                  <div class="col-sm-9">
                        <p class="input-group">
                             <input type="text" onkeyup="value=value.replace(/[^\d.]/g,'')" name="commission" value="<?php  echo $info['commission'];?>" id="points" class="form-control" />
                             <span class="input-group-addon">%</span>
                        </p>
                        <div class="ygmargin">*一级下线消费时,分销商可获得佣金比例</div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-xs-12 col-sm-3 col-md-2 control-label">二级佣金</label>
                  <div class="col-sm-9">
                        <p class="input-group">
                             <input type="text" onkeyup="value=value.replace(/[^\d.]/g,'')" name="commission2" value="<?php  echo $info['commission2'];?>" id="points" class="form-control" />
                             <span class="input-group-addon">%</span>
                        </p>
                        <div class="ygmargin">*二级下线消费时,分销商可获得佣金比例</div>
                  </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
                    <div class="col-sm-9">
                        <input type="number" name="num" class="form-control" value="<?php  echo $info['num'];?>" />
                        <div class="ygmargin">*从小到大排序</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <input type="submit" name="submit" value="提交" class="btn col-lg-3" style="color: white;background-color: #44ABF7;"/>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $info['id'];?>" />
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        // $("#frame-4").addClass("in");
        $("#frame-4").show();
        $("#yframe-4").addClass("wyactive");
    })
</script>