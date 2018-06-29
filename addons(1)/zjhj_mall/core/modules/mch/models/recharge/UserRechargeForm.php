<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/3/17
 * Time: 9:11
 */

namespace app\modules\mch\models\recharge;


use app\models\Recharge;
use app\models\ReOrder;
use app\models\User;
use app\modules\mch\models\Model;
use yii\data\Pagination;

class UserRechargeForm extends Model
{
    public $store_id;

    public $user_id;

    public $limit;
    public $page;
    public $keyword;

    public function rules()
    {
        return [
            [['limit', 'page'], 'integer'],
            [['limit'], 'default', 'value' => 20],
            [['keyword'], 'trim'],
            [['keyword'], 'string'],
        ];
    }

    public function search()
    {
        if (!$this->validate()) {
            return $this->getModelError();
        }
        $query = ReOrder::find()->alias('ro')->where(['ro.store_id' => $this->store_id, 'ro.is_delete' => 0, 'ro.is_pay' => 1])
            ->leftJoin(['u' => User::tableName()], 'u.id=ro.user_id');
        if ($this->user_id) {
            $query->andWhere(['ro.user_id' => $this->user_id]);
        }
        if ($this->keyword) {
            $query->andWhere(['like', 'u.nickname', $this->keyword]);
        }
        $count = $query->count();
        $p = new Pagination(['totalCount' => $count, 'pageSize' => $this->limit]);
        $list = $query->select(['u.nickname', 'ro.*'])
            ->limit($p->limit)->offset($p->offset)->orderBy(['ro.addtime' => SORT_DESC])->asArray()->all();

        //充值异常判断  2.2.1.3之前的充值订单可能有问题；
        foreach ($list as $index => $value) {
            $list[$index]['flag'] = 0;
            if ($value['send_price'] != 0) {
                $exists = Recharge::find()->where([
                    'store_id' => $this->store_id, 'pay_price' => $value['pay_price'], 'send_price' => $value['send_price'], 'is_delete' => 0
                ])->exists();
                if (!$exists) {
                    $list[$index]['flag'] = 1;
                }
            }
        }
        return [
            'list' => $list,
            'pagination' => $p,
            'row_count' => $count
        ];
    }
}