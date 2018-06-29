<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<div class="welcome-system-home" ng-controller="systemWelcomeCtrl" ng-cloak>
	<div class="user">
		<div class="media media-middle">
			<div class="media-left media-middle">
				<img class="media-object logo" src="<?php  echo $user_info['avatar'];?>" alt="">
			</div>
			<div class="media-body  media-middle">
				<div class="name">
					<?php  echo $_W['username'];?>
				</div>
				<div class="last-time">
					上次登录时间：<?php  echo date('Y-m-d H:i:s', $_W['user']['lastvisit']);?>
				</div>
			</div>
			<div class="media-right media-middle">
				<div class="right">
					设置登录显示页面
					<i class="wi wi-info" data-container=".welcome-system-home" data-trigger=" click" data-toggle="popover" data-placement="bottom" data-html="true" data-content="设置登录后，用户显示的页面。在我的账号-用户欢迎页设置里边更改设置"></i>
					<span> <i class="wi wi-help"></i> 帮助系统</span>
				</div>
			</div>
		</div>
	</div>
	<div class="panel we7-panel ">
		<div class="panel-heading">
			我的创建
		</div>
		<div class="panel-body we7-padding-vertical create">
			<div class="col-sm-3 text-center create-item">
				<div class="head">可创建公众号</div>
				<div class="num">{{account_num.maxaccount}}</div>
				<div class="has">已创建  {{account_num.uniacid_num}} | <a href="<?php  echo url('account/post-step')?>" class="color-default">去创建 ></a></div>
			</div>
			<div class="col-sm-3 text-center create-item">
				<div class="head">可创建小程序</div>
				<div class="num">{{account_num.maxwxapp}}</div>
				<div class="has">已创建  {{account_num.wxapp_num}} | <a href="<?php  echo url('wxapp/post/design_method')?>" class="color-default">去创建 ></a></div>
			</div>
			<div class="col-sm-3 text-center create-item">
				<div class="head">可创建PC</div>
				<div class="num">{{account_num.maxwebapp}}</div>
				<div class="has">已创建  {{account_num.webapp_num}} | <a href="<?php  echo url('webapp/manage/create_display')?>" class="color-default">去创建 ></a></div>
			</div>
			<div class="col-sm-3 text-center create-item">
				<div class="head">可创建APP</div>
				<div class="num">{{account_num.maxphoneapp}}</div>
				<div class="has">已创建  {{account_num.phoneapp_num}} | <a href="<?php  echo url('phoneapp/manage/create_display')?>" class="color-default">去创建 ></a></div>
			</div>
		</div>
	</div>
	<div class="panel we7-panel ">
		<div class="panel-heading">
			常用系统功能
			<a href="" class="pull-right color-default">设置常用功能</a>
		</div>
		<div class="panel-body app">
			<div class="app-item" ng-repeat="list in last_accounts_modules">
				<div class="content">
					<img ng-src="{{list.account.logo}}" alt="" class="app-item-logo">
					<div class="app-item-footer">
						<div class="type" ng-if="list.account.type ==1 || list.account.type==3"><i class="wi wi-wechat"></i></div>
						<div class="type" ng-if="list.account.type == 4 || list.account.type == 7"><i class="wi wi-wxapp"></i></div>
						<div class="type" ng-if="list.account.type == 5"><i class="wi wi-pc"></i></div>
						<div class="type" ng-if="list.account.type == 6"><i class="wi wi-wxapp"></i></div>
						<div class="type" ng-if="!list.account.type"><i class="wi wi-wxapp"></i></div>
						<div class="info">
							<div class="name text-over">
								{{list.account.name}}
							</div>
							<div class="version text-over" ng-if="list.account.type ==1 || list.account.type==3">类型：公众号</div>
							<div class="version text-over" ng-if="list.account.type == 4 || list.account.type == 7">类型：小程序</div>
							<div class="version text-over" ng-if="list.account.type == 5">类型：PC</div>
							<div class="version text-over" ng-if="list.account.type == 6">类型：APP</div>
							<div class="version" ng-if="!list.account.level">&nbsp;</div>
						</div>
					</div>
					<div class="mask">
						<a ng-href="{{list.account.switchurl}}" class="entry" >
							<div ng-if="list.account.type ==1 || list.account.type==3">进入公众号 <i class="wi wi-angle-right"></i></div>
							<div ng-if="list.account.type == 4 || list.account.type == 7">进入小程序 <i class="wi wi-angle-right"></i></div>
							<div ng-if="list.account.type == 5">进入PC <i class="wi wi-angle-right"></i></div>
							<div ng-if="list.account.type == 6">进入APP <i class="wi wi-angle-right"></i></div>
							<div ng-if="!list.account.type">进入模块 <i class="wi wi-angle-right"></i></div>
						</a>
						<a href="javascript:;" class="stick" ng-click ="setTop(list.id)" data-container=".welcome-system-home" data-toggle="tooltip" data-placement="right" title="当前页置顶">
							<i class="wi wi-stick-sign"></i>
						</a>
					</div>
				</div>
			</div>

		</div>
	</div>
	<div class="panel we7-panel ">
		<div class="panel-heading">
			消息
			<a href="<?php  echo url('message/notice')?>" class="pull-right color-default">更多 ></a>
		</div>
		<div class="panel-body we7-padding-horizontal message">
			<table class="table we7-table">
				<col>
				<col >
				<col width="30">
				<tr ng-repeat="message in message_list">
					<td > <div class="title">{{message.message}}</div></td>
					<td>{{message.create_time}}</td>
					<td><a href="{{message.url}}" class="color-default">查看</a></td>
				</tr>
			</table>
		</div>
	</div>
</div>
<script>
    $('[data-toggle="popover"]').popover()
	angular.module('homeApp').value('config', {
		account_num: <?php echo !empty($account_num) ? json_encode($account_num) : 'null'?>,
		message_list: <?php echo !empty($messages) ? json_encode($messages) : 'null'?>,
		last_accounts_modules : <?php echo !empty($last_accounts_modules) ? json_encode($last_accounts_modules) : 'null'?>,
		user_info : <?php echo !empty($user_info) ? json_encode($user_info) : 'null'?>,
		links: {
			'setTop' : "<?php  echo url('home/welcome/set_top')?>",
		},
	});
	angular.bootstrap($('.welcome-system-home'), ['homeApp']);
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>