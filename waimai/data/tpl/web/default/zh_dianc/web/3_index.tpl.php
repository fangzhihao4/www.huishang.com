<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<style type="text/css">
    .yg9_content{padding:0px;font-size: 12px;}
    .yg9_content>li{padding-left: 0px;margin-top: 15px;}
    .yg9_content>li:nth-child(2)>.col-md-12{
        border:1px solid #eee;
    }
    .gkfour,.gkthree{
        padding: 8px 0px;
        border:1px solid #eee;
    }
    .gkfour{margin-top: 10px;}
    .gkbackimg,.backimg{text-align: center;}
    .backimg>img{
        width: 40px;
        height: 40px;
        margin-top: 17px;
    }
    .gkbackimg>img{
        width: 40px;
        height: 40px;
        margin-top: 17px;
    }
    .datanum{line-height: 23px;}
    .datanum2{line-height: 35px;font-size: 16px;text-align: center;}
    .datanum3{padding: 15px 15px 0px;border:1px solid #eee;}
    .tmoney{font-size: 26px;text-align: center;}
    .today{font-size: 14px;text-align: center;cursor: pointer;}    
    .todaybox2,.todaybox3,.todaybox4,.todaybox1{position: absolute;left: -10%;top: -22px;z-index: 10;width: 200px;height: 65px;padding: 10px;
        background-color: rgba(0,0,0,0.7);border-radius: 6px;color: white;font-size: 12px;text-indent: 1em;display: none;}
    .arrow-down{width: 0;height: 0;border-bottom: 10px solid rgba(0,0,0,0.7);  border-left: 10px solid transparent;transform: rotate(45deg);
        position: absolute;left: 50%;top: 60px;
    }
    .gkborder{margin-top: 15px;}
    .gkborder2{margin-top: 16px;}
    .gkborder2,.gkborder{border-top: 1px solid #eee;padding: 20px 0px;border-bottom-right-radius: 6px;border-bottom-left-radius: 6px;}
    .gkborder>li{padding: 10px 5px 10px 5px;text-align: center;}
    .gkborder2>li{padding: 9px 5px;text-align: center;}
    .gkborder2>li:nth-child(3),.gkborder2>li:nth-child(1),.gkborder>li:nth-child(1){border-right: 1px solid #eee;}
    .gkborder2>li:nth-child(2),.gkborder>li:nth-child(2){border-right: 1px solid #eee;}
    .gkfont1{line-height: 30px;font-weight: bold;}
    .gkfont2{line-height: 30px;font-size: 12px;}
    .gktitle{padding-left: 30px;font-size: 12px;}
    .ygxian{width: 3px;height: 17px;float:left;background-color: #44ABF7;margin-top: 6px;border:none;}
       

    .list_one{padding-right: 30px;}
    .list_one>li{
      width: 100%;
      height: 54px;
      border-bottom: 1px solid #E5E5E5;
      color: #666666;
      padding-top: 25px;
      padding-left: 20px;
      padding-right: 20px;
    }
    .list_one>li>div:nth-child(1){float: left;}
    .list_one>li>div:nth-child(2){float: right;}
    .list_one_num{color: #ff6161;}
    .yg9_quie{
      padding: 0px 100px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      -webkit-align-items: center;
      -webkit-justify-content: space-between;
    }
    .yg9_quie>li{
      font-size: 14px;
      color: #666666;
      font-weight: bold;
      text-align: center;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      -webkit-flex-direction: column;
      -webkit-align-items: center;
      -webkit-align-items: center;
    }
    .yg9_quie>a>li>p{margin-top: 9px;text-align: center;}
    .yg9_quie>a>li>img{height: 72px;width: 72px;}
    .content_seller{
          margin-top: 20px;
          height: 230px;
        }
      .content_seller_left{
          height: 200px;          
      }
      .seller_red{color: #ff6161;font-size: 20px;}
      .seller_text{margin-top: 15px;}
      .content_seller_ul{
          padding: 40px 30px 0px;
      }
      .content_seller_ul>li{
          float: left;
          text-align: center;
      }
      .content_thing_title{
          height: 45px;
          background-color: #F3F3F3;
          font-weight: bold;
          color: #333;
          line-height: 45px;
          text-indent: 2em;
          border-bottom: 1px solid #E5E5E5;
      }
      .yg9_left{
        height: 200px;
        border: 1px solid #E5E5E5;
        background-color: white;
      }
</style>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-1 gkfont2">销售盘点</div>
                    <form method="post">
                    <div class="col-md-4">
                        <div class="input-group" style="width: 100px">
                            <?php  echo tpl_form_field_daterange('time',array(),true);?>
                            <span class="input-group-btn">
                                <input type="submit" class="btn btn-default" name="submit" value="查找"/>
                            </span>
                        </div>
                    </div>
                     <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
                    </form>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <ul class="col-md-12 yg9_content" style="margin-bottom: 10px;">
                <li class="col-md-4">
                    <div class="col-md-12 datanum3">
                        <!-- <div class="col"></div> -->
                        <div class="col-md-6 backimg">
                            <img src="../addons/zh_dianc/template/images/money1.png">
                        </div>
                        <div class="col-md-6 datanum2" style="padding: 0px;">
                            <div>今日完成订单</div>
                            <div><?php  echo $ordernum;?></div>
                        </div>
                    
                        <ul class="col-md-12 gkborder2">
                            <li class="col-md-3">
                                <div>外卖订单数</div>
                                <div class="gkbold"><?php  echo count($wmres)?></div>
                            </li>
                            <li class="col-md-3">
                                <div>店内订单数</div>
                                <div class="gkbold"><?php  echo count($dnres)?></div>
                            </li>
                            <li class="col-md-3">
                                <div>预定订单数</div>
                                <div class="gkbold"><?php  echo count($ydres)?></div>
                            </li>
                            <li class="col-md-3">
                                <div>当面订单数</div>
                                <div class="gkbold"><?php  echo count($dmres)?></div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="col-md-12 datanum3">
                        <div class="col-md-6 backimg">
                            <img src="../addons/zh_dianc/template/images/money5.png">
                        </div>
                        <div class="col-md-6 datanum2" style="padding: 0px;">
                            <div>今日销售总额</div>
                            <div>¥&nbsp;<?php  if($total) { ?><?php  echo $total;?><?php  } else { ?>0.00<?php  } ?></div>
                        </div>
                    
                        <ul class="col-md-12 gkborder">
                            <li class="col-md-4">
                                <div>微信支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($wxtotal) { ?><?php  echo $wxtotal;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>余额支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($yuetotal) { ?><?php  echo $yuetotal;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>积分支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($jftotal) { ?><?php  echo $jftotal;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="col-md-12 datanum3">
                        <div class="col-md-6 backimg">
                            <img src="../addons/zh_dianc/template/images/money3.png">
                        </div>
                        <div class="col-md-6 datanum2" style="padding: 0px;">
                            <div>昨日销售总额</div>
                            <div>¥&nbsp;<?php  if($total2) { ?><?php  echo $total2;?><?php  } else { ?>0.00<?php  } ?></div>
                        </div>
                    
                        <ul class="col-md-12 gkborder">
                            <li class="col-md-4">
                                <div>微信支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($wxtotal2) { ?><?php  echo $wxtotal2;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>余额支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($yuetotal2) { ?><?php  echo $yuetotal2;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>积分支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($jftotal2) { ?><?php  echo $jftotal2;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="col-md-12 datanum3">
                        <div class="col-md-6 backimg">
                            <img src="../addons/zh_dianc/template/images/money4.png">
                        </div>
                        <div class="col-md-6 datanum2" style="padding: 0px;">
                            <div>七天销售总额</div>
                            <div>¥&nbsp;<?php  if($total3) { ?><?php  echo $total3;?><?php  } else { ?>0.00<?php  } ?></div>
                        </div>
                    
                        <ul class="col-md-12 gkborder">
                            <li class="col-md-4">
                                <div>微信支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($wxtotal3) { ?><?php  echo $wxtotal3;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>余额支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($yuetotal3) { ?><?php  echo $yuetotal3;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>积分支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($jftotal3) { ?><?php  echo $jftotal3;?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>        
        <!-- <ul class="col-md-12 yg9_content" style="margin-bottom: 10px;">
            <li class="col-md-3" >
              <div class="col-md-12 yg9_li">
                  <div class="content_img">
                      <img class="img-responsive" src="../addons/zh_dianc/template/images/money1.png" alt=""/>
                  </div>
                  <div class="content_text">
                      <div>今日订单统计</div>
                      <div><?php  echo $ordernum;?></div>
                  </div>
              </div>
            </li>
            <li class="col-md-3">
              <div class="col-md-12 yg9_li">
                  <div class="content_img">
                      <img src="../addons/zh_dianc/template/images/money5.png" alt=""/>
                  </div>
                  <div class="content_text">
                      <div>今日销售总额</div>
                      <div>¥<?php  if($total) { ?><?php  echo $total;?><?php  } else { ?>0.00<?php  } ?></div>
                  </div>
                </div>
            </li>
            <li class="col-md-3">
                <div class="col-md-12 yg9_li">
                    <div class="content_img">
                        <img src="../addons/zh_dianc/template/images/money3.png" alt=""/>
                    </div>
                    <div class="content_text">
                        <div>昨日销售总额</div>
                        <div>¥<?php  if($total2) { ?><?php  echo $total2;?><?php  } else { ?>0.00<?php  } ?></div>
                    </div>
                </div>
            </li>
            <li class="col-md-3">
                <div class="col-md-12 yg9_li">
                    <div class="content_img">
                        <img src="../addons/zh_dianc/template/images/money4.png" alt=""/>
                    </div>
                    <div class="content_text">
                        <div>近7天销售总额</div>
                        <div>¥<?php  if($total3) { ?><?php  echo $total3;?><?php  } else { ?>0.00<?php  } ?></div>
                    </div>
                </div>
            </li>

        </ul>

         <ul class="col-md-12 yg9_content">
            <li class="col-md-3">
              <div class="col-md-12 yg9_li">
                  <div class="content_img">
                      <img class="img-responsive" src="../addons/zh_dianc/template/images/money9.png" alt=""/>
                  </div>
                  <div class="content_text">
                      <div>今日外卖销售总额</div>
                      <div>¥<?php  if($wm['total']) { ?><?php  echo $wm['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                  </div>
              </div>
            </li>
            <li class="col-md-3">
              <div class="col-md-12 yg9_li">
                  <div class="content_img">
                      <img src="../addons/zh_dianc/template/images/money7.png" alt=""/>
                  </div>
                  <div class="content_text">
                      <div>今日店内销售总额</div>
                      <div>¥<?php  if($dn['total']) { ?><?php  echo $dn['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                  </div>
                </div>
            </li>
            <li class="col-md-3">
                <div class="col-md-12 yg9_li">
                    <div class="content_img">
                        <img src="../addons/zh_dianc/template/images/money8.png" alt=""/>
                    </div>
                    <div class="content_text">
                        <div>今日预约销售总额</div>
                        <div>¥<?php  if($yd['total']) { ?><?php  echo $yd['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                    </div>
                </div>
            </li>
            <li class="col-md-3">
                <div class="col-md-12 yg9_li">
                    <div class="content_img">
                        <img src="../addons/zh_dianc/template/images/money6.png" alt=""/>
                    </div>
                    <div class="content_text">
                        <div>今日当面付销售总额</div>
                        <div>¥<?php  if($dmf['total']) { ?><?php  echo $dmf['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                    </div>
                </div>
            </li>
            
        </ul> -->
        </div>        
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-1 gkfont2">销售盘点</div>
                 <!--    <div class="col-md-4">
                        <div class="input-group" style="width: 100px">
                            <?php  echo tpl_form_field_daterange('time',array(),true);?>
                            <span class="input-group-btn">
                                <input type="submit" class="btn btn-default" name="submit2" value="查找"/>
                            </span>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
        <div class="panel-body">
            <ul class="col-md-12 yg9_content" style="margin-bottom: 10px;">
                <li class="col-md-4">
                    <div class="col-md-12 datanum3">
                        <div class="col-md-6 backimg">
                            <img src="../addons/zh_dianc/template/images/money9.png">
                        </div>
                        <div class="col-md-6 datanum2" style="padding: 0px;">
                            <div>今日外卖销售总额</div>
                            <div>¥&nbsp;<?php  if($wm['total']) { ?><?php  echo $wm['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                        </div>
                    
                        <ul class="col-md-12 gkborder">
                            <li class="col-md-4">
                                <div>微信支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($wxwm['total']) { ?><?php  echo $wxwm['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>余额支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($yuewm['total']) { ?><?php  echo $yuewm['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>积分支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($jfwm['total']) { ?><?php  echo $jfwm['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="col-md-12 datanum3">
                        <div class="col-md-6 backimg">
                            <img src="../addons/zh_dianc/template/images/money7.png">
                        </div>
                        <div class="col-md-6 datanum2" style="padding: 0px;">
                            <div>今日店内销售总额</div>
                            <div>¥&nbsp;<?php  if($dn['total']) { ?><?php  echo $dn['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                        </div>
                    
                        <ul class="col-md-12 gkborder">
                            <li class="col-md-4">
                                <div>微信支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($wxdn['total']) { ?><?php  echo $wxdn['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>余额支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($yuedn['total']) { ?><?php  echo $yuedn['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>积分支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($jfdn['total']) { ?><?php  echo $jfdn['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="col-md-12 datanum3">
                        <div class="col-md-6 backimg">
                            <img src="../addons/zh_dianc/template/images/money8.png">
                        </div>
                        <div class="col-md-6 datanum2" style="padding: 0px;">
                            <div>今日预约销售总额</div>
                            <div>¥&nbsp;<?php  if($yd['total']) { ?><?php  echo $yd['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                        </div>
                    
                        <ul class="col-md-12 gkborder">
                            <li class="col-md-4">
                                <div>微信支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($wxyd['total']) { ?><?php  echo $wxyd['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>余额支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($yueyd['total']) { ?><?php  echo $yueyd['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>积分支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($jfyd['total']) { ?><?php  echo $jfyd['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="col-md-4">
                    <div class="col-md-12 datanum3">
                        <div class="col-md-6 backimg">
                            <img src="../addons/zh_dianc/template/images/money6.png">
                        </div>
                        <div class="col-md-6 datanum2" style="padding: 0px;">
                            <div>今日当面付销售总额</div>
                            <div>¥&nbsp;<?php  if($dmf['total']) { ?><?php  echo $dmf['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                        </div>
                    
                        <ul class="col-md-12 gkborder">
                            <li class="col-md-4">
                                <div>微信支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($wxdmf['total']) { ?><?php  echo $wxdmf['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>余额支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($yuedmf['total']) { ?><?php  echo $yuedmf['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                            <li class="col-md-4">
                                <div>积分支付收入</div>
                                <div class="gkbold">¥&nbsp;<?php  if($jfdmf['total']) { ?><?php  echo $jfdmf['total'];?><?php  } else { ?>0.00<?php  } ?></div>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">待处理的事物</div>
            <div class="panel-body">  
                <div class="col-md-12 yg9_thing">
                    <ul class="col-md-4 list_one">
                        <li>
                            <div>待接单的外卖订单</div>
                            <div>(<a href="<?php  echo $this->createWebUrl('inorder',array('type'=>now));?>"><span class="list_one_num"><?php  echo $sql6;?></span></a>)</div>
                        </li>
                        <li>
                            <div>待付款的店内订单</div>
                            <div>(<a href="<?php  echo $this->createWebUrl('indnorder',array('type'=>wait));?>"><span class="list_one_num"><?php  echo $sql8;?><span class="list_one_num"></a>)</div>
                        </li>
                        <li>
                            <div>待审核的预定订单</div>
                            <div>(<a href="<?php  echo $this->createWebUrl('inydorder',array('type'=>wait));?>"><span class="list_one_num"><?php  echo $sql9;?></span></a>)</div>
                        </li>
                    </ul>
                    <ul class="col-md-4 list_one">
                        <li>
                            <div>待送达的外卖订单</div>
                            <div>(<a href="<?php  echo $this->createWebUrl('inorder',array('type'=>delivery));?>"><span class="list_one_num"><?php  echo $sql7;?></span></a>)</div>
                        </li>
                        <li>
                            <div>已开台的桌子</div>
                            <div>(<a href="<?php  echo $this->createWebUrl('table2');?>"><span class="list_one_num"><?php  echo $sql11;?></span></a>)</div>
                        </li>
                       <!--  <li>
                            <div>待付款的订单</div>
                            <div>(<span class="list_one_num">10</span>)</div>
                        </li> -->
                    </ul>
                    <ul class="col-md-4 list_one">
                        <li>
                            <div>完成的外卖订单</div>
                            <div>(<a href="<?php  echo $this->createWebUrl('inorder',array('type'=>complete));?>"><span class="list_one_num"><?php  echo $sql10;?></span></a>)</div>
                        </li>
                        <li>
                            <div>未开台的桌子</div>
                            <div>(<a href="<?php  echo $this->createWebUrl('table2');?>"><span class="list_one_num"><?php  echo $sql12;?></span></a>)</div>
                        </li>
                        <!-- <li>
                            <div>待付款的订单</div>
                            <div>(<span class="list_one_num">10</span>)</div>
                        </li> -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 待处理的事物 -->
    <div class="panel panel-default">
        <div class="panel-heading">运营快捷入口</div>
        <div class="panel-body">
          <ul class="col-md-12 yg9_quie">
          <a href="<?php  echo $this->createWebUrl('adddishes');?>">
            <li class="">
              <img src="../addons/zh_dianc/template/images/zu.png">
              <p>添加商品</p>
            </li>
            </a>
<!--             <li class="col-md-1">
              <img src="../addons/zh_dianc/template/images/xiaoshou.png">
              <div>菜品管理</div>
            </li> -->
             <a href="<?php  echo $this->createWebUrl('inorder');?>">
            <li class="">
              <img src="../addons/zh_dianc/template/images/dingdan.png">
              <p>订单列表</p>
            </li>
             </a>
              <a href="<?php  echo $this->createWebUrl('table2');?>">
            <li class="">
              <img src="../addons/zh_dianc/template/images/duanxin.png">
              <p>餐桌管理</p>
            </li>
            </a>
            <a href="<?php  echo $this->createWebUrl('ygquan');?>">
            <li class="">
              <img src="../addons/zh_dianc/template/images/yuanxing.png">
              <p>营销管理</p>
            </li>
            </a>
             <a href="<?php  echo $this->createWebUrl('print');?>">
            <li class="">
              <img src="../addons/zh_dianc/template/images/miaosha.png">
              <p>打印管理</p>
            </li>
            </a>
             <a href="<?php  echo $this->createWebUrl('storeinfo');?>">
            <li class="">
              <img src="../addons/zh_dianc/template/images/tuijian.png">
              <p>门店信息</p>
            </li>
            </a>
          </ul>
        </div>
    </div>
    <!-- 运营快捷入口结束 -->
    <!-- 商品总览 -->
    <!-- 待处理的事物 -->
    <div class="content_seller col-md-12" style="padding: 0px;">
            <div class="content_seller_left col-md-6" style="padding-right: 20px;padding-left: 0px;">
                <div class="yg9_left">
                    <div class="content_thing_title">外卖菜品总览</div>
                    <ul class="content_seller_ul">
                        <li class="col-md-3">
                            <div class="seller_red"><?php  echo $sql13;?></div>
                            <div class="seller_text">已上架</div>
                        </li>
                        <li class="col-md-3">
                            <div class="seller_red"><?php  echo $sql14;?></div>
                            <div class="seller_text">已下架</div>
                        </li>
                       <!--  <li class="col-md-3">
                            <div class="seller_red">100</div>
                            <div class="seller_text">已下架</div>
                        </li>
                        <li class="col-md-3">
                            <div class="seller_red">100</div>
                            <div class="seller_text">已下架</div>
                        </li> -->
                    </ul>
                </div>
            </div>
            <div class="content_seller_left col-md-6" style="padding: 0px;">
                <div class="yg9_left">
                    <div class="content_thing_title">店内菜品总览</div>
                    <ul class="content_seller_ul col-md-12">
                        <li class="col-md-3">
                            <div class="seller_red"><?php  echo $sql15;?></div>
                            <div class="seller_text">已上架</div>
                        </li>
                        <li class="col-md-3">
                            <div class="seller_red"><?php  echo $sql16;?></div>
                            <div class="seller_text">已下架</div>
                        </li>
                       <!--  <li class="col-md-3">
                            <div class="seller_red">100</div>
                            <div class="seller_text">已下架</div>
                        </li>
                        <li class="col-md-3">
                            <div class="seller_red">100</div>
                            <div class="seller_text">已下架</div>
                        </li> -->
                    </ul>
                </div>
            </div>
        </div>
 </div>

<script type="text/javascript">
    $(function(){
        // $("#frame-0").addClass("in");
        $("#frame-0").show();
        $("#yframe-0").addClass("wyactive");
    })
</script>