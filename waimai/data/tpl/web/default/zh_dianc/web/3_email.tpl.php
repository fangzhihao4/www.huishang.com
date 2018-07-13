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
    .ygmargin{margin-top: 10px;color: #999;}
</style>
<ul class="nav nav-tabs">
    <span class="ygxian"></span>
    <div class="ygdangq">当前位置:</div>    
    <li class="active"><a href="javascript:void(0);">邮件通知</a></li>
</ul>
<div class="main">
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data" id="invitative">
        <div class="panel panel-default ygdefault">
            <div class="panel-heading wyheader">
                邮件通知
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否开启邮件</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" id="emailwy" name="is_email" value="1" <?php  if($info['is_email']==1 || empty($info['is_email'])) { ?>checked<?php  } ?> />
                            <label for="emailwy">开启</label>
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailwy2" name="is_email" value="2" <?php  if($info['is_email']==2) { ?>checked<?php  } ?> />
                            <label for="emailwy2">关闭</label>
                        </label>    

                    </div>

                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">SMTP服务器</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" id="emailwy3" name="type" value="163" <?php  if($info['type']=='163' || empty($info['type'])) { ?>checked<?php  } ?> />
                            <label for="emailwy3">网易邮箱服务器</label>
                        </label>
                        <label class="radio-inline">
                            <input type="radio" id="emailwy4" name="type" value="qq" <?php  if($info['type']=='qq') { ?>checked<?php  } ?> />
                            <label for="emailwy4">qq邮箱服务器</label>
                        </label>    

                    </div>

                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">发送帐号用户名</label>
                    <div class="col-sm-10">
                        <input type="text"  name="username" value="<?php  echo $info['username'];?>" id="web_name" class="form-control" />
                         <div class="ygmargin">*指定发送邮件的用户名，例如：test@163.com</div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">smtp客户端授权密码</label>
                    <div class="col-sm-10">
                        <input type="text"  name="password" value="<?php  echo $info['password'];?>" id="web_name" class="form-control" />
                         <div class="ygmargin">*指定发送邮件的密码，QQ邮箱此处为授权码， <a target="_blank" href="http://service.mail.qq.com/cgi-bin/help?subtype=1&&id=28&&no=1001256" style="color: red">查看授权码获取方法</a></div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">发件人名称</label>
                    <div class="col-sm-10">
                        <input type="text"  name="sender" value="<?php  echo $info['sender'];?>" id="web_name" class="form-control" />
                         <div class="ygmargin">*指定发送邮件发信人名称</div>
                    </div>
                </div>
                 <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">邮件签名</label>
                    <div class="col-sm-10">
                        <input type="text"  name="signature" value="<?php  echo $info['signature'];?>" id="web_name" class="form-control" />
                        <div class="ygmargin"> *指定邮件末尾添加的签名信息</div>
                    </div>
                </div>

            </div>
        </div>
        
        <div class="form-group">
            <input type="submit" name="submit" value="保存设置" class="btn col-lg-3" style="color: white;background-color: #44ABF7;" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
            <input type="hidden" name="id" value="<?php  echo $info['id'];?>" />
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function(){
        // $("#frame-14").addClass("in");
        $("#frame-14").show();
        $("#yframe-14").addClass("wyactive");
    })
</script>