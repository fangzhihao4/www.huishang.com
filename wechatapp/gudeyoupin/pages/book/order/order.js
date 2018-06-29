var api = require("../../../api.js"), app = getApp(), is_no_more = !1, is_loading = !1, p = 2;

Page({
    data: {
        hide: 1,
        qrcode: ""
    },
    onLoad: function(o) {
        app.pageOnLoad(this);
        is_loading = is_no_more = !1, p = 2, this.loadOrderList(o.status || -1);
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {
        var e = this;
        is_loading || is_no_more || (is_loading = !0, app.request({
            url: api.book.order_list,
            data: {
                status: e.data.status,
                page: p
            },
            success: function(o) {
                if (0 == o.code) {
                    var t = e.data.order_list.concat(o.data.list);
                    e.setData({
                        order_list: t
                    }), 0 == o.data.list.length && (is_no_more = !0);
                }
                p++;
            },
            complete: function() {
                is_loading = !1;
            }
        }));
    },
    onShareAppMessage: function() {},
    loadOrderList: function(o) {
        null == o && (o = -1);
        var t = this;
        t.setData({
            status: o
        }), wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.book.order_list,
            data: {
                status: t.data.status
            },
            success: function(o) {
                0 == o.code && t.setData({
                    order_list: o.data.list
                }), t.setData({
                    show_no_data_tip: 0 == t.data.order_list.length
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    orderCancel: function(o) {
        wx.showLoading({
            title: "正在加载",
            mask: !0
        });
        var t = o.currentTarget.dataset.id;
        app.request({
            url: api.book.order_cancel,
            data: {
                id: t
            },
            success: function(o) {
                0 == o.code && wx.redirectTo({
                    url: "/pages/book/order/order?status=0"
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    GoToPay: function(o) {
        wx.showLoading({
            title: "正在提交",
            mask: !0
        }), app.request({
            url: api.book.order_pay,
            data: {
                id: o.currentTarget.dataset.id
            },
            complete: function() {
                wx.hideLoading();
            },
            success: function(o) {
                console.log(o), 0 == o.code && wx.requestPayment({
                    timeStamp: o.data.timeStamp,
                    nonceStr: o.data.nonceStr,
                    package: o.data.package,
                    signType: o.data.signType,
                    paySign: o.data.paySign,
                    success: function(o) {
                        console.log("success"), console.log(o);
                    },
                    fail: function(o) {
                        console.log("fail"), console.log(o);
                    },
                    complete: function(o) {
                        console.log("complete"), console.log(o), "requestPayment:fail" != o.errMsg && "requestPayment:fail cancel" != o.errMsg ? wx.redirectTo({
                            url: "/pages/book/order/order?status=1"
                        }) : wx.showModal({
                            title: "提示",
                            content: "订单尚未支付",
                            showCancel: !1,
                            confirmText: "确认",
                            success: function(o) {
                                o.confirm && wx.redirectTo({
                                    url: "/pages/book/order/order?status=0"
                                });
                            }
                        });
                    }
                }), 1 == o.code && wx.showToast({
                    title: o.msg,
                    image: "/images/icon-warning.png"
                });
            }
        });
    },
    goToDetails: function(o) {
        console.log(o), wx.navigateTo({
            url: "/pages/book/order/details?oid=" + o.currentTarget.dataset.id
        });
    },
    orderQrcode: function(o) {
        var t = this, e = o.target.dataset.index;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), t.data.order_list[e].offline_qrcode ? (t.setData({
            hide: 0,
            qrcode: t.data.order_list[e].offline_qrcode
        }), wx.hideLoading()) : app.request({
            url: api.book.get_qrcode,
            data: {
                order_no: t.data.order_list[e].order_no
            },
            success: function(o) {
                0 == o.code ? t.setData({
                    hide: 0,
                    qrcode: o.data.url
                }) : wx.showModal({
                    title: "提示",
                    content: o.msg
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    hide: function(o) {
        this.setData({
            hide: 1
        });
    },
    applyRefund: function(o) {
        var t = o.target.dataset.id;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.book.apply_refund,
            data: {
                order_id: t
            },
            success: function(o) {
                0 == o.code ? wx.showModal({
                    title: "提示",
                    content: "申请退款成功",
                    showCancel: !1,
                    success: function(o) {
                        o.confirm && wx.redirectTo({
                            url: "/pages/book/order/order?status=3"
                        });
                    }
                }) : wx.showModal({
                    title: "提示",
                    content: o.msg
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    comment: function(o) {
        wx.navigateTo({
            url: "/pages/book/order-comment/order-comment?id=" + o.target.dataset.id,
            success: function(o) {},
            fail: function(o) {},
            complete: function(o) {}
        });
    }
});