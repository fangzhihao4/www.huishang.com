<?php
/**
 * @link http://www.zjhejiang.com/
 * @copyright Copyright (c) 2018 浙江禾匠信息科技有限公司
 * @author Lu Wei
 *
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/5/4
 * Time: 18:25
 */


namespace app\modules\user\models\mch;


use app\models\MchCash;
use app\modules\user\models\Model;
use yii\data\Pagination;

class CashListForm extends Model
{
    public $mch_id;
    public $status;
    public $year;
    public $month;

    public function rules()
    {
        return [
            [['status', 'year', 'month',], 'integer'],
        ];
    }

    public function search()
    {
        if (!$this->validate())
            return $this->getModelError();
        $query = MchCash::find()->where([
            'mch_id' => $this->mch_id,
        ]);
        if ($this->status) {
            $query->andWhere(['status' => $this->status]);
        }
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count,]);
        $list = $query->limit($pagination->limit)->offset($pagination->offset)->orderBy('addtime DESC')
            ->asArray()->all();
        foreach ($list as &$item) {
            $item['addtime'] = date('Y-m-d H:i:s', $item['addtime']);
        }
        return [
            'code' => 0,
            'data' => [
                'list' => $list,
                'pagination' => $pagination,
            ],
        ];
    }
}