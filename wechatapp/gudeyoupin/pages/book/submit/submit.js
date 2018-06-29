var api = require("../../../api.js"), utils = require("../../../utils/utils.js"), app = getApp();

Page({
    data: {},
    onLoad: function(t) {
        app.pageOnLoad(this), this.getPreview(t);
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {},
    checkboxChange: function(t) {
        console.log(t.target.dataset.id);
        var e = t.target.dataset.pid, a = t.target.dataset.id, o = this.data.form_list, i = o[e].default[a].selected;
        o[e].default[a].selected = 1 != i, this.setData({
            form_list: o
        });
    },
    radioChange: function(t) {
        var e = t.target.dataset.pid, a = this.data.form_list;
        for (var o in a[e].default) t.target.dataset.id == o ? a[e].default[o].selected = !0 : a[e].default[o].selected = !1;
        this.setData({
            form_list: a
        });
    },
    inputChenge: function(t) {
        console.log(t);
        var e = t.target.dataset.id, a = this.data.form_list;
        a[e].default = t.detail.value, this.setData({
            form_list: a
        });
    },
    getPreview: function(t) {
        var a = this, e = t.id;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.book.submit_preview,
            method: "get",
            data: {
                gid: e
            },
            success: function(t) {
                if (0 == t.code) {
                    for (var e in t.data.form_list) "date" == t.data.form_list[e].type && (t.data.form_list[e].default = t.data.form_list[e].default ? t.data.form_list[e].default : utils.formatData(new Date())), 
                    "time" == t.data.form_list[e].type && (t.data.form_list[e].default = t.data.form_list[e].default ? t.data.form_list[e].default : "00:00");
                    a.setData({
                        goods: t.data.goods,
                        form_list: t.data.form_list
                    });
                } else wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    success: function(t) {
                        t.confirm && wx.redirectTo({
                            url: "/pages/book/index/index"
                        });
                    }
                });
            },
            complete: function(t) {
                setTimeout(function() {
                    wx.hideLoading();
                }, 1e3);
            }
        });
    },
    submit: function(t) {
        var e = t.detail.formId, a = this.data.goods.id, o = JSON.stringify(this.data.form_list);
        console.log(o), wx.showLoading({
            title: "正在提交",
            mask: !0
        }), app.request({
            url: api.book.submit,
            method: "post",
            data: {
                gid: a,
                form_list: o,
                form_id: e
            },
            success: function(t) {
                if (0 == t.code) {
                    if (1 != t.type) return wx.showLoading({
                        title: "正在提交",
                        mask: !0
                    }), void wx.requestPayment({
                        timeStamp: t.data.timeStamp,
                        nonceStr: t.data.nonceStr,
                        package: t.data.package,
                        signType: t.data.signType,
                        paySign: t.data.paySign,
                        success: function(t) {
                            wx.redirectTo({
                                url: "/pages/book/order/order?status=1"
                            });
                        },
                        fail: function(t) {},
                        complete: function(t) {
                            setTimeout(function() {
                                wx.hideLoading();
                            }, 1e3), "requestPayment:fail" != t.errMsg && "requestPayment:fail cancel" != t.errMsg ? "requestPayment:ok" != t.errMsg && wx.redirectTo({
                                url: "/pages/book/order/order?status=-1"
                            }) : wx.showModal({
                                title: "提示",
                                content: "订单尚未支付",
                                showCancel: !1,
                                confirmText: "确认",
                                success: function(t) {
                                    t.confirm && wx.redirectTo({
                                        url: "/pages/book/order/order?status=0"
                                    });
                                }
                            });
                        }
                    });
                    wx.redirectTo({
                        url: "/pages/book/order/order?status=1"
                    });
                } else wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    success: function(t) {}
                });
            },
            complete: function(t) {
                setTimeout(function() {
                    wx.hideLoading();
                }, 1e3);
            }
        });
    }
});