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
  .orderback2{border-bottom:1px solid #E9E9E9;margin-bottom: 10px;padding-bottom: 10px;}
  .orderback3{margin-bottom: 10px;padding-bottom: 10px;}
  .orderback2>div>p{margin-bottom: 5px;}
  .orderdish{margin-bottom: 10px;height: 15px;width: 100%;}
  .orderdish>div{float: left;margin-right: 50px;}    
  .orderbox1,.orderdish1{width: 250px;}
  .orderdish>div:nth-child(2){width: 80px;}
  .orderdish>div:nth-child(3){width: 80px;}
  .orderbox2,.orderdish>div:nth-child(4){width: 80px;}
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
  .ordersucess{background-color: #44ABF7;color: white;}
  .ordersucess:hover{background-color: #44ABF7;color: white;}
  .ortypeimg{position: absolute;left: 27%;top:53%;z-index: 10;opacity: 0.2;width: 150px;height: 150px;}
  .ortypeimg>img{width: 100%;height: 100%;}
  .ortypeimg2{position: absolute;left: 27%;top:53%;z-index: 10;opacity: 0.4;width: 150px;height: 150px;}
  .ortypeimg2>img{width: 100%;height: 100%;}
  .orderwu{text-align: center;padding: 20px 0px;}
  .wufont1{font-size: 18px;color: #666;margin-top: 20px;}
   .orderconfirm2{color: #fff;padding: 3px 10px;border-radius: 6px;margin-right: 10px;font-size: 12px;margin-top: 5px;background-color: #44ABF7;}
  .orfontyue1{text-indent: 4em;}
  .storespan2{font-size: 14px;color: white;margin: 5px;position: relative;background-color: #FF7F50;}
  .storespan2:hover{color: #fff;}
  .storespan2:hover .bianji{display: block;}
</style>
<ul class="nav nav-tabs">
  <span class="ygxian"></span>
  <div class="ygdangq">当前位置:</div> 
  <li  <?php  if($type=='all') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('dnorder',array('type'=>all));?>">全部订单</a></li>
  <li   <?php  if($type=='wait') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('dnorder',array('type'=>wait));?>">待支付</a></li> 
  <li   <?php  if($type=='complete') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('dnorder',array('type'=>complete));?>">已完成</a></li> 
  <li   <?php  if($type=='close') { ?> class="active" <?php  } ?>><a href="<?php  echo $this->createWebUrl('dnorder',array('type'=>close));?>">已关闭</a></li> 

</ul>

<div class="row ygrow">
  <div class="col-lg-12">
    <form action="" method="get" class="col-md-4">
      <input type="hidden" name="c" value="site" />
      <input type="hidden" name="a" value="entry" />
      <input type="hidden" name="m" value="zh_dianc" />
      <input type="hidden" name="do" value="dnorder" />
      <div class="input-group" style="width: 300px">
        <input type="text" name="keywords" class="form-control" placeholder="请输入订单编号/门店名称">
        <span class="input-group-btn">
          <input type="submit" class="btn btn-default" name="submit" value="查找"/>
        </span>
      </div>
      <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
    </form>
    <form action="" method="get" class="col-md-4">
      <input type="hidden" name="c" value="site" />
      <input type="hidden" name="a" value="entry" />
      <input type="hidden" name="m" value="zh_dianc" />
      <input type="hidden" name="do" value="dnorder" />
      <div class="input-group" style="width: 100px">
        <?php  echo tpl_form_field_daterange('time');?>
        <span class="input-group-btn">
          <input type="submit" class="btn btn-default" name="submit2" value="查找"/>
          <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        </span>
      </div><!-- /input-group -->
    </form>
    <form action="" method="POST" class="col-md-4">
      <div class="col-md-12">

        <input type="submit" class="btn btn-sm ordersucess" name="export_submit" value="导出"/>
        <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
        <a href="javascript:void(0);" class="storespan2 btn btn-sm" data-toggle="modal" data-target="#myModals">
            <span class="fa fa-trash-o"></span>&nbsp;删除订单
            <span class="bianji" style="left: -15px;">删除全部已关闭订单
                <span class="arrowdown"></span>
            </span>                            
        </a>
        <div class="modal fade" id="myModals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel" style="font-size: 20px;">提示</h4>
                  </div>
                  <div class="modal-body" style="font-size: 20px">
                      确定要删除全部已关闭订单么？
                  </div>
                  <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                  <a href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'sc'));?>" type="button" class="btn btn-info" >确定</a>
                </div>
              </div>
          </div>
      </div>
      </div>
    </form>
  </div><!-- /.col-lg-6 -->
</div> 
<div class="main ordermain">
  <div class="row">

    <div class="col-md-8">
      <?php  if(!$data3) { ?>
      <div class="panel panel-default">
        <div class="orderwu">
          <img src="../addons/zh_dianc/template/images/noorder.png">
          <p class="wufont1">暂无指定订单</p>
          <p class="orfont10">暂时没有筛选条件的订单，稍后再来看看吧！</p>
        </div>
      </div>
      <?php  } ?>

      <?php  if(is_array($data3)) { foreach($data3 as $key => $item) { ?>
      <div class="panel panel-default">
        <div class="panel-body" style="padding: 0px 15px;">
          <div class="row" style="position: relative;">
            <?php  if($item['order']['dn_state']==1) { ?>
            <div class="ortypeimg">
              <img src="../addons/zh_dianc/template/images/daizhifu.png">
            </div>
            <?php  } else { ?>
            <div class="ortypeimg2">
              <img src="../addons/zh_dianc/template/images/yizhifu.png">
            </div>
            <?php  } ?>
            <div class="col-md-12 orderback">
              <div class="left">
                <span class="orfont1 orfont8">#<?php  echo $item['order']['id'];?></span>
                <a href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'dy','id'=>$item['order']['id']));?>"> <button class="btn btn-xs orderbtn">打印小票</button></a>
              </div>
              <?php  if($item['order']['dn_state']==1) { ?>
              <a onclick="if(!confirm('确定收到付款')) return false;" " href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'receivables','id'=>$item['order']['id']));?>"><div class="right orderconfirm">确认收款</div></a>
              <a onclick="if(!confirm('确定关闭订单')) return false;" " href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'close','id'=>$item['order']['id'],table_id=>$item['order']['table_id']));?>"><div class="right orderconfirm">关闭订单</div></a>
              <?php  } else if($item['order']['dn_state']==2&&$item['order']['t_status']!=0) { ?>
              <a onclick="if(!confirm('确定是否重新开台')) return false;" href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'open','id'=>$item['order']['table_id']));?>"><div class="right orderconfirm">重新开台</div></a>
              <?php  } ?>
              <?php  if($item['order']['dn_state']==1) { ?>
              <div class="right orderconfirm2">待支付</div>
              <?php  } else if($item['order']['dn_state']==2) { ?>
              <div class="right orderconfirm2">已完成</div>
              <?php  } else if($item['order']['dn_state']==3) { ?>
              <div class="right orderconfirm2">已关闭</div>
              <?php  } else if($item['order']['dn_state']==4) { ?>
              <div class="right orderconfirm2">已评价</div>
              <?php  } ?>
            </div>
            <div class="col-md-12 orderback2">
              <div class="ordername">
                <div class="left ordername1"><?php  echo $item['order']['name'];?>--<?php  echo $item['order']['tablename'];?> &nbsp;&nbsp;<span class="orfont4">#<?php  echo $item['order']['md_name'];?></span></div>
                <a href="<?php  echo $this->createWebUrl('dnorderinfo',array('id'=>$item['order']['id']));?>"><div class="right btn btn-sm btn-default" style="border:none;">查看详情</div></a>
              </div>
            </div>
            <div class="col-md-12 orderback2">
              <p><span class="orbeizhu">备注：</span><?php  if($item['order']['note']) { ?><?php  echo $item['order']['note'];?><?php  } else { ?>无<?php  } ?></p>
            </div>
            <div class="col-md-12 orderback2">
              <p class="orfont3">商品信息</p>
              <?php  if(is_array($item['goods'])) { foreach($item['goods'] as $item2) { ?>
              <div class="orderdish">
                <div class="left orderdish1"><?php  echo $item2['name'];?></div>
                <div class="left">¥<?php  echo $item2['money'];?></div>
                <div class="left">×<?php  echo $item2['num'];?></div>
                <div class="left">¥<?php  echo number_format($item2['num']*$item2['money'],2)?></div>
              </div>
              <?php  } } ?>
            </div>
            <div class="col-md-12 orderback2">
              <p class="orfont3">小计</p>                        
              <div class="orderaccount">
                <div class="orderbox1 left">优惠金额</div>
                <div class="orderbox2 left">¥<?php  echo number_format($item['order']['preferential'],2)?></div>
              </div>
              <div class="orderaccount">
                <div class="orderbox1 left">支付方式</div>
                <div class="orderbox2 left"><?php  if($item['order']['is_yue']==1) { ?>余额支付<?php  } else if($item['order']['is_yue']==2) { ?>微信支付<?php  } else if($item['order']['is_yue']==3) { ?>积分支付<?php  } else { ?>餐后支付<?php  } ?></div>
              </div>                      
            </div>
            <div class="col-md-12 orderback2">
              <div class="orderaccount orfont7">
                <div class="orderbox1 left">本单预计收入</div>
                <?php  if($item['order']['md_poundage']) { ?>
                <div class="orderbox2 left">¥<?php  echo number_format($item['order']['money']-($item['order']['md_poundage']/100*$item['order']['money']),2)?></div>
                <?php  } else { ?>
                <div class="orderbox2 left">¥<?php  echo number_format($item['order']['money']-($item['order']['poundage']/100*$item['order']['money']),2)?></div>
                <?php  } ?>
              </div>
              <div class="orderaccount orfont6">
                本单顾客实际支付：¥<?php  echo $item['order']['money'];?>
              </div>                     
            </div>
            <div class="col-md-12 orderback3">
              <div class="right orfont10">
                <span class="ordertime">下单时间：<?php  echo $item['order']['time'];?></span>
                订单编号：<?php  echo $item['order']['order_num'];?>
              </div>
            </div>

          </div>
        </div>
      </div>
      <?php  } } ?>
    </div>


   <div class="col-md-4">
        <div class="panel panel-default">
            <div class="panel-heading dlorfont7">今日店内订单</div>
            <div class="panel-body" style="padding: 15px;font-size: 16px;">                
                <p>已完成订单量：<span class="dlorfont7"><?php  echo $dn2;?></span>单</p>
                <!-- <p>营业额：<span class="dlorfont7"><?php  if($dn['total']) { ?><?php  echo $dn['total'];?><?php  } else { ?>0.00<?php  } ?></span>元</p> -->
                <p>营业额：</p>
                <p>微信完成<span class="dlorfont7"><?php  echo $wxdn2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($wx['total']) { ?><?php  echo $wx['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
                <p>余额完成<span class="dlorfont7"><?php  echo $yuedn2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($yue['total']) { ?><?php  echo $yue['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
                <p>
                    积分完成<span class="dlorfont7"><?php  echo $jfdn2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($jf['total']) { ?><?php  echo $jf['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading dlorfont7">昨日店内订单</div>
            <div class="panel-body" style="padding: 15px;font-size: 16px;">                
                <p>已完成订单量：<span class="dlorfont7"><?php  echo $ztdn2;?></span>单</p>
                <!-- <p>营业额：<span class="dlorfont7"><?php  if($ztdn['total']) { ?><?php  echo $ztdn['total'];?><?php  } else { ?>0.00<?php  } ?></span>元</p> -->
                <p>营业额：</p>
                <p>微信完成<span class="dlorfont7"><?php  echo $ztwxdn2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($ztwx['total']) { ?><?php  echo $ztwx['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
                <p>余额完成<span class="dlorfont7"><?php  echo $ztyuedn2;?></span>单，收入
                    <span class="dlorfont7">¥&nbsp;<?php  if($ztyue['total']) { ?><?php  echo $ztyue['total'];?><?php  } else { ?>0.00<?php  } ?></span>元
                </p>
                <p>积分完成<span class="dlorfont7"><?php  echo $ztjfdn2;?></span>单，收入
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
              <td class="col-md-1">下单时间</td>
              <td class="col-md-1">桌台号</td>
              <td class="col-md-1">桌台类型</td>
              <td class="col-md-1">金额</td>
              <td class="col-md-1">状态</td>
              <td class="col-md-1">查看</td>
              <td class="col-md-2">操作</td>
          </tr>

          <?php  if(is_array($list)) { foreach($list as $key => $item) { ?>
    <tr  class="yg5_tr2">
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
      <?php  echo $item['time'];?>
      </td>
      <td >
     <?php  echo $item['name'];?>
      </td>
       <td >
     <?php  echo $item['tablename'];?>
      </td>
      <td>
      <?php  echo $item['money'];?>
      </td>
      <?php  if($item['dn_state']==1) { ?>
      <td >
      <span class="label label-danger"> 待支付</span>
     
      </td >
      <?php  } else if($item['dn_state']==2) { ?>
      <td >
      <span class="label label-success">已完成</span>
     
      </td>
       </td >
      <?php  } else if($item['dn_state']==3) { ?>
      <td >
      <span class="label label-default">已关闭</span>
       <?php  } else if($item['dn_state']==4) { ?>
      <td >
      <span class="label label-info">已评价</span>
     
      </td>
       <?php  } ?> 
       <td>
       <a  class="btn btn-success btn-sm" href="<?php  echo $this->createWebUrl('dnorderinfo',array('id'=>$item['id']));?>">查看</a>
     
      </td>
      <td>
       <?php  if($item['dn_state']==1) { ?>
       <a onclick="if(!confirm('确定收到付款')) return false;" " href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'receivables','id'=>$item['id']));?>"><span class="label label-success">确认收款</span></a>
       <a onclick="if(!confirm('确定关闭订单')) return false;" " href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'close','id'=>$item['id'],table_id=>$item['table_id']));?>"><span class="label label-warning">关闭订单</span></a>
         <?php  } else if($item['dn_state']==2&&$item['t_status']!=0) { ?>
    <a onclick="if(!confirm('确定是否重新开台')) return false;" href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'open','id'=>$item['table_id']));?>"><span class="label label-success">重新开台</span></a>
    <a  href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'dy','id'=>$item['id']));?>"><span class="label label-danger">打印小票</span></a>
        <?php  } else if($item['dn_state']==2&&$item['t_status']==0) { ?>
         <span class="label label-info">已开台</span>                    
         <a  href="<?php  echo $this->createWebUrl('dnorder',array('op'=>'dy','id'=>$item['id']));?>"><span class="label label-danger">打印小票</span></a>
       <?php  } else if($item['dn_state']==3) { ?>
      <span class="label label-default">已关闭</span> 
       <?php  } else if($item['dn_state']==4) { ?>
      <span class="label label-info">已评价</span> 
         <?php  } ?> 
      </td>
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
                <a href="<?php  echo $this->createWebUrl('dnorder', array('op' => 'delete', 'id' => $item['id']))?>" type="button" class="btn btn-info" >确定</a>
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
  <script type="text/javascript">
    $(function(){
        // $("#frame-1").addClass("in");
        $("#frame-1").show();
        $("#yframe-1").addClass("wyactive");
      })
    </script>
