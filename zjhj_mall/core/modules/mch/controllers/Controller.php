<?php
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/6/26
 * Time: 14:13
 */

namespace app\modules\mch\controllers;


use app\hejiang\Cloud;
use app\models\AdminPermission;
use app\models\Store;
use app\models\We7UserAuth;
use app\models\WechatApp;
use app\modules\mch\models\MchMenu;
use luweiss\wechat\Wechat;
use yii\helpers\VarDumper;
use yii\web\DbSession;

/**
 * @property Wechat $wechat
 */
class Controller extends \app\controllers\Controller
{
    public $layout = 'main';
    public $store;
    /* @var Wechat $wechat */
    public $wechat;
    public $wechat_app;

    /** @var bool $is_admin 是否是总管理员账号登录 */
    public $is_admin = false;
    /** @var bool $is_we7 是否是微擎环境 */
    public $is_we7 = false;
    /** @var bool $is_ind 是否是独立版 */
    public $is_ind = false;
    /** @var bool $is_we7_offline 是否是微擎线下版（本地开发） */
    public $is_we7_offline = false;
    public $platform = null;
    public $we7_user_auth = null;
    public $ind_user_auth = null;
    public $version;

    public function init()
    {
        $this->checkAuth();
        $this->getVersion();
        parent::init();
        $this->store = Store::findOne([
            'id' => \Yii::$app->session->get('store_id'),
        ]);

        if (!\Yii::$app->admin->isGuest) {
            $this->is_we7 = false;
            $this->is_ind = true;
            $this->platform = 'ind';
            if (\Yii::$app->admin->id != $this->store->admin_id && \Yii::$app->admin->id != 1) {
                \Yii::$app->response->redirect(\Yii::$app->urlManager->createUrl(['admin/default/index']))->send();
                \Yii::$app->end();
            }
        }

        if (empty($this->store)) {
            \Yii::$app->response->redirect(\Yii::$app->urlManager->createUrl(['mch/passport/login']))->send();
            \Yii::$app->end();
        }
        $this->wechat_app = WechatApp::findOne(['id' => $this->store->wechat_app_id]);

        if (!is_dir(\Yii::$app->runtimePath . '/pem')) {
            mkdir(\Yii::$app->runtimePath . '/pem');
            file_put_contents(\Yii::$app->runtimePath . '/pem/index.html', '');
        }
        $cert_pem_file = null;
        if ($this->wechat_app->cert_pem) {
            $cert_pem_file = \Yii::$app->runtimePath . '/pem/' . md5($this->wechat_app->cert_pem);
            if (!file_exists($cert_pem_file))
                file_put_contents($cert_pem_file, $this->wechat_app->cert_pem);
        }
        $key_pem_file = null;
        if ($this->wechat_app->key_pem) {
            $key_pem_file = \Yii::$app->runtimePath . '/pem/' . md5($this->wechat_app->key_pem);
            if (!file_exists($key_pem_file))
                file_put_contents($key_pem_file, $this->wechat_app->key_pem);
        }
        $this->wechat = new Wechat([
            'appId' => $this->wechat_app->app_id,
            'appSecret' => $this->wechat_app->app_secret,
            'mchId' => $this->wechat_app->mch_id,
            'apiKey' => $this->wechat_app->key,
            'certPem' => $cert_pem_file,
            'keyPem' => $key_pem_file,
        ]);

        if (!\Yii::$app->admin->isGuest) {
            if (\Yii::$app->admin->id == 1) {
                $this->is_admin = true;
            }
        } else {
            if (isset($_SESSION['we7_user']['uid']) && $_SESSION['we7_user']['uid'] == 1)
                $this->is_admin = true;
            $this->is_we7 = true;
            $this->is_ind = false;
            $this->platform = 'we7';
            $we7_user_auth_model = We7UserAuth::findOne(['we7_user_id' => \Yii::$app->user->identity->we7_uid]);
            if (!$we7_user_auth_model || $we7_user_auth_model->auth == null) {
                $this->we7_user_auth = $this->getAllPermission();
            } else {
                $this->we7_user_auth = json_decode($we7_user_auth_model->auth, true);
            }
            if (stripos(\Yii::$app->request->baseUrl, 'zjhj_mall_offline') !== false) {
                $this->is_we7_offline = true;
            }
        }

        if (\Yii::$app->request->hostName == 'localhost') {
            $this->is_we7_offline = true;
        }

        if (file_exists(\Yii::$app->basePath . '/we7_offline')) {
            $this->is_we7_offline = true;
        }

        $version = json_decode(file_get_contents(\Yii::$app->basePath . '/version.json'));
        $this->version = empty($version->version) ? '未知' : $version->version;
    }

    /**
     * 检查是否是总管理员，不是管理员则转到首页或指定页面
     * @param String $return_url 跳转的页面
     * @return boolean
     */
    public function checkIsAdmin($return_url = null)
    {
        if (!$this->is_admin) {
            $return_url = $return_url ? $return_url : \Yii::$app->urlManager->createUrl(['mch/store/index']);
            $this->redirect($return_url)->send();
            \Yii::$app->end();
        }
        return true;
    }

    public function getAllPermission()
    {
        $list = AdminPermission::getList();
        $new_list = [];
        foreach ($list as $item)
            $new_list[] = $item->name;
        return $new_list;
    }

    public function getMenuList()
    {
        $m = new MchMenu();
        $m->platform = $this->platform;
        if ($this->is_we7) {
            $m->user_auth = $this->we7_user_auth;
        }
        if ($this->is_ind) {
            $m->user_auth = json_decode(\Yii::$app->admin->identity->permission, true);
        }
        $m->is_admin = $this->is_admin;
        if ($this->is_ind || $this->is_we7_offline)
            $m->offline = true;

        $res = $m->getList();
        return $res;
    }

    public function renderResult($args = array())
    {
        $this->layout = false;
        return $this->render('/result', $args);
    }

    public function checkAuth()
    {
        $cache_key = 'mch_check_auth';
        if (\Yii::$app->cache->get($cache_key))
            return;
        $api = Cloud::$cloud_server_prefix . Cloud::$cloud_server_host . '/api/mall/check-auth';
        $curl = Cloud::apiGet($api);
        $res = json_decode($curl->response, true);
        if ($res && isset($res['code'])) {
            if ($res['code'] != 0 && time() > strtotime('2018-01-24 00:00:00')) {
                $this->layout = false;
                echo $this->renderFile($this->module->viewPath . '/auth-error.php');
                \Yii::$app->end();
            } else {
                \Yii::$app->cache->set($cache_key, true, 600);
            }
        }
    }

}