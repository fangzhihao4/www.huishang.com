<?php
defined('YII_RUN') or exit('Access Denied');
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/6/27
 * Time: 11:36
 */

$urlManager = Yii::$app->urlManager;
$this->title = '区域限制购买';
$this->params['active_nav_group'] = 1;
?>
<style>
    .city-list{
        z-index: 999;
    }
    .more{
        font-size: 21px;
    }

</style>

<div class="panel mb-3" id="app">
    <div class="panel-header"><?= $this->title ?></div>
    <div class="panel-body">
        <form class="auto-form" method="post"
              return="<?= $urlManager->createUrl(['mch/store/territorial-index']) ?>">
            <div class="form-group row">
                <div class="form-group-label col-sm-2 text-right">
                    <label class="col-form-label">是否开启</label>
                </div>
                <div class="col-sm-6">
                    <label class="radio-label">
                        <input <?= $model['is_enable'] == 1 ? 'checked' : 'checked' ?>
                            value="1"
                            name="is_enable"
                            type="radio"
                            class="custom-control-input">
                        <span class="label-icon"></span>
                        <span class="label-text">开启</span>
                    </label>
                    <label class="radio-label">
                        <input <?= $model['is_enable'] == 0 ? 'checked' : null ?>
                            value="0"
                            name="is_enable"
                            type="radio"
                            class="custom-control-input">
                        <span class="label-icon"></span>
                        <span class="label-text">关闭</span>
                    </label>
                </div>
            </div>
            <div class="form-group row">
                <div class="form-group-label col-sm-2 text-right">
                    <label class="col-form-label">限制区域</label>
                </div>
                <div class="col-sm-6 col-form-label">
                    <div class="card mb-3" v-for="(item,index) in detail">
                        <div class="card-block">
                            <div class="mb-3">
                                <a class="del-rules-btn float-right" href="javascript:" v-bind:data-index="index">[-删除条目]</a>
                            </div>
                            <div>
                                <span>省份：</span>
                                <span v-for="(province,p_index) in item.province_list">
                                    <span>{{province.name}}</span>
                                    <input type="hidden"
                                           v-bind:name="'detail['+index+'][province_list]['+p_index+'][id]'"
                                           v-model="province.id">
                                    <input type="hidden"
                                           v-bind:name="'detail['+index+'][province_list]['+p_index+'][name]'"
                                           v-model="province.name">
                                </span>
                            </div>
                        </div>
                    </div>
                    <a class="show-rules-modal" href="javascript:">[+新增条目]</a>
                </div>
            </div>
            <div class="form-group row">
                <div class="form-group-label col-sm-2 text-right">
                </div>
                <div class="col-sm-6">
                    <a class="btn btn-primary auto-form-btn" href="javascript:">保存</a>
                </div>
            </div>
        </form>

        <div class="modal fade rules-modal bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog"
             aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <b>添加区域</b>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <b>省份</b>
                        <div class="row">
                            <div class="col-sm-4" v-for="(province,index) in province_list" v-if="province.selected!=true">
                                <label>
                                    <input name="province"
                                           v-bind:id="'index_'+index"
                                           v-bind:data-index="index"
                                           v-bind:data-id="province.id"
                                           v-bind:data-name="province.name" v-bind:checked="province.show" type="checkbox">
                                    {{province.name}}
                                    <a data-toggle="collapse" v-bind:href="'#collapseExample'+index" role="button" aria-expanded="true" aria-controls="collapseExample" class="more">+</a>
                                </label>
                                <div class="collapse" v-bind:id="'collapseExample'+index">
                                    <div class="card card-body">
                                        <div class="row">
                                            <div class="col-6" v-for="(city,c_index) in province.city" v-if="city.selected!=true">
                                                <label>
                                                    <input name="city"
                                                           v-bind:id="'index_'+c_index"
                                                           v-bind:data-index="c_index"
                                                           v-bind:data-p_index="index"
                                                           v-bind:data-id="city.id"
                                                           v-bind:data-name="city.name" v-bind:checked="city.show" type="checkbox">
                                                    {{city.name}}
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary add-rules-btn">确定</button>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>


