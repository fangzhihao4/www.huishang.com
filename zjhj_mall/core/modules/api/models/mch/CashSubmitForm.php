<?php
/**
 * @link http://www.zjhejiang.com/
 * @copyright Copyright (c) 2018 浙江禾匠信息科技有限公司
 * @author Lu Wei
 *
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/4/29
 * Time: 18:34
 */


namespace app\modules\api\models\mch;


use app\models\Mch;
use app\models\MchAccountLog;
use app\models\MchCash;
use app\modules\api\models\Model;

class CashSubmitForm extends Model
{
    public $mch_id;
    public $cash_val;

    public function rules()
    {
        return [
            [['cash_val'], 'required'],
            [['cash_val'], 'number', 'min' => 1],
        ];
    }

    public function attributeLabels()
    {
        return [
            'cash_val' => '提现金额',
        ];
    }

    public function save()
    {
        if (!$this->validate()) {
            return $this->getModelError();
        }
        $mch = Mch::findOne($this->mch_id);
        if (!$mch) {
            return [
                'code' => 0,
                'msg' => '商户不存在。',
            ];
        }
        $this->cash_val = floatval(sprintf('%.2f', $this->cash_val));
        if ($this->cash_val > $mch->account_money) {
            return [
                'code' => 1,
                'msg' => '账户余额不足。',
            ];
        }
        $mch->account_money = $mch->account_money - $this->cash_val;
        $cash = new MchCash();
        $cash->store_id = $mch->store_id;
        $cash->mch_id = $this->mch_id;
        $cash->money = $this->cash_val;
        $cash->addtime = time();
        $cash->status = 0;
        $cash->order_no = 'MC' . date('YmdHis') . rand(1000, 9999);
        $t = \Yii::$app->db->beginTransaction();
        $r1 = $cash->save();
        $r2 = $mch->save();
        if ($r1 && $r2) {
            $log = new MchAccountLog();
            $log->store_id = $mch->store_id;
            $log->mch_id = $mch->id;
            $log->price = $this->cash_val;
            $log->type = 2;
            $log->desc = '提现';
            $log->addtime = time();
            $log->save();

            $t->commit();
            return [
                'code' => 0,
                'msg' => '提现已提交，请等待管理员审核。',
            ];
        } else {
            $t->rollBack();
            return $this->getModelError(!$r1 ? $cash : $mch);
        }
    }
}