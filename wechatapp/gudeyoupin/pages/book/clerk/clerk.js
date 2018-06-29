var api = require("../../../api.js"), utils = require("../../../utils.js"), app = getApp();

Page({
    data: {
        hide: 1,
        qrcode: ""
    },
    onLoad: function(o) {
        console.log(o), this.getOrderDetails(o);
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
    getOrderDetails: function(o) {
        var e = o.scene, t = this;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.book.clerk_order_details,
            method: "get",
            data: {
                id: e
            },
            success: function(o) {
                0 == o.code ? t.setData({
                    goods: o.data
                }) : wx.showModal({
                    title: "提示",
                    content: o.msg,
                    showCancel: !1,
                    success: function(o) {
                        o.confirm && wx.redirectTo({
                            url: "/pages/user/user"
                        });
                    }
                });
            },
            complete: function(o) {
                setTimeout(function() {
                    wx.hideLoading();
                }, 1e3);
            }
        });
    },
    goToGoodsDetails: function(o) {
        wx.redirectTo({
            url: "/pages/book/details/details?id=" + this.data.goods.goods_id
        });
    },
    nowWriteOff: function(o) {
        var e = this;
        console.log(e.data.order), wx.showModal({
            title: "提示",
            content: "是否确认核销？",
            success: function(o) {
                o.confirm ? (wx.showLoading({
                    title: "正在加载"
                }), app.request({
                    url: api.book.clerk,
                    data: {
                        order_id: e.data.goods.id
                    },
                    success: function(o) {
                        0 == o.code ? wx.redirectTo({
                            url: "/pages/user/user"
                        }) : wx.showModal({
                            title: "警告！",
                            showCancel: !1,
                            content: o.msg,
                            confirmText: "确认",
                            success: function(o) {
                                o.confirm && wx.redirectTo({
                                    url: "/pages/index/index"
                                });
                            }
                        });
                    },
                    complete: function() {
                        wx.hideLoading();
                    }
                })) : o.cancel;
            }
        });
    }
});