<script>
    var app = new Vue({
        el: "#app",
        data: {
            detail: <?=$model->detail ? $model->detail : '[]'?>,
            province_list: [],
        },
    });

    <?php foreach ($province_list as $province):?>
    var city = [];
    <?php foreach ($province['city'] as $value):?>
    city.push({
        id:<?=$value['id']?>,
        name: "<?=$value['name']?>",
        selected: false,
        show: false
    });
    <?php endforeach;?>
    app.province_list.push({
        id:<?=$province['id']?>,
        name: "<?=$province['name']?>",
        city:city,
        selected: false,
        show:false,
    });
    <?php endforeach;?>
    for (var i in app.province_list) {
        var num = 0;
        for (var c in app.province_list[i]['city']) {
            var selected = false;
            for (var j in app.detail) {
                for (var k in app.detail[j].province_list) {
                    if (app.detail[j].province_list[k].id == app.province_list[i]['city'][c].id)
                        selected = true;
                }
            }
            app.province_list[i]['city'][c].selected = selected;
            if (app.province_list[i]['city'][c].selected == true){
                num ++;
                if (app.province_list[i]['city'].length <= num){
                    app.province_list[i].selected = true;
                }
            }
        }
    }
    $(document).on('change', ".custom-control-input", function () {
        app.detail = [];
        for (var i in app.province_list) {
            app.province_list[i].selected = false;
        }
        changeType();
    });

    function changeType() {
        var type = $('.custom-control-input:checked').val();
    }

    $(document).on("click", ".show-rules-modal", function () {
        changeType();
        $(".rules-modal").modal("show");
    });

    $(document).on("click", ".rules-modal .add-rules-btn", function () {
        var frist = $(".rules-modal input[name=frist]").val();
        var frist_price = $(".rules-modal input[name=frist_price]").val();
        var second = $(".rules-modal input[name=second]").val();
        var second_price = $(".rules-modal input[name=second_price]").val();
        var province_list = [];
        $(".rules-modal input[name=province]").each(function () {
            if ($(this).prop("checked")) {
                var index = $(this).attr("data-index");
                app.province_list[index].selected = true;
            }
        });
        $(".rules-modal input[name=city]").each(function () {
            if ($(this).prop("checked")) {
                var index = $(this).attr("data-index");
                var p_index = $(this).attr("data-p_index");
                var id = $(this).attr("data-id");
                var name = $(this).attr("data-name");
                if (app.province_list[p_index]['city'].length <= 1){
                    app.province_list[p_index].selected = true;
                }
                province_list.push({
                    id: id,
                    name: name,
                });
                app.province_list[p_index]['city'][index].selected = true;
            }
        });

        $(".rules-modal input[name=province]").prop("checked", false);
        if (province_list.length > 0) {
            app.detail.push({
                frist: frist,
                frist_price: frist_price,
                second: second,
                second_price: second_price,
                province_list: province_list,
            });
            $(".rules-modal").modal("hide");
        }
    });

    $(document).on("change", ".rules-modal input[name=province]", function () {
        var index = $(this).attr("data-index");
        if ($(this).prop("checked")) {
            app.province_list[index].show = true;
            for (var i in app.province_list[index]['city']){
                app.province_list[index]['city'][i].show = true;
            }
        }else {
            app.province_list[index].show = false;
            for (var i in app.province_list[index]['city']){
                app.province_list[index]['city'][i].show = false;
            }
        }
    });

    $(document).on("change", ".rules-modal input[name=city]", function () {
        var index = $(this).attr("data-index");
        var p_index = $(this).attr("data-p_index");
        var num = 0;
        var count = 0;

        if ($(this).prop("checked")) {
            app.province_list[p_index]['city'][index].show = true;

            for (var i in app.province_list[p_index]['city']){
                if (app.province_list[p_index]['city'][i].show){
                    num++;
                }
                if (app.province_list[p_index]['city'][i].selected == false){
                    count ++;
                }
            }
            if (num == app.province_list[p_index]['city'].length){
                app.province_list[p_index].show = true;
            }
            if (num == count){
                app.province_list[p_index].show = true;
            }
        }else{
            app.province_list[p_index]['city'][index].show = false;
            app.province_list[p_index].show = false;
        }
    });

    $(document).on("click", ".del-rules-btn", function () {
        var index = $(this).attr("data-index");
        var province_list = app.detail[index].province_list;
        app.detail.splice(index, 1);
        for (var i in app.province_list) {
            for (var c in app.province_list[i]['city']) {
                for (var j in province_list) {
                    if (province_list[j].id == app.province_list[i]['city'][c].id) {
                        app.province_list[i]['city'][c].selected = false;
                        app.province_list[i].selected = false;
                        app.province_list[i]['city'][c].show = false;
                        app.province_list[i].show = false;
                    }
                }
            }
        }
    });

</script>