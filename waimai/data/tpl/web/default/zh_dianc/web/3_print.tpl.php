<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_dianc/template/public/ygcsslist.css">
<style type="text/css">
    .yg5_key>div{float: left;line-height: 34px;}
    .store_td1{height: 45px;}
    .store_list_img{width: 60px;height: 60px;}
    .yg5_tabel{border-color: #e5e5e5;outline: 1px solid #e5e5e5;}
    .yg5_tr2>td{padding: 10px 15px;border: 1px solid #e5e5e5;text-align: center;}
    .yg5_tr1>th{
        border: 1px solid #e5e5e5;
        padding-left: 15px;
        background-color: #FAFAFA;
        font-weight: bold;
        text-align: center;
    }
    .yg5_btn{background-color: #EEEEEE;color: #333;border: 1px solid #E4E4E4;border-radius: 6px;width: 100px;height: 34px;}
</style>
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li class="active"><a href="<?php  echo $this->createWebUrl('print')?>">打印设备管理</a></li>
    <li><a href="<?php  echo $this->createWebUrl('addprint')?>">添加打印机</a></li>
</ul>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-heading">
            打印设备管理
        </div>
        <div class="panel-body" style="padding: 0px 15px;">
            <div class="row">
                <table class="yg5_tabel col-md-12">
                    <tr class="yg5_tr1">
                        <th class="col-md-2 store_td1">打印机名称</th>
                        <th class="col-md-2">打印机类型</th>
                        <th class="col-md-2">打印机位置</th>
                        <th class="col-md-1">状态</th>
                        <th class="col-md-2">操作</th>
                    </tr>
                    <?php  if(is_array($list)) { foreach($list as $row) { ?>
                    <tr class="yg5_tr2">
                        <td><div class="type-parent"><?php  echo $row['name'];?>&nbsp;&nbsp;</div></td>
                        <td><?php  if($row['type']==1) { ?>365<?php  } else if($row['type']==2) { ?>易联云<?php  } else if($row['type']==3) { ?>飞鹅<?php  } ?></td>
                        <td><?php  if($row['location']==1) { ?>前台<?php  } else if($row['location']==2) { ?>后厨<?php  } ?></td>
                        <?php  if($row['state']==1) { ?>
                        <td><span class="btn btn-xs storeblue">启用</span></td>
                        <?php  } else if($row['state']==2) { ?>
                        <td><span class="btn btn-xs storegrey">禁用</span></td>
                        <?php  } ?>
                        <td>
                            <a href="<?php  echo $this->createWebUrl('addprint', array('id' => $row['id']))?>" class="storespan btn btn-xs">
                                <span class="fa fa-pencil"></span>
                                <span class="bianji">编辑
                                    <span class="arrowdown"></span>
                                </span>
                            
                            </a>
                            <a href="javascript:void(0);" class="storespan btn btn-xs" data-toggle="modal" data-target="#myModal<?php  echo $row['id'];?>">
                                <span class="fa fa-trash-o"></span>
                                <span class="bianji">删除
                                    <span class="arrowdown"></span>
                                </span>
                            </a>
                            <!-- <a class="btn btn-warning btn-sm" href="<?php  echo $this->createWebUrl('addprint', array('id' => $row['id']))?>" title="编辑">改</a>&nbsp;&nbsp;<button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal<?php  echo $row['id'];?>">删</button> -->
                        </td>
                    </tr>
                     <div class="modal fade" id="myModal<?php  echo $row['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                                </div>
                                <div class="modal-body" style="font-size: 20px">
                                    确定删除么？
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                        <a href="<?php  echo $this->createWebUrl('print', array('op' => 'delete', 'id' => $row['id']))?>" type="button" class="btn btn-info" >确定</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php  } } ?>
                   
                   <?php  if(empty($list)) { ?>
                    <tr class="yg5_tr2">
                        <td colspan="11">
                          暂无打印机信息
                        </td>
                    </tr>
                    <?php  } ?> 
                </table>
            </div>
        </form>
    </div>
    <?php  echo $pager;?>
</div>
<script type="text/javascript">
    $(function(){
        // $("#frame-8").addClass("in");
        $("#frame-8").show();
        $("#yframe-8").addClass("wyactive");
    })
</script>