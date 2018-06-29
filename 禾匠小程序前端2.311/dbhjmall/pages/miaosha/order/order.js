var api = require("../../../api.js"), app = getApp(), is_no_more = !1, is_loading = !1, p = 2;

Page({
    data: {
        status: -1,
        order_list: [],
        show_no_data_tip: !1,
        hide: 1,
        qrcode: ""
    },
    onLoad: function(t) {
        app.pageOnLoad(this);
        is_loading = is_no_more = !1, p = 2, this.loadOrderList(t.status || -1), getCurrentPages().length < 2 && this.setData({
            show_index: !0
        });
    },
    loadOrderList: function(t) {
        null == t && (t = -1);
        var e = this;
        e.setData({
            status: t
        }), wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.miaosha.order_list,
            data: {
                status: e.data.status
            },
            success: function(t) {
                0 == t.code && e.setData({
                    order_list: t.data.list
                }), e.setData({
                    show_no_data_tip: 0 == e.data.order_list.length
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    onReachBottom: function() {
        var a = this;
        is_loading || is_no_more || (is_loading = !0, app.request({
            url: api.miaosha.order_list,
            data: {
                status: a.data.status,
                page: p
            },
            success: function(t) {
                if (0 == t.code) {
                    var e = a.data.order_list.concat(t.data.list);
                    a.setData({
                        order_list: e
                    }), 0 == t.data.list.length && (is_no_more = !0);
                }
                p++;
            },
            complete: function() {
                is_loading = !1;
            }
        }));
    },
    orderPay_1: function(t) {
        var e = this, a = t.currentTarget.dataset.index, o = e.data.order_list[a], s = o.pay_type_list;
        1 == s.length ? (wx.showLoading({
            title: "正在提交",
            mask: !0
        }), 0 == s[0].payment && e.WechatPay(o.order_id), 3 == s[0].payment && e.BalancePay(o.order_id)) : wx.showModal({
            title: "提示",
            content: "选择支付方式",
            cancelText: "余额支付",
            confirmText: "微信支付",
            success: function(t) {
                wx.showLoading({
                    title: "正在提交",
                    mask: !0
                }), t.confirm ? e.WechatPay(o.order_id) : t.cancel && e.BalancePay(o.order_id);
            }
        });
    },
    WechatPay: function(t) {
        app.request({
            url: api.miaosha.pay_data,
            data: {
                order_id: t,
                pay_type: "WECHAT_PAY"
            },
            complete: function() {
                wx.hideLoading();
            },
            success: function(t) {
                console.log(t), 0 == t.code && wx.requestPayment({
                    timeStamp: t.data.timeStamp,
                    nonceStr: t.data.nonceStr,
                    package: t.data.package,
                    signType: t.data.signType,
                    paySign: t.data.paySign,
                    success: function(t) {
                        console.log("success"), console.log(t);
                    },
                    fail: function(t) {
                        console.log("fail"), console.log(t);
                    },
                    complete: function(t) {
                        console.log("complete"), console.log(t), "requestPayment:fail" != t.errMsg && "requestPayment:fail cancel" != t.errMsg ? wx.redirectTo({
                            url: "/pages/miaosha/order/order?status=1"
                        }) : wx.showModal({
                            title: "提示",
                            content: "订单尚未支付",
                            showCancel: !1,
                            confirmText: "确认",
                            success: function(t) {
                                t.confirm && wx.redirectTo({
                                    url: "/pages/miaosha/order/order?status=0"
                                });
                            }
                        });
                    }
                }), 1 == t.code && wx.showToast({
                    title: t.msg,
                    image: "/images/icon-warning.png"
                });
            }
        });
    },
    BalancePay: function(t) {
        app.request({
            url: api.miaosha.pay_data,
            data: {
                order_id: t,
                pay_type: "BALANCE_PAY"
            },
            complete: function() {
                wx.hideLoading();
            },
            success: function(t) {
                0 == t.code && wx.redirectTo({
                    url: "/pages/miaosha/order/order?status=1"
                }), 1 == t.code && wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1
                });
            }
        });
    },
    orderRevoke: function(e) {
        var a = this;
        wx.showModal({
            title: "提示",
            content: "是否取消该订单？",
            cancelText: "否",
            confirmText: "是",
            success: function(t) {
                if (t.cancel) return !0;
                t.confirm && (wx.showLoading({
                    title: "操作中"
                }), app.request({
                    url: api.miaosha.order_revoke,
                    data: {
                        order_id: e.currentTarget.dataset.id
                    },
                    success: function(t) {
                        wx.hideLoading(), wx.showModal({
                            title: "提示",
                            content: t.msg,
                            showCancel: !1,
                            success: function(t) {
                                t.confirm && a.loadOrderList(a.data.status);
                            }
                        });
                    }
                }));
            }
        });
    },
    orderConfirm: function(e) {
        var a = this;
        wx.showModal({
            title: "提示",
            content: "是否确认已收到货？",
            cancelText: "否",
            confirmText: "是",
            success: function(t) {
                if (t.cancel) return !0;
                t.confirm && (wx.showLoading({
                    title: "操作中"
                }), app.request({
                    url: api.miaosha.confirm,
                    data: {
                        order_id: e.currentTarget.dataset.id
                    },
                    success: function(t) {
                        wx.hideLoading(), wx.showToast({
                            title: t.msg
                        }), 0 == t.code && a.loadOrderList(3);
                    }
                }));
            }
        });
    },
    orderQrcode: function(t) {
        var e = this, a = e.data.order_list, o = t.target.dataset.index;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), e.data.order_list[o].offline_qrcode ? (e.setData({
            hide: 0,
            qrcode: e.data.order_list[o].offline_qrcode
        }), wx.hideLoading()) : app.request({
            url: api.order.get_qrcode,
            data: {
                order_no: a[o].order_no
            },
            success: function(t) {
                0 == t.code ? e.setData({
                    hide: 0,
                    qrcode: t.data.url
                }) : wx.showModal({
                    title: "提示",
                    content: t.msg
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    hide: function(t) {
        this.setData({
            hide: 1
        });
    }
});