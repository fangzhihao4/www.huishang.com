var api = require("../../../api.js"),
    app = getApp();
Page({
    data: {
        _sss: 123
    },
    onLoad: function(a) {
        app.pageOnLoad(this);
        var e = this;
        wx.showLoading({
            title: "加载中"
        }), app.request({
            url: api.mch.user.myshop,
            success: function(a) {
                wx.hideLoading(), 0 == a.code && e.setData(a.data), -2 == a.code && wx.redirectTo({
                    url: "/mch/apply/apply"
                })
            }
        })
    },
    onReady: function() {
        app.pageOnReady(this)
    },
    onShow: function() {
        app.pageOnShow(this)
    },
    onHide: function() {
        app.pageOnHide(this)
    },
    onUnload: function() {
        app.pageOnUnload(this)
    },
    navigatorSubmit: function(a) {
        console.log(a), app.request({
            url: api.user.save_form_id + "&form_id=" + a.detail.formId
        }), wx.navigateTo({
            url: a.detail.value.url
        })
    }
});