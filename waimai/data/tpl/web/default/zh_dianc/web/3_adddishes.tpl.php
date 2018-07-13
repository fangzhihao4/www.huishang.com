<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_dianc/template/public/ygcss.css">
<ul class="nav nav-tabs">
<style type="text/css">
</style>
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li><a href="<?php  echo $this->createWebUrl('dishes2')?>">商品管理</a></li>
    <li class="active"><a href="<?php  echo $this->createWebUrl('adddishes')?>">添加商品</a></li>
</ul>
<div class="main">
  <div class="panel panel-default ygdefault">

        <div class="panel-heading wyheader">添加/编辑商品</div>

        <div class="panel-body">

<form class="form-horizontal" action="" method="POST">

  <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">排序</label>

    <div class="col-sm-10">

      <input type="number"  name="sorting" value="<?php  echo $list['sorting'];?>" class="form-control" id="inputEmail3" placeholder="请填写排序">
        <span class="help-block">*从小到大排序</span>
    </div>

  </div>
  <div class="form-group">
      <label for="inputEmail3" class="col-sm-2 control-label">商品名称</label>
      <div class="col-sm-10">
          <input type="text"  name="name" value="<?php  echo $list['name'];?>" class="form-control" id="inputEmail3" placeholder="请填写商品名称">
      </div>
  </div>  
  <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">商品图片</label>

    <div class="col-sm-10">

       <?php  echo tpl_form_field_image('img',$list['img']);?> 
      <span class="help-block">*建议图片尺寸大小:100*100</span>
    </div>

  </div>

 <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">商品库存</label>

    <div class="col-sm-10">

      <input type="text"  name="num" value="<?php  echo $list['num'];?>" class="form-control" id="inputEmail3" placeholder="请填写商品库存">

    </div>

  </div>

   <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">店内商品价格</label>

    <div class="col-sm-5">
        <div class="input-group">
          <input type="text" onkeyup="value=value.replace(/[^\d.]/g,'')" name="money" value="<?php  echo $list['money'];?>" class="form-control" id="inputEmail3" placeholder="请填写商品价格">
          <span class="input-group-addon">元</span>
      </div>
    </div>

  </div>
  <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">外卖商品价格</label>

    <div class="col-sm-5">
      <div class="input-group">
          <input type="text" onkeyup="value=value.replace(/[^\d.]/g,'')" name="wm_money" value="<?php  echo $list['wm_money'];?>" class="form-control" id="inputEmail3" placeholder="请填写商品价格">
          <span class="input-group-addon">元</span>
      </div>
    </div>

  </div>

   <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">设置月销售数量</label>

    <div class="col-sm-10">

      <input type="text"  name="sit_ys_num" value="<?php  echo $list['sit_ys_num'];?>" class="form-control" id="inputEmail3" placeholder="请填写设置月销售数量">

    </div>

  </div>
 
   <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">商品分类</label>

    <div class="col-sm-10">

       <select class="form-control" name="type_id"> 
    <?php  if(is_array($type)) { foreach($type as $key => $item) { ?>
       <?php  if($item['id']==$list['type_id']) { ?>
      <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['type_name'];?></option>
      <?php  } else { ?>
      <option value="<?php  echo $item['id'];?>" ><?php  echo $item['type_name'];?></option>
      <?php  } ?>
     <?php  } } ?>
    </select>

    </div>

  </div>

  <div class="form-group">

                <label for="inputEmail3" class="col-sm-2 control-label">商品选项</label>
                <div class="col-sm-10">
                    <select class="form-control" name="dishes_type">
                        <?php  if($list['dishes_type']==2) { ?>
                        <option value="2" selected="selected">店内商品</option>
                        <option value="1">外卖商品</option>
                          <option value="3">店内+外卖</option>
                        <?php  } else if($list['dishes_type']==1) { ?>
                        <option value="2">店内商品</option>
                        <option value="1" selected="selected">外卖商品</option>
                         <option value="3">店内+外卖</option>
                         <?php  } else if($list['dishes_type']==3) { ?>
                          <option value="2">店内商品</option>
                        <option value="1" >外卖商品</option>
                         <option value="3" selected="selected">店内+外卖</option>
                        <?php  } else { ?>
                        <option value="2">店内商品</option>
                        <option value="1">外卖商品</option>
                         <option value="3">店内+外卖</option>
                        <?php  } ?>
                    </select>
                </div>
            </div>


 <div class="form-group">

    <label for="inputEmail3" class="col-sm-2 control-label">设置餐盒费</label>

    <div class="col-sm-10">

      <input type="text" onkeyup="value=value.replace(/[^\d.]/g,'')" name="box_fee" value="<?php  echo $list['box_fee'];?>" class="form-control" id="inputEmail3" placeholder="请填写餐盒费,店内商品设置0元">

    </div>

  </div>


  <div class="form-group">

                <label for="inputEmail3" class="col-sm-2 control-label">招牌</label>
                <div class="col-sm-10">
                    <select class="form-control" name="signature">
                        <?php  if($list['signature']==1) { ?>
                        <option value="1" selected="selected">是</option>
                        <option value="2">否</option>
                        <?php  } else if($list['signature']==2) { ?>
                        <option value="1">是</option>
                        <option value="2" selected="selected">否</option>
                        <?php  } else { ?>
                        <option value="1">是</option>
                        <option value="2">否</option>
                        <?php  } ?>
                    </select>
                </div>
            </div>

<div class="form-group">

                <label for="inputEmail3" class="col-sm-2 control-label">是否上架</label>
                <div class="col-sm-10">
                    <select class="form-control" name="is_shelves">
                        <?php  if($list['is_shelves']==1) { ?>
                        <option value="1" selected="selected">是</option>
                        <option value="2">否</option>
                        <?php  } else if($list['is_shelves']==2) { ?>
                        <option value="1">是</option>
                        <option value="2" selected="selected">否</option>
                        <?php  } else { ?>
                        <option value="1">是</option>
                        <option value="2">否</option>
                        <?php  } ?>
                    </select>
                </div>
            </div>

   <div class="form-group">
      <label for="inputEmail3" class="col-sm-2 control-label">描述</label>
      <div class="col-sm-10">
          <?php  echo tpl_ueditor('details',$list['details']);?>
      </div>
  </div>

  <div class="form-group">

        <div class="form-group">
            <input type="submit" name="submit" value="提交" class="btn col-lg-3 col-lg-offset-3" style="color: white;background-color: #44ABF7;"/>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $list['id'];?>" />
        </div>

  </div>

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