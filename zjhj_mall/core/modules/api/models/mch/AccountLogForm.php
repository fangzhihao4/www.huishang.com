<?php
/**
 * @link http://www.zjhejiang.com/
 * @copyright Copyright (c) 2018 浙江禾匠信息科技有限公司
 * @author Lu Wei
 *
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/4/29
 * Time: 14:55
 */


namespace app\modules\api\models\mch;


use app\models\MchAccountLog;
use app\modules\api\models\Model;
use yii\data\Pagination;

class AccountLogForm extends Model
{
    public $mch_id;
    public $type;
    public $year;
    public $month;
    public $page;

    public function rules()
    {
        return [
            [['type', 'year', 'month', 'page'], 'integer'],
        ];
    }

    public function search()
    {
        if (!$this->validate())
            return $this->getModelError();
        $query = MchAccountLog::find()->where([
            'mch_id' => $this->mch_id,
        ]);
        if ($this->type) {
            $query->andWhere(['type' => $this->type]);
        }
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count, 'page' => $this->page - 1]);
        $list = $query->limit($pagination->limit)->offset($pagination->offset)->orderBy('addtime DESC')
            ->asArray()->all();
        foreach ($list as &$item) {
            $item['addtime'] = date('Y-m-d H:i:s', $item['addtime']);
        }
        return [
            'code' => 0,
            'data' => [
                'list' => $list,
            ],
        ];

    }
}