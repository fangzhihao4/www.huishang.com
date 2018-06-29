var api = require("../../api.js"), app = getApp(), pay = {
    init: function(l, e) {
        var _ = this;
        _.page = l, app = e, _.page.orderPay = function(e) {
            var t = e.currentTarget.dataset.index, a = _.page.data.order_list[t], o = new Array();
            if (void 0 !== _.page.data.pay_type_list) o = _.page.data.pay_type_list; else if (void 0 !== a.pay_type_list) o = a.pay_type_list; else if (void 0 !== a.goods_list[0].pay_type_list) o = a.goods_list[0].pay_type_list; else {
                var i = {
                    payment: 0
                };
                o.push(i);
            }
            var s = getCurrentPages(), r = s[s.length - 1].route, n = api.order.pay_data;
            function c(e, t, a) {
                app.request({
                    url: t,
                    data: {
                        order_id: e,
                        pay_type: "WECHAT_PAY"
                    },
                    complete: function() {
                        wx.hideLoading();
                    },
                    success: function(e) {
                        0 == e.code && wx.requestPayment({
                            timeStamp: e.data.timeStamp,
                            nonceStr: e.data.nonceStr,
                            package: e.data.package,
                            signType: e.data.signType,
                            paySign: e.data.paySign,
                            success: function(e) {
                                console.log("success"), console.log(e);
                            },
                            fail: function(e) {
                                console.log("fail"), console.log(e);
                            },
                            complete: function(e) {
                                "requestPayment:fail" != e.errMsg && "requestPayment:fail cancel" != e.errMsg ? wx.redirectTo({
                                    url: "/" + a + "?status=1"
                                }) : wx.showModal({
                                    title: "提示",
                                    content: "订单尚未支付",
                                    showCancel: !1,
                                    confirmText: "确认",
                                    success: function(e) {
                                        e.confirm && wx.redirectTo({
                                            url: "/" + a + "?status=0"
                                        });
                                    }
                                });
                            }
                        }), 1 == e.code && wx.showToast({
                            title: e.msg,
                            image: "/images/icon-warning.png"
                        });
                    }
                });
            }
            function d(t, a, o) {
                var e = wx.getStorageSync("user_info");
                wx.showModal({
                    title: "当前账户余额：" + e.money,
                    content: "是否使用余额",
                    success: function(e) {
                        e.confirm && (wx.showLoading({
                            title: "正在提交",
                            mask: !0
                        }), app.request({
                            url: a,
                            data: {
                                order_id: t,
                                pay_type: "BALANCE_PAY"
                            },
                            complete: function() {
                                wx.hideLoading();
                            },
                            success: function(e) {
                                0 == e.code && wx.redirectTo({
                                    url: "/" + o + "?status=1"
                                }), 1 == e.code && wx.showModal({
                                    title: "提示",
                                    content: e.msg,
                                    showCancel: !1
                                });
                            }
                        }));
                    }
                });
            }
            -1 != r.indexOf("pt") ? n = api.group.pay_data : -1 != r.indexOf("miaosha") && (n = api.miaosha.pay_data), 
            1 == o.length ? (wx.showLoading({
                title: "正在提交",
                mask: !0
            }), 0 == o[0].payment && c(a.order_id, n, r), 3 == o[0].payment && d(a.order_id, n, r)) : wx.showModal({
                title: "提示",
                content: "选择支付方式",
                cancelText: "余额支付",
                confirmText: "微信支付",
                success: function(e) {
                    e.confirm ? (wx.showLoading({
                        title: "正在提交",
                        mask: !0
                    }), c(a.order_id, n, r)) : e.cancel && d(a.order_id, n, r);
                }
            });
        }, _.page.order_submit = function(i, g) {
            var e = api.order.submit, s = api.order.pay_data, u = "/pages/order/order";
            if ("pt" == g ? (e = api.group.submit, s = api.group.pay_data, u = "/pages/pt/order/order") : "ms" == g && (e = api.miaosha.submit, 
            s = api.miaosha.pay_data, u = "/pages/miaosha/order/order"), 3 == i.payment) {
                var t = wx.getStorageSync("user_info");
                wx.showModal({
                    title: "当前账户余额：" + t.money,
                    content: "是否确定使用余额支付",
                    success: function(e) {
                        e.confirm && a();
                    }
                });
            } else a();
            function a() {
                wx.showLoading({
                    title: "正在提交",
                    mask: !0
                }), app.request({
                    url: e,
                    method: "post",
                    data: i,
                    success: function(e) {
                        if (0 == e.code) {
                            var t = function() {
                                app.request({
                                    url: s,
                                    data: {
                                        order_id: p,
                                        order_id_list: a,
                                        pay_type: o,
                                        form_id: i.formId
                                    },
                                    success: function(e) {
                                        if (0 != e.code) return wx.hideLoading(), void _.page.showToast({
                                            title: e.msg,
                                            image: "/images/icon-warning.png"
                                        });
                                        setTimeout(function() {
                                            wx.hideLoading();
                                        }, 1e3), "pt" == g ? "ONLY_BUY" == _.page.data.type ? wx.redirectTo({
                                            url: u + "?status=2"
                                        }) : wx.redirectTo({
                                            url: "/pages/pt/group/details?oid=" + p
                                        }) : void 0 !== _.page.data.goods_card_list && 0 < _.page.data.goods_card_list.length ? _.page.setData({
                                            show_card: !0
                                        }) : wx.redirectTo({
                                            url: u + "?status=-1"
                                        });
                                    }
                                });
                            };
                            setTimeout(function() {
                                _.page.setData({
                                    options: {}
                                });
                            }, 1);
                            var p = e.data.order_id || "", a = e.data.order_id_list ? JSON.stringify(e.data.order_id_list) : "", o = "";
                            0 == i.payment ? app.request({
                                url: s,
                                data: {
                                    order_id: p,
                                    order_id_list: a,
                                    pay_type: "WECHAT_PAY"
                                },
                                success: function(e) {
                                    if (0 != e.code) 1 != e.code || _.page.showToast({
                                        title: e.msg,
                                        image: "/images/icon-warning.png"
                                    }); else {
                                        setTimeout(function() {
                                            wx.hideLoading();
                                        }, 1e3), wx.requestPayment({
                                            timeStamp: e.data.timeStamp,
                                            nonceStr: e.data.nonceStr,
                                            package: e.data.package,
                                            signType: e.data.signType,
                                            paySign: e.data.paySign,
                                            success: function(e) {
                                                "pt" == g ? "ONLY_BUY" == _.page.data.type ? wx.redirectTo({
                                                    url: u + "?status=2"
                                                }) : wx.redirectTo({
                                                    url: "/pages/pt/group/details?oid=" + p
                                                }) : wx.redirectTo({
                                                    url: u + "?status=1"
                                                });
                                            },
                                            fail: function(e) {},
                                            complete: function(e) {
                                                "requestPayment:fail" != e.errMsg && "requestPayment:fail cancel" != e.errMsg ? "requestPayment:ok" != e.errMsg || (void 0 !== _.page.data.goods_card_list && 0 < _.page.data.goods_card_list.length ? _.page.setData({
                                                    show_card: !0
                                                }) : wx.redirectTo({
                                                    url: u + "?status=-1"
                                                })) : wx.showModal({
                                                    title: "提示",
                                                    content: "订单尚未支付",
                                                    showCancel: !1,
                                                    confirmText: "确认",
                                                    success: function(e) {
                                                        e.confirm && wx.redirectTo({
                                                            url: u + "?status=0"
                                                        });
                                                    }
                                                });
                                            }
                                        });
                                        var t = wx.getStorageSync("quick_list");
                                        if (t) {
                                            for (var a = t.length, o = 0; o < a; o++) for (var i = t[o].goods, s = i.length, r = 0; r < s; r++) i[r].num = 0;
                                            wx.setStorageSync("quick_lists", t);
                                            var n = wx.getStorageSync("carGoods");
                                            for (a = n.length, o = 0; o < a; o++) n[o].num = 0, n[o].goods_price = 0, l.setData({
                                                carGoods: n
                                            });
                                            wx.setStorageSync("carGoods", n);
                                            var c = wx.getStorageSync("total");
                                            c && (c.total_num = 0, c.total_price = 0, wx.setStorageSync("total", c));
                                            wx.getStorageSync("check_num");
                                            0, wx.setStorageSync("check_num", 0);
                                            var d = wx.getStorageSync("quick_hot_goods_lists");
                                            for (a = d.length, o = 0; o < a; o++) d[o].num = 0, l.setData({
                                                quick_hot_goods_lists: d
                                            });
                                            wx.setStorageSync("quick_hot_goods_lists", d);
                                        }
                                    }
                                }
                            }) : 2 == i.payment ? (o = "HUODAO_PAY", t()) : 3 == i.payment && (o = "BALANCE_PAY", 
                            t());
                        }
                        if (1 == e.code) return wx.hideLoading(), void _.page.showToast({
                            title: e.msg,
                            image: "/images/icon-warning.png"
                        });
                    }
                });
            }
        };
    }
};

module.exports = pay;