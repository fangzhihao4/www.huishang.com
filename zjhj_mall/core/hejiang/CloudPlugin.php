<?php

//decode by QQ:2058430070 http://www.yunlu99.com/
namespace app\hejiang;

use app\models\Plugin;
use yii\helpers\VarDumper;
class CloudPlugin
{
	private static $installed_plugin_list_key = 'INSTALLED_PLUGIN_LIST';
	//插件列表
	public static function getList()
	{
		$api = Cloud::$cloud_server_prefix . Cloud::$cloud_server_host . '/api/mall/plugin-list';
		$curl = Cloud::apiGet($api);
		if ($curl->error_code) {
			return null;
		}
		$res = json_decode($curl->response, true);
		if ($res['code'] != 0) {
			return null;
		}
		$installed_list = self::getInstalledPluginList();
		foreach ($res['data']['list'] as $i => $itum) {
			$res['data']['list'][$i]['is_install'] = 0;
			foreach ($installed_list as $plugin) {
				if ($plugin['name'] == $itum['name']) {
					$res['data']['list'][$i]['is_install'] = 1;
					break;
				}
			}
		}
		return $res['data'];
	}
	public static function buy($plugin_id)
	{
		$api = Cloud::$cloud_server_prefix . Cloud::$cloud_server_host . '/api/mall/plugin-buy';
		$curl = Cloud::apiGet($api, ['plugin_id' => $plugin_id]);
		if ($curl->error_code) {
			return ['code' => 1, 'msg' => '购买失败：网络出错，错误码=' . $curl->http_status_code];
		}
		return json_decode($curl->response, true);
	}
	public static function install($plugin_id)
	{
		$api = Cloud::$cloud_server_prefix . Cloud::$cloud_server_host . '/api/mall/plugin-install';
		$curl = Cloud::apiGet($api, ['plugin_id' => $plugin_id]);
		if ($curl->error_code) {
			return ['code' => 1, 'msg' => '安装失败：网络出错，错误码=' . $curl->http_status_code];
		}
		$res = json_decode($curl->response, true);
		if ($res['code'] != 0) {
			return $res;
		}
		$model = new Plugin();
		$model->data = $res['data'];
		if ($model->save()) {
			return ['code' => 0, 'msg' => '安装成功'];
		} else {
			return ['code' => 1, 'msg' => '安装失败'];
		}
	}
	//已安装插件列表
	public static function getInstalledPluginList()
	{
		$list = Plugin::find()->all();
		$plugin_list = [];
		foreach ($list as $item) {
			$data = json_decode(\Yii::$app->security->decryptByPassword(base64_decode($item->data), Cloud::$api_key), true);
			if ($data) {
				$plugin_list[] = $data;
			}
		}
		return $plugin_list;
	}
	public static function pay($order_no)
	{
		$api = Cloud::$cloud_server_prefix . Cloud::$cloud_server_host . '/api/mall/plugin-pay';
		$curl = Cloud::apiGet($api, ['order_no' => $order_no]);
		if ($curl->error_code) {
			return ['code' => 1, 'msg' => '安装失败：网络出错，错误码=' . $curl->http_status_code];
		}
		$res = json_decode($curl->response, true);
		return $res;
	}
}