<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="../addons/zh_dianc/template/public/ygcsslist.css">
<style type="text/css">
    .ygrow{margin-top: 20px;}
    .yg5_key>div{float: left;line-height: 34px;}
    .store_td1{height: 45px;}
    .store_list_img{width: 60px;height: 60px;}
    .yg5_tabel{border-color: #e5e5e5;outline: 1px solid #e5e5e5;}
    .yg5_tr2>td{padding: 15px;border: 1px solid #e5e5e5;text-align: center;}
    .yg5_tr1>td{
        border: 1px solid #e5e5e5;
        padding-left: 15px;
        background-color: #FAFAFA;
        font-weight: bold;
        text-align: center;
    }
    .yg5_btn{background-color: #EEEEEE;color: #333;border: 1px solid #E4E4E4;border-radius: 6px;width: 100px;height: 34px;}
    .orfont1{font-weight: bold;font-size: 24px;}
    .orfont2{color: #F5B340;font-size: 16px;margin-left: 15px;}
    .orderback{background-color: #FAFAFA;height: 50px;margin-bottom: 15px;padding: 10px;}
    .ordermain{font-size: 14px;width: 100%;}
    .orfont3{font-size: 20px;font-weight: bold;}
    .orfont4{font-size: 12px;color: #999;}
    .orderconfirm{border:1px solid #44ABF7;color: #44ABF7;padding: 5px 15px;border-radius: 6px;cursor: pointer;margin-right: 10px;}
    .orderconfirm:hover{background-color: #44ABF7;color: white;}
    .orderquxiao{border:1px solid #ddd;color: #666;padding: 5px 15px;border-radius: 6px;cursor: pointer;margin-right: 10px;}
    .orderquxiao:hover{background-color: #eee;color: #999;}
    .orderback2{border-bottom:1px solid #E9E9E9;margin-bottom: 10px;padding-bottom: 10px;}
    .orderback3{margin-bottom: 10px;padding-bottom: 10px;}
    .orderback2>div>p{margin-bottom: 5px;}
    .orderdish{margin-bottom: 10px;height: 15px;width: 100%;}
    .orderdish>div{float: left;margin-right: 50px;}    
    .orderbox1,.orderdish1{width: 200px;}
    .orderdish>div:nth-child(2){width: 80px;}
    .orderdish>div:nth-child(3){width: 80px;}
    .orderbox2,.orderdish>div:nth-child(4){width: 200px;}
    .orderbox2{margin-left: 310px;}
    .orderaccount{width: 100%;height: 25px;}
    .orfont5{color: #44ABF7;font-size: 14px;}
    .orfont6{font-size: 12px;color: #666;}
    .orfont7{font-weight: bold;font-size: 15px;}
    .dlorfont7{font-size: 18px;color: #44ABF7;}
    .orfont8{color: #44ABF7;}
    .orfont9{color: #666;}
    .orderpanel1{width: 50%;display: inline-block;}
    .orderpanel2{width: 30%;display: inline-block;margin-left: 30px;}
    .ordertelimg{width: 20px;height: 20px;}
    .ordertelimg1{color: #44ABF7;font-size: 14px;}
    .ordername{font-size: 20px;font-weight: bold;height: 30px;width: 100%;margin-bottom: 5px;}
    .orbeizhu{color: #FF7712;}
    .ordertime{margin-right: 10px;}
    .orfont10{color: #999;}
    .orderbtn{border: #FF7F50 1px solid;color: #FF7F50;background-color: #fff;margin-top: -10px;}
    .orderbtn:hover{background-color: #FF7F50;color: white;}
    .ortypeimg{position: absolute;left: 27%;top:53%;z-index: 10;opacity: 0.2;width: 150px;height: 150px;}
    .ortypeimg>img{width: 100%;height: 100%;}
    .ortypeimg2{position: absolute;left: 27%;top:53%;z-index: 10;opacity: 0.4;width: 150px;height: 150px;}
    .ortypeimg2>img{width: 100%;height: 100%;}
    .orderwu{text-align: center;padding: 20px 0px;}
    .wufont1{font-size: 18px;color: #666;margin-top: 20px;}
    .orderconfirm2{color: #fff;padding: 3px 10px;border-radius: 6px;margin-right: 10px;font-size: 12px;margin-top: 5px;background-color: #44ABF7;}
    .orfontyue1{text-indent: 4em;}
</style>
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>  
  <li  <?php  if($type=='all') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('ydorder',array('type'=>all));?>">全部订单</a></li>
  <li   <?php  if($type=='wait') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('ydorder',array('type'=>wait));?>">待确认</a></li> 
  <li   <?php  if($type=='complete') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('ydorder',array('type'=>complete));?>">已确认</a></li> 
 <!--  <li   <?php  if($type=='reject') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('ydorder',array('type'=>reject));?>">已拒绝</a></li>  -->
  <li   <?php  if($type=='cancel') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('ydorder',array('type'=>cancel));?>">取消/退款</a></li> 

</ul>

   <div class="row ygrow">
    <div class="col-lg-12">
        <form action="" method="POST" class="col-md-6">
            <div class="input-group" style="width: 300px">
                <input type="text" name="keywords" class="form-control" placeholder="请输入姓名/订单编号">
                <span class="input-group-btn">
                    <input type="submit" class="btn btn-default" name="submit" value="查找"/>
                </span>
            </div>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </form>
        <form action="" method="POST" class="col-md-6">
            <div class="input-group" style="width: 100px">
                <?php  echo tpl_form_field_daterange('time');?>
                <span class="input-group-btn">
                    <input type="submit" class="btn btn-default" name="submit2" value="查找"/>
                    <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
                </span>
            </div><!-- /input-group -->
        </form>
    </div><!-- /.col-lg-6 -->
</div> 
<div class="main ordermain">
<div class="row">
    <div class="col-md-8">
    <?php  if(!$list) { ?>
        <div class="panel panel-default">
            <div class="orderwu">
                <img src="../addons/zh_dianc/template/images/noorder.png">
                <p class="wufont1">暂无指定订单</p>
                <p class="orfont10">暂时没有筛选条件的订单，稍后再来看看吧！</p>
            </div>
        </div>
    <?php  } ?>
    <?php  if(is_array($list)) { foreach($list as $item) { ?>
        <div class="panel panel-default">
            <div class="panel-body" style="padding: 0px 15px;">
                <div class="row" style="position: relative;">
                    <div class="col-md-12 orderback">
                        <div class="left">
                            <span class="orfont1 orfont8">#<?php  echo $item['id'];?></span>
                            <!-- <button class="btn btn-xs orderbtn orfont11">打印小票</button> -->
                        </div>  
                                       
                        <?php  if($item['state']==1) { ?>
                        <div class="right orderconfirm" data-toggle="modal" data-target="#myModalb<?php  echo $item['id'];?>">确认订单</div>
                        <?php  } else if($item['state']==5) { ?>
                         <div class="right orderconfirm" data-toggle="modal" data-target="#myModalc<?php  echo $item['id'];?>">通过退款</div>
                          <div class="right orderconfirm" data-toggle="modal" data-target="#myModald<?php  echo $item['id'];?>">拒绝退款</div>
                          <?php  } ?>
                          <?php  if($item['state']==1) { ?>
                          <div class="right orderconfirm2">待确认</div>
                          <?php  } else if($item['state']==2) { ?>
                          <div class="right orderconfirm2">已确认</div>
                          <?php  } else if($item['state']==4) { ?>
                          <div class="right orderconfirm2">已取消</div>
                          <?php  } else if($item['state']==5) { ?>
                          <div class="right orderconfirm2">待退款</div>
                          <?php  } else if($item['state']==6) { ?>
                          <div class="right orderconfirm2">已退款</div>
                          <?php  } else if($item['state']==7) { ?>
                          <div class="right orderconfirm2">退款拒绝</div>
                          <?php  } ?>
                    </div>
                    <div class="col-md-12 orderback2">
                        <div class="ordername">
                            <div class="left ordername1"><?php  echo $item['link_name'];?> &nbsp;&nbsp;<span class="orfont4">#<?php  echo $item['md_name'];?></span></div>
                            <a href="<?php  echo $this->createWebUrl('ydorderinfo',array('id'=>$item['id']));?>"><div class="right btn btn-sm btn-default" style="border:none;">查看详情</div></a>
                        </div>
                        <div class="">
                            <div class="left orfont9"><?php  echo $item['table_type_name'];?></div>
                            <div class="right ordertelimg1">
                                <img src="../addons/zh_dianc/template/images/ordertel.png" class="ordertelimg">
                                <span><?php  echo $item['link_tel'];?></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 orderback2">
                        <p><span class="orbeizhu">备注：</span><?php  if($item['remark']) { ?><?php  echo $item['remark'];?><?php  } else { ?>无<?php  } ?></p>
                    </div>
                    <div class="col-md-12 orderback2">
                        <p class="orfont3">预计到店时间</p>
                        <div class="orderaccount">
                            <div class="orderbox1 left">预计到店时间</div>
                            <div class="orderbox2 left"><?php  echo $item['xz_date'];?>  <?php  echo $item['yjdd_date'];?></div>
                        </div>
                         <div class="orderaccount">
                            <div class="orderbox1 left">预计到店人数</div>
                            <div class="orderbox2 left"><?php  echo $item['jc_num'];?>人</div>
                        </div>               
                    </div>
                    <div class="col-md-12 orderback2">
                        <p class="orfont3">押金</p>
                        <?php  if($item['pay_money']>0) { ?>
                        <div class="orderaccount">
                            <div class="orderbox1 left">支付方式</div>
                            <?php  if($item['is_yue']==1) { ?>
                            <div class="orderbox2 left">余额支付</div>
                            <?php  } else if($item['is_yue']==2) { ?>
                            <div class="orderbox2 left">微信支付</div>
                            <?php  } else if($item['is_yue']==3) { ?>
                            <div class="orderbox2 left">积分支付</div>
                            <?php  } ?>
                        </div>
                        <?php  } ?>
                        <div class="orderaccount">
                            <div class="orderbox1 left">押金</div>
                            <div class="orderbox2 left">¥<?php  if($item['pay_money']) { ?><?php  echo $item['pay_money'];?><?php  } else { ?>0.00<?php  } ?></div>
                        </div>
                                            
                    </div>
                    <div class="col-md-12 orderback2">
                        <div class="orderaccount orfont7">
                            <div class="orderbox1 left">本单预计收入</div>
                            <?php  if($item['md_poundage']) { ?>
                            <div class="orderbox2 left">¥<?php  echo number_format($item['pay_money']-($item['md_poundage']/100*$item['pay_money']),2)?></div>
                            <?php  } else { ?>
                            <div class="orderbox2 left">¥<?php  echo number_format($item['pay_money']-($item['poundage']/100*$item['pay_money']),2)?></div>
                            <?php  } ?>
                        </div>
                        <div class="orderaccount orfont6">
                            本单顾客实际支付：¥<?php  if($item['pay_money']) { ?><?php  echo $item['pay_money'];?><?php  } else { ?>0.00<?php  } ?> <span class="orfont5"></span>
                        </div>                     
                    </div>
                    <div class="col-md-12 orderback3">
                        <div class="right orfont10">
                        <span class="ordertime">下单时间：<?php  echo $item['created_time'];?></span>
                        订单编号：<?php  echo $item['order_num'];?>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="modal fade" id="myModalb<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            是否要确认订单？
                        </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('ydorder',array('op'=>'ok','id'=>$item['id']));?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModalc<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            是否要确认退款？
                        </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('ydorder',array('op'=>'tg','id'=>$item['id']));?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModald<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            是否要拒绝退款？
                        </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('ydorder',array('op'=>'jj','id'=>$item['id']));?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
        <?php  } } ?>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default">
            <div class="panel-heading dlorfont7">今日预订订单</div>
            <div class="panel-body" style="padding: 15px;font-size: 16px;">                
                <p>已完成订单量：<span class="dlorfont7"><?php  echo $yd2;?></span>单</p>
                <!-- <p>营业额：<span class="dlorfont7"><?php  if($yd['total']) { ?><?php  echo $yd['total'];?><?php  } else { ?>0.00<?php  } ?></span>元</p> -->
                <p>营业额：</p>
                <p>微信完成<span class="dlorfont7"><?php  echo $wxyd2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($wx['total']) { ?><?php  echo $wx['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
                <p>余额完成<span class="dlorfont7"><?php  echo $yueyd2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($yue['total']) { ?><?php  echo $yue['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
                <p>
                    积分完成<span class="dlorfont7"><?php  echo $jfyd2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($jf['total']) { ?><?php  echo $jf['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading dlorfont7">昨日预订订单</div>
            <div class="panel-body" style="padding: 15px;font-size: 16px;">                
                <p>已完成订单量：<span class="dlorfont7"><?php  echo $ztyd2;?></span>单</p>
                <!-- <p>营业额：<span class="dlorfont7"><?php  if($ztyd['total']) { ?><?php  echo $ztyd['total'];?><?php  } else { ?>0.00<?php  } ?></span>元</p> -->
                <p>营业额：</p>
                <p>微信完成<span class="dlorfont7"><?php  echo $ztwxyd2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($ztwx['total']) { ?><?php  echo $ztwx['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
                <p>余额完成<span class="dlorfont7"><?php  echo $ztyueyd2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($ztyue['total']) { ?><?php  echo $ztyue['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
                <p>积分完成<span class="dlorfont7"><?php  echo $ztjfyd2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($ztjf['total']) { ?><?php  echo $ztjf['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
            </div>
        </div>        
    </div>
</div>
</div>
<div class="text-right we7-margin-top"><?php  echo $pager;?></div>

    <!-- <table class="yg5_tabel col-md-12">
        <tr class="yg5_tr1">
            <td class="store_td1 col-md-1">id</td>
             <td class="store_td1 col-md-1">所属门店</td>
            <td class="col-md-1">订单号</td>
            <td class="col-md-1">预计到店时间</td>
            <td class="col-md-1">桌位类型</td>
            <td class="col-md-1">联系人</td>
            <td class="col-md-1">联系电话</td>
            <td class="col-md-1">押金</td>
            <td class="col-md-1">状态</td>
            <td class="col-md-1">查看</td>
            <td class="col-md-2">操作</td>
        </tr>

<?php  if(is_array($list)) { foreach($list as $key => $item) { ?>
              <tr class="yg5_tr2">
              <td >
                <?php  echo $item['id'];?>
                </td>
                <td >
                <?php  echo $item['md_name'];?>
                </td>
                <td >
                <?php  echo $item['order_num'];?>
                </td>
                <td >
                <?php  echo $item['xz_date'];?>  <?php  echo $item['yjdd_date'];?>
                </td>
                <td >
                <?php  echo $item['table_type_name'];?>
                </td>
                <td >
               <?php  echo $item['link_name'];?>
                </td>
                <td>
                <?php  echo $item['link_tel'];?>
                </td>
                <td>
                <?php  echo $item['pay_money'];?>
                </td>
                <?php  if($item['state']==1) { ?>
                <td >
                <span class="label label-danger"> 待确认</span>
               
                </td >
                <?php  } else if($item['state']==2) { ?>
                <td >
                <span class="label label-success">已确认</span>
               
                </td>
                 <?php  } else if($item['state']==3) { ?>
                <td >
                <span class="label label-warning">已拒绝</span>
               
                </td>
                 <?php  } else if($item['state']==4) { ?>
                <td >
                <span class="label label-default">已取消</span>
                </td>
                <?php  } else if($item['state']==5) { ?>
                <td >
                <span class="label label-default">申请退款</span>
                </td>
                <?php  } else if($item['state']==6) { ?>
                <td >
                <span class="label label-success">已退款</span>
                </td>
                <?php  } else if($item['state']==7) { ?>
                <td >
                <span class="label label-default">退款拒绝</span>
                </td>
                 <?php  } ?> 
                 <td>
                 <a class="btn btn-success btn-sm" href="<?php  echo $this->createWebUrl('ydorderinfo',array('id'=>$item['id']));?>">查看</a>
                </td>
                <?php  if($item['state']==1) { ?>
                <td style="width: 105px;">

                 <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModalb<?php  echo $item['id'];?>">确认订单</button>

               </td> 
               <?php  } else if($item['state']==5) { ?>
                <td style="width: 105px;">
                 <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModalc<?php  echo $item['id'];?>">确认退款</button>
                  <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#myModald<?php  echo $item['id'];?>">拒绝退款</button>
               </td>
                <?php  } else { ?>
                <td>
                <span class="label label-info">已操作</span>

                </td>
                <?php  } ?> 
               
              </tr>
              <div class="modal fade" id="myModal<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                            <a href="<?php  echo $this->createWebUrl('ydorder', array('op' => 'delete', 'id' => $item['id']))?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModalb<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            是否要确认订单？
                        </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('ydorder',array('op'=>'ok','id'=>$item['id']));?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModalc<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            是否要确认退款？
                        </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('ydorder',array('op'=>'tg','id'=>$item['id']));?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModald<?php  echo $item['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                        </div>
                        <div class="modal-body" style="font-size: 20px">
                            是否要拒绝退款？
                        </div>
                        <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <a href="<?php  echo $this->createWebUrl('ydorder',array('op'=>'jj','id'=>$item['id']));?>" type="button" class="btn btn-info" >确定</a>
                        </div>
                    </div>
                </div>
            </div>
              <?php  } } ?>
              <?php  if(empty($list)) { ?>
             <tr class="yg5_tr2">
                <td colspan="9">
                  暂无订单信息
                </td>
              </tr>
             
              <?php  } ?>
                </table> -->
<!--                   <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal<?php  echo $item['id'];?>">删除</button> -->
               <!--  <a onclick="if(!confirm('确定拒绝订单')) return false;" href="<?php  echo $this->createWebUrl('rejectyd',array('id'=>$item['id']));?>"><span class="label label-warning">拒绝订单</span></a>-->
               <!--                  <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModal<?php  echo $item['id'];?>">删除</button> -->
<script type="text/javascript">
    $(function(){
        // $("#frame-1").addClass("in");
        $("#frame-1").show();
        $("#yframe-1").addClass("wyactive");
    })
</script>