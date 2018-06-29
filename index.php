<?php

require './framework/bootstrap.inc.php';

$host = $_SERVER['HTTP_HOST'];
if (!empty($host)) {
	$bindhost = pdo_fetch("SELECT * FROM ".tablename('site_multi')." WHERE bindhost = :bindhost", array(':bindhost' => $host));
	if (!empty($bindhost)) {
		header("Location: ". $_W['siteroot'] . 'app/index.php?i='.$bindhost['uniacid'].'&t='.$bindhost['id']);
		exit;
	}
}
if($_W['os'] == 'mobile' && (!empty($_GPC['i']) || !empty($_SERVER['QUERY_STRING']))) {
	header('Location: ./app/index.php?' . $_SERVER['QUERY_STRING']);
} else {
	//header('Location: ./web/index.php?' . $_SERVER['QUERY_STRING']);
	header('Location: ./web/index.php?c=user&a=login&' . $_SERVER['QUERY_STRING']);
	/*if ($_COOKIE['1b9c_message']) {
		
		header('Location: ./web/index.php?r=mch%2Fstore%2Findex' . $_SERVER['QUERY_STRING']);
	}else{
		header('Location: ./web/index.php?' . $_SERVER['QUERY_STRING']);
	}*/
}