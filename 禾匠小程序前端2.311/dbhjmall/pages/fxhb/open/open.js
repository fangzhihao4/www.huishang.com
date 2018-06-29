var api = require("../../../api.js"), app = getApp();

Page({
    data: {
        page_img: {
            bg: app.webRoot + "/statics/images/fxhb/bg.png",
            close: app.webRoot + "/statics/images/fxhb/close.png",
            hongbao_bg: app.webRoot + "/statics/images/fxhb/hongbao_bg.png",
            open_hongbao_btn: app.webRoot + "/statics/images/fxhb/open_hongbao_btn.png"
        }
    },
    onLoad: function(o) {
        var a = this;
        app.pageOnLoad(this), wx.showLoading({
            title: "加载中",
            mask: !0
        }), app.request({
            url: api.fxhb.open,
            success: function(o) {
                wx.hideLoading(), 0 == o.code && (o.data.hongbao_id ? wx.redirectTo({
                    url: "/pages/fxhb/detail/detail?id=" + o.data.hongbao_id
                }) : a.setData(o.data)), 1 == o.code && wx.showModal({
                    content: o.msg,
                    showCancel: !1,
                    success: function(o) {
                        o.confirm && wx.redirectTo({
                            url: "/pages/index/index"
                        });
                    }
                });
            }
        });
    },
    onReady: function() {
        app.pageOnReady(this);
    },
    onShow: function() {
        app.pageOnShow(this);
    },
    showRule: function() {
        this.setData({
            showRule: !0
        });
    },
    closeRule: function() {
        this.setData({
            showRule: !1
        });
    },
    openHongbao: function(o) {
        console.log(o);
        wx.showLoading({
            title: "抢红包中",
            mask: !0
        }), app.request({
            url: api.fxhb.open_submit,
            method: "post",
            data: {
                form_id: o.detail.formId
            },
            success: function(o) {
                0 == o.code ? wx.redirectTo({
                    url: "/pages/fxhb/detail/detail?id=" + o.data.hongbao_id
                }) : (wx.hideLoading(), wx.showModal({
                    content: o.msg,
                    showCancel: !1
                }));
            }
        });
    }
});