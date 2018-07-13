<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_dianc/template/public/ygcss.css">
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li class="active"><a href="javascript:void(0);">提现设置</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <!--<input type="hidden" name="parentid" value="<?php  echo $parent['id'];?>" />-->
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                商户提现设置
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label for="lastname" class="col-sm-2 control-label">提现方式</label>
                    <div class="col-sm-10">
                        <label class="checkbox-inline">
                        <?php  if($item['is_zfb']==1) { ?>  
                        <input type="checkbox" name="is_zfb" id="optionsRadios3" value="1" checked> 支付宝
                        <?php  } else { ?>
                        <input type="checkbox" name="is_zfb" id="optionsRadios3" value="1" > 支付宝
                        <?php  } ?>
                        </label>
                        <label class="checkbox-inline">
                            <?php  if($item['is_yhk']==1) { ?>  
                            <input type="checkbox" name="is_yhk" id="optionsRadios4"  value="1" checked> 银行卡
                              <?php  } else { ?>
                               <input type="checkbox" name="is_yhk" id="optionsRadios4"  value="1" > 银行卡
                               <?php  } ?>
                        </label>
                        <label class="checkbox-inline">
                           <?php  if($item['is_wx']==1) { ?>  
                            <input type="checkbox" name="is_wx" id="optionsRadios4"  value="1" checked> 微信
                             <?php  } else { ?>
                                <input type="checkbox" name="is_wx" id="optionsRadios4"  value="1"> 微信
                                 <?php  } ?>
                        </label>
                        <div class="help-block">*注意：不勾选则关闭此提现方式</div>
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-xs-12 col-sm-3 col-md-2 control-label">最低提现金额</label>
                    <div class="col-sm-9">
                        <p class="input-group">
                             <input type="text" name="tx_money" value="<?php  echo $item['tx_money'];?>" id="points" class="form-control" />
                             <span class="input-group-addon">元</span>
                        </p>
                        <div class="help-block">*最低提现金额不能小于1元，建议填写整数，不填写为不限制</div>
                 </div>
                </div>

                
                <div class="form-group">
                  <label class="col-xs-12 col-sm-3 col-md-2 control-label">提现须知</label>
                  <div class="col-sm-9">
                       <?php  echo tpl_ueditor('tx_details',$item['tx_details']);?>
                  </div>
                </div>
      

             </div>
        </div>
        <div class="form-group">
            <input type="submit" name="submit" value="提交" class="btn col-sm-3" style="color: white;background-color: #44ABF7;"/>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
             <input type="hidden" name="id" value="<?php  echo $item['id'];?>" />
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        // $("#frame-13").addClass("in");
        $("#frame-13").show();
        $("#yframe-13").addClass("wyactive");
    })
</script>