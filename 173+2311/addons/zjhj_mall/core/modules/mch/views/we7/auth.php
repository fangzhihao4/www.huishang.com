<?php
defined('YII_RUN') or exit('Access Denied');
/**
 * Created by IntelliJ IDEA.
 * User: luwei
 * Date: 2017/6/19
 * Time: 16:52
 */
$urlManager = Yii::$app->urlManager;
$this->title = '权限管理';
$this->params['active_nav_group'] = 1;
$permission_count = count($permission_list);
?>

<div class="panel mb-3">
    <div class="panel-header"><?= $this->title ?></div>
    <div class="panel-body">

        <form method="get" class="form-inline mb-3">
            <?php foreach ($_GET as $name => $value):if (!in_array($name, ['keyword'])): ?>
                <input type="hidden" name="<?= $name ?>" value="<?= $value ?>">
            <?php endif; endforeach; ?>
            <input placeholder="UID、用户名" class="form-control mr-3" name="keyword"
                   value="<?= \Yii::$app->request->get('keyword') ?>">
            <button class="btn btn-primary">查找</button>
        </form>
        <table class="table table-bordered bg-white">
            <thead>
            <tr>
                <th>UID</th>
                <th>用户名</th>
                <th>注册时间</th>
                <th>权限</th>
            </tr>
            </thead>
            <?php foreach ($list as $item): ?>
                <tr>
                    <td><?= $item['uid'] ?></td>
                    <td><?= $item['username'] ?></td>
                    <td><?= date('Y-m-d H:i', $item['joindate']) ?></td>
                    <td>
                        <?php if ($item['auth'] === null || $item['auth'] === ''): ?>
                            <a href="javascript:" data-target="#auth_modal_<?= $item['uid'] ?>"
                               data-toggle="modal"><?= $permission_count ?>/<?= $permission_count ?></a>
                        <?php else: ?>
                            <a href="javascript:" data-target="#auth_modal_<?= $item['uid'] ?>"
                               data-toggle="modal"><?= count($item['auth']) ?>/<?= $permission_count ?></a>
                        <?php endif; ?>
                        <!-- Modal -->
                        <div class="modal fade" id="auth_modal_<?= $item['uid'] ?>" data-backdrop="static">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">权限设置</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form method="post" class="auto-submit-form"
                                          data-return="<?= Yii::$app->request->absoluteUrl ?>">
                                        <div class="modal-body">
                                            <input type="hidden" name="we7_user_id" value="<?= $item['uid'] ?>">
                                            <p>
                                                <span class="mr-3">UID:<?= $item['uid'] ?></span>
                                                <span>用户名:<?= $item['username'] ?></span>
                                            </p>
                                            <?php foreach ($permission_list as $permission): ?>
                                                <label class="custom-control custom-checkbox mr-5 mb-3">
                                                    <input type="checkbox"
                                                           name="auth[]"
                                                           value="<?= $permission->name ?>"
                                                        <?= ($item['auth'] === null || $item['auth'] === '' || in_array($permission->name, $item['auth'])) ? 'checked' : null ?>
                                                           class="custom-control-input">
                                                    <span class="custom-control-indicator"></span>
                                                    <span class="custom-control-description"><?= $permission->display_name ?></span>
                                                </label>
                                            <?php endforeach; ?>
                                            <div class="text-danger form-error mb-3" style="display: none">错误信息</div>
                                            <div class="text-success form-success mb-3" style="display: none">成功信息</div>
                                        </div>
                                        <div class="modal-footer">
                                            <a href="javascript:" class="btn btn-secondary" data-dismiss="modal">取消</a>
                                            <button class="btn btn-primary submit-btn">保存</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            <?php endforeach; ?>
        </table>

        <nav aria-label="Page navigation example">
            <?php echo \yii\widgets\LinkPager::widget([
                'pagination' => $pagination,
                'prevPageLabel' => '上一页',
                'nextPageLabel' => '下一页',
                'firstPageLabel' => '首页',
                'lastPageLabel' => '尾页',
                'maxButtonCount' => 5,
                'options' => [
                    'class' => 'pagination',
                ],
                'prevPageCssClass' => 'page-item',
                'pageCssClass' => "page-item",
                'nextPageCssClass' => 'page-item',
                'firstPageCssClass' => 'page-item',
                'lastPageCssClass' => 'page-item',
                'linkOptions' => [
                    'class' => 'page-link',
                ],
                'disabledListItemSubTagOptions' => ['tag' => 'a', 'class' => 'page-link'],
            ])
            ?>
        </nav>

    </div>
</div>