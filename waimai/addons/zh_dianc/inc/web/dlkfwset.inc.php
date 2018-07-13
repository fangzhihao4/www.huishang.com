<?php
global $_GPC, $_W;
$action = 'start';
$storeid=$_COOKIE["storeid"];
$GLOBALS['frames'] = $this->getNaveMenu($storeid, $action);


$cur_store = $this->getStoreById($storeid);
$info=pdo_get('wpdc_kfwset',array('store_id'=>$storeid,'uniacid'=>$_W['uniacid']));
if(checksubmit('submit')){
	$data['store_id']=$storeid;
	$data['user_id']=$_GPC['user_id'];	
	$data['uniacid']=$_W['uniacid'];
	if($_GPC['id']==''){
		$res = pdo_insert('wpdc_kfwset', $data);
	}else{
		$res = pdo_update('wpdc_kfwset', $data, array('store_id' => $storeid));
	}	
	if($res){
		message('编辑成功',$this->createWebUrl2('dlkfwset',array()),'success');
	}else{
		message('编辑失败','','error');
	}
}



include $this->template('web/dlkfwset');