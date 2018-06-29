<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%mch_cat}}".
 *
 * @property integer $id
 * @property integer $parent_id
 * @property integer $mch_id
 * @property string $name
 * @property string $icon
 * @property integer $sort
 * @property integer $is_delete
 * @property integer $addtime
 */
class MchCat extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%mch_cat}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['parent_id', 'mch_id', 'sort', 'is_delete', 'addtime'], 'integer'],
            [['icon'], 'string'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'parent_id' => 'Parent ID',
            'mch_id' => 'Mch ID',
            'name' => '分类名称',
            'icon' => '分类图标',
            'sort' => 'Sort',
            'is_delete' => 'Is Delete',
            'addtime' => 'Addtime',
        ];
    }

    public function getChildrenList()
    {
        return $this->hasMany(MchCat::className(), ['parent_id' => 'id'])->where(['is_delete'=>0,]);
    }
}
