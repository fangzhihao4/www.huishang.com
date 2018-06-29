<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%mch_cash}}".
 *
 * @property integer $id
 * @property integer $store_id
 * @property integer $mch_id
 * @property string $money
 * @property string $order_no
 * @property integer $status
 * @property integer $addtime
 */
class MchCash extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%mch_cash}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['store_id', 'mch_id', 'money', 'order_no', 'addtime'], 'required'],
            [['store_id', 'mch_id', 'status', 'addtime'], 'integer'],
            [['money'], 'number'],
            [['order_no'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'store_id' => 'Store ID',
            'mch_id' => 'Mch ID',
            'money' => 'Money',
            'order_no' => 'Order No',
            'status' => '提现状态：0=待处理，1=已转账，2=已拒绝',
            'addtime' => 'Addtime',
        ];
    }
}
