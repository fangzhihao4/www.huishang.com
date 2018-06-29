<?php
/**
 * @link http://www.zjhejiang.com/
 * @copyright Copyright (c) 2018 浙江禾匠信息科技有限公司
 * @author Lu Wei
 *
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2018/4/29
 * Time: 20:06
 */


namespace app\modules\mch\models\mch;


use app\models\Mch;
use app\models\MchCash;
use app\models\User;
use app\modules\mch\models\Model;
use yii\data\Pagination;

class CashListForm extends Model
{
    public $store_id;
    public $status;
    public $page;

    public function rules()
    {
        return [
            [['status', 'page'], 'integer'],
            [['page'], 'default', 'value' => 1],
        ];
    }

    public function search()
    {
        if (!$this->validate())
            return $this->getModelError();
        $query = MchCash::find()->alias('mc')
            ->leftJoin(['m' => Mch::tableName()], 'mc.mch_id=m.id')
            ->leftJoin(['u' => User::tableName()], 'm.user_id=u.id')
            ->where([
                'mc.store_id' => $this->store_id,
            ]);
        if ($this->status != -1) {
            $query->andWhere(['mc.status' => $this->status]);
        }
        $count = $query->count();
        $pagination = new Pagination(['totalCount' => $count, 'page' => $this->page - 1,]);
        $list = $query->select('u.nickname,m.name,mc.id,mc.money,mc.status,mc.addtime')
            ->limit($pagination->limit)->offset($pagination->offset)
            ->orderBy('mc.addtime DESC')
            ->asArray()->all();
        foreach ($list as &$item) {
            $item['addtime'] = date('Y-m-d H:i:s', $item['addtime']);
        }
        return [
            'code' => 0,
            'data' => [
                'pagination' => $pagination,
                'list' => $list,
            ],
        ];
    }
}