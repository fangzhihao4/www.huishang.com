var api = require("../../../api.js"), app = getApp();

Page({
    data: {
        hide: 1,
        qrcode: ""
    },
    onLoad: function(e) {
        app.pageOnLoad(this);
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
        this.loadOrderDetails();
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {
        var e = this, t = "/pages/pt/group/details?oid=" + e.data.order_info.order_id;
        return {
            title: e.data.order_info.goods_list[0].name,
            path: t,
            imageUrl: e.data.order_info.goods_list[0].goods_pic,
            success: function(e) {
                console.log(t), console.log(e);
            }
        };
    },
    loadOrderDetails: function() {
        var t = this;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.group.order.detail,
            data: {
                order_id: t.options.id
            },
            success: function(e) {
                0 == e.code ? (3 != e.data.status && t.countDownRun(e.data.limit_time_ms), t.setData({
                    order_info: e.data,
                    limit_time: e.data.limit_time
                })) : wx.showModal({
                    title: "提示",
                    content: e.msg,
                    showCancel: !1,
                    success: function(e) {
                        e.confirm && wx.redirectTo({
                            url: "/pages/pt/order/order"
                        });
                    }
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    copyText: function(e) {
        var t = e.currentTarget.dataset.text;
        wx.setClipboardData({
            data: t,
            success: function() {
                wx.showToast({
                    title: "已复制"
                });
            }
        });
    },
    countDownRun: function(a) {
        var n = this;
        setInterval(function() {
            var e = new Date(a[0], a[1] - 1, a[2], a[3], a[4], a[5]) - new Date(), t = parseInt(e / 1e3 / 60 / 60 % 24, 10), o = parseInt(e / 1e3 / 60 % 60, 10), i = parseInt(e / 1e3 % 60, 10);
            t = n.checkTime(t), o = n.checkTime(o), i = n.checkTime(i), n.setData({
                limit_time: {
                    hours: 0 < t ? t : 0,
                    mins: 0 < o ? o : 0,
                    secs: 0 < i ? i : 0
                }
            });
        }, 1e3);
    },
    checkTime: function(e) {
        return e < 10 && (e = "0" + e), e;
    },
    toConfirm: function(e) {
        var t = this;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.group.order.confirm,
            data: {
                order_id: t.data.order_info.order_id
            },
            success: function(e) {
                0 == e.code ? wx.showModal({
                    title: "提示",
                    content: e.msg,
                    showCancel: !1,
                    success: function(e) {
                        e.confirm && wx.redirectTo({
                            url: "/pages/pt/order-details/order-details?id=" + t.data.order_info.order_id
                        });
                    }
                }) : wx.showModal({
                    title: "提示",
                    content: e.msg,
                    showCancel: !1,
                    success: function(e) {
                        e.confirm && wx.redirectTo({
                            url: "/pages/pt/order-details/order-details?id=" + t.data.order_info.order_id
                        });
                    }
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    goToGroup: function(e) {
        wx.redirectTo({
            url: "/pages/pt/group/details?oid=" + this.data.order_info.order_id,
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        });
    },
    location: function() {
        var e = this.data.order_info.shop;
        wx.openLocation({
            latitude: parseFloat(e.latitude),
            longitude: parseFloat(e.longitude),
            address: e.address,
            name: e.name
        });
    },
    getOfflineQrcode: function(e) {
        var t = this;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.group.order.get_qrcode,
            data: {
                order_no: e.currentTarget.dataset.id
            },
            success: function(e) {
                0 == e.code ? t.setData({
                    hide: 0,
                    qrcode: e.data.url
                }) : wx.showModal({
                    title: "提示",
                    content: e.msg
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    hide: function(e) {
        this.setData({
            hide: 1
        });
    }
});