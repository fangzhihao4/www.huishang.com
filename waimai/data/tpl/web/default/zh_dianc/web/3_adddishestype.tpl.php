<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_dianc/template/public/ygcss.css">
<style type="text/css">
    input[type="radio"] + label::before {
        content: "\a0"; /*不换行空格*/
        display: inline-block;
        vertical-align: middle;
        font-size: 16px;
        width: 1em;
        height: 1em;
        margin-right: .4em;
        border-radius: 50%;
        border: 2px solid #ddd;
        text-indent: .15em;
        line-height: 1; 
    }
    input[type="radio"]:checked + label::before {
        background-color: #44ABF7;
        background-clip: content-box;
        padding: .1em;
        border: 2px solid #44ABF7;
    }
    input[type="radio"] {
        position: absolute;
        clip: rect(0, 0, 0, 0);
    }
</style>
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li><a href="<?php  echo $this->createWebUrl('dishestype')?>">分类列表</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('adddishestype')?>">添加分类</a></li>
</ul>
<div class="main">
  <div class="panel panel-default ygdefault">

        <div class="panel-heading wyheader">添加/编辑分类</div>

        <div class="panel-body">

<form class="form-horizontal" action="" method="POST">



  <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">分类名称</label>

    <div class="col-sm-10">

      <input type="text"  name="type_name" value="<?php  echo $list['type_name'];?>" class="form-control" id="inputEmail3" placeholder="请填写分类名称">

    </div>

  </div>
  <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">排序序号</label>

    <div class="col-sm-10">

      <input type="number"  name="order_by" value="<?php  echo $list['order_by'];?>" class="form-control" id="inputEmail3" placeholder="请填写排序序号">
      <span class="help-block">*数字越小越靠前</span>
    </div>

  </div>
  <div class="form-group">
      <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否显示</label>
      <div class="col-sm-9">
            <label class="radio-inline">
                <input type="radio" id="emailwy1" name="is_open" value="1" <?php  if($info['is_open']==1 || empty($info['is_open'])) { ?>checked<?php  } ?> />
                <label for="emailwy1">显示</label>
            </label>
            <label class="radio-inline">
                <input type="radio" id="emailwy2" name="is_open" value="2" <?php  if($info['is_open']==2) { ?>checked<?php  } ?> />
                <label for="emailwy2">不显示</label>
            </label>
        </div>
  </div>

    <div class="form-group">
          <input type="submit" name="submit" value="提交" class="btn col-lg-3 col-lg-offset-3" style="color: white;background-color: #44ABF7;"/>
          <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
          <input type="hidden" name="id" value="<?php  echo $info['id'];?>" />
      </div>
   <input type="hidden" name="id" value="<?php  echo $list['id'];?>"/>

  <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>

</form>

</div>
</div>
</div>
<script type="text/javascript">
    $(function(){
        // $("#frame-2").addClass("in");
        $("#frame-2").show();
        $("#yframe-2").addClass("wyactive");
    })
</script>