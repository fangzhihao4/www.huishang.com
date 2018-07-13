var form_id, app = getApp(), util = require("../../utils/util.js");

Page({
    data: {
        form_id: "",
        index: 0,
        inde: 0,
        array: [],
        showModal: !1,
        zftype: !0,
        zfz: !1,
        chzf: !1,
        zffs: 1,
        zfwz: "微信支付",
        btntype: "btn_ok1",
        beizhu: ""
    },
    ddbz: function(e) {
        console.log(e.detail.value), this.setData({
            beizhu: e.detail.value
        });
    },
    radioChange: function(e) {
        console.log("radio发生change事件，携带value值为：", e.detail.value), "wxzf" == e.detail.value && this.setData({
            zftype: !0,
            chzf: !1,
            zffs: 1,
            zfwz: "微信支付",
            btntype: "btn_ok1"
        }), "yezf" == e.detail.value && this.setData({
            zftype: !1,
            chzf: !1,
            zffs: 2,
            zfwz: "余额支付",
            btntype: "btn_ok2"
        }), "jfzf" == e.detail.value && this.setData({
            chzf: !1,
            zffs: 3,
            zfwz: "积分支付",
            btntype: "btn_ok3"
        }), "chzf" == e.detail.value && this.setData({
            chzf: !0,
            zffs: 4,
            zfwz: "餐后支付"
        });
    },
    xszz: function() {
        this.setData({
            showModal: !0
        });
    },
    yczz: function() {
        this.setData({
            showModal: !1
        });
    },
    qdzf: function() {
        console.log("确定支付");
    },
    jsmj: function(e, t) {
        for (var a, o = 0; o < t.length; o++) if (Number(e) >= Number(t[o].full)) {
            a = o;
            break;
        }
        return a;
    },
    onLoad: function(e) {
        var t = e.tableid;
        console.log(t);
        var i = this;
        app.util.request({
            url: "entry/wxapp/Zhuohao",
            cachetime: "0",
            data: {
                id: t
            },
            success: function(e) {
                console.log(e), i.setData({
                    tabletypename: e.data.type_name,
                    tablename: e.data.table_name,
                    table_id: t
                });
            }
        }), app.util.request({
            url: "entry/wxapp/TableType",
            cachetime: "0",
            success: function(e) {
                console.log(e), i.setData({
                    array: e.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(e) {
                console.log(e), i.setData({
                    jf_proportion: e.data.jf_proportion
                }), "1" == e.data.is_yue ? i.setData({
                    ptkqyue: !0
                }) : i.setData({
                    ptkqyue: !1
                }), "1" == e.data.is_jfpay ? i.setData({
                    ptkqjf: !0
                }) : i.setData({
                    ptkqjf: !1
                });
            }
        });
        var a = wx.getStorageSync("users").id;
        if (app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(e) {
                console.log(e), i.setData({
                    wallet: e.data.wallet,
                    total_score: e.data.total_score
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Url",
            cachetime: "0",
            success: function(e) {
                i.setData({
                    url: e.data
                });
            }
        }), null == e.preferential) var n = 0; else n = Number(e.preferential);
        console.log(n);
        var o = util.formatTime(new Date()), s = wx.getStorageSync("order"), l = wx.getStorageSync("store");
        console.log(s), console.log(l), "1" == l.is_yue ? i.setData({
            sjkqyue: !0
        }) : i.setData({
            sjkqyue: !1
        }), "1" == l.is_jfpay ? i.setData({
            sjkqjf: !0
        }) : i.setData({
            sjkqjf: !1
        });
        for (var c, r = 0, u = 0; u < s.length; u++) r += Number(s[u].money) * s[u].num;
        app.util.request({
            url: "entry/wxapp/Reduction",
            cachetime: "0",
            data: {
                id: l.id
            },
            success: function(e) {
                console.log(e);
                for (var t = [], a = 0; a < e.data.length; a++) "2" != e.data[a].type && "3" != e.data[a].type || t.push(e.data[a]);
                console.log(t);
                var o = 0;
                if (0 == t.length) c = Number(r) - n - o, console.log(o); else if (Number(r) >= Number(t[t.length - 1].full)) {
                    console.log(i.jsmj(r, t));
                    var s = i.jsmj(r, t);
                    o = Number(t[s].reduction), console.log(o), c = Number(r) - n - o;
                } else c = Number(r) - n - o, console.log(o);
                c <= 0 && (c = .01), i.setData({
                    zfmoney: c.toFixed(2),
                    cut: o
                }), console.log(c);
            }
        }), i.setData({
            order: s,
            store: l,
            color: l.color,
            types: e.types,
            totalPrice: r,
            time: o,
            pre: n,
            coupons_id: e.coupons_id,
            vouchers_id: e.vouchers_id
        });
    },
    coupon: function(e) {
        var t = this;
        console.log(t.data), wx.navigateTo({
            url: "../coupons/mine_coupons?totalPrice=" + t.data.totalPrice + "&state=2&tableid=" + t.data.table_id,
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        });
    },
    formSubmit: function(a) {
        var e = this.data.beizhu;
        if (console.log("form发生了submit事件，携带数据为：", a.detail.value), "wxzf" == a.detail.value.radiogroup) var t = 2;
        if ("yezf" == a.detail.value.radiogroup) t = 1;
        if ("chzf" == a.detail.value.radiogroup) t = 0;
        if ("jfzf" == a.detail.value.radiogroup) t = 3;
        var o = this;
        console.log(o.data);
        var s = o.data.store.id;
        console.log(s);
        var i = o.data.order, n = wx.getStorageSync("openid"), l = a.detail.formId;
        console.log(l);
        var c = wx.getStorageSync("users").id;
        if (null == o.data.coupons_id) {
            console.log("用户没有选择优惠券");
            var r = "";
        } else {
            console.log("用户选择了优惠券");
            r = o.data.coupons_id;
        }
        if (null == o.data.vouchers_id) {
            console.log("用户没有选择代金券");
            var u = "";
        } else {
            console.log("用户选择了代金券");
            u = o.data.vouchers_id;
        }
        console.log("代金券id" + u), console.log("优惠券id" + r);
        var d = o.data.pre + Number(o.data.cut), p = (Number(o.data.totalPrice), Number(o.data.zfmoney));
        if (console.log(p), "yezf" == a.detail.value.radiogroup) {
            var f = Number(this.data.wallet);
            if (console.log(f, p), f < p) return void wx.showToast({
                title: "余额不足支付",
                icon: "loading"
            });
        }
        var g = 0;
        if ("jfzf" == a.detail.value.radiogroup) {
            var m = Number(this.data.total_score) / Number(this.data.jf_proportion);
            if (g = p * Number(this.data.jf_proportion), console.log(m, p, g), m < p) return void wx.showToast({
                title: "积分不足支付",
                icon: "loading"
            });
        }
        console.log(2);
        var h = o.data.table_id;
        console.log("桌号" + h);
        var y = o.data.tabletype_id;
        console.log("桌子类型" + y);
        var w = [];
        i.map(function(e) {
            if (0 < e.num) {
                var t = {};
                t.name = e.name, t.img = e.icon, t.num = e.num, t.money = e.money, t.dishes_id = e.id, 
                w.push(t);
            }
        }), console.log(w), p <= 0 ? wx.showToast({
            title: "金额不能为0",
            icon: "",
            image: "",
            duration: 2e3,
            mask: !0,
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        }) : (this.setData({
            zfz: !0
        }), app.util.request({
            url: "entry/wxapp/AddOrder",
            cachetime: "0",
            data: {
                type: 2,
                money: p,
                user_id: c,
                table_id: h,
                seller_id: s,
                coupons_id: r,
                voucher_id: u,
                preferential: d,
                sz: w,
                is_yue: t,
                note: e,
                form_id: l,
                jf: g
            },
            success: function(e) {
                var t = e.data;
                console.log("本次的订单id为" + t), "下单失败" != t && (o.setData({
                    zfz: !1,
                    showModal: !1
                }), "yezf" == a.detail.value.radiogroup && (console.log("用户选择余额支付"), app.util.request({
                    url: "entry/wxapp/PayOrder",
                    cachetime: "0",
                    data: {
                        user_id: c,
                        order_id: t,
                        coupons_id: r,
                        voucher_id: u
                    },
                    success: function(e) {
                        console.log(e), wx.showModal({
                            title: "提示",
                            content: "支付成功",
                            showCancel: !1
                        }), setTimeout(function() {
                            wx.switchTab({
                                url: "../list/list"
                            });
                        }, 1e3), app.util.request({
                            url: "entry/wxapp/DnPrint",
                            cachetime: "0",
                            data: {
                                order_id: t,
                                pay_type: "余额支付"
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        }), app.util.request({
                            url: "entry/wxapp/DnPrint2",
                            cachetime: "0",
                            data: {
                                order_id: t,
                                pay_type: "余额支付"
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        }), app.util.request({
                            url: "entry/wxapp/SmsSet",
                            cachetime: "0",
                            data: {
                                store_id: s
                            },
                            success: function(e) {
                                console.log(e), "1" == e.data.is_dnsms && app.util.request({
                                    url: "entry/wxapp/sms",
                                    cachetime: "0",
                                    data: {
                                        store_id: s
                                    },
                                    success: function(e) {
                                        console.log(e);
                                    }
                                });
                            }
                        });
                    }
                })), "jfzf" == a.detail.value.radiogroup && (console.log("用户选择积分支付"), app.util.request({
                    url: "entry/wxapp/PayOrder",
                    cachetime: "0",
                    data: {
                        user_id: c,
                        order_id: t,
                        coupons_id: r,
                        voucher_id: u
                    },
                    success: function(e) {
                        console.log(e), wx.showModal({
                            title: "提示",
                            content: "支付成功",
                            showCancel: !1
                        }), setTimeout(function() {
                            wx.switchTab({
                                url: "../list/list"
                            });
                        }, 1e3), app.util.request({
                            url: "entry/wxapp/DnPrint",
                            cachetime: "0",
                            data: {
                                order_id: t,
                                pay_type: "积分支付"
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        }), app.util.request({
                            url: "entry/wxapp/DnPrint2",
                            cachetime: "0",
                            data: {
                                order_id: t,
                                pay_type: "积分支付"
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        }), app.util.request({
                            url: "entry/wxapp/SmsSet",
                            cachetime: "0",
                            data: {
                                store_id: s
                            },
                            success: function(e) {
                                console.log(e), "1" == e.data.is_dnsms && app.util.request({
                                    url: "entry/wxapp/sms",
                                    cachetime: "0",
                                    data: {
                                        store_id: s
                                    },
                                    success: function(e) {
                                        console.log(e);
                                    }
                                });
                            }
                        });
                    }
                })), "wxzf" == a.detail.value.radiogroup && (console.log("用户选择微信支付"), app.util.request({
                    url: "entry/wxapp/pay",
                    cachetime: "0",
                    data: {
                        openid: n,
                        order_id: t,
                        money: p
                    },
                    success: function(e) {
                        console.log(e), wx.requestPayment({
                            timeStamp: e.data.timeStamp,
                            nonceStr: e.data.nonceStr,
                            package: e.data.package,
                            signType: e.data.signType,
                            paySign: e.data.paySign,
                            success: function(e) {
                                console.log(e.data), console.log(e);
                            },
                            complete: function(e) {
                                "requestPayment:fail cancel" == e.errMsg && (wx.showToast({
                                    title: "取消支付"
                                }), setTimeout(function() {
                                    wx.switchTab({
                                        url: "../list/list"
                                    });
                                }, 1e3)), "requestPayment:ok" == e.errMsg && (wx.showModal({
                                    title: "提示",
                                    content: "支付成功",
                                    showCancel: !1
                                }), setTimeout(function() {
                                    wx.switchTab({
                                        url: "../list/list"
                                    });
                                }, 1e3));
                            }
                        });
                    }
                })), "chzf" == a.detail.value.radiogroup && (console.log("用户选择餐后支付"), wx.showModal({
                    title: "提示",
                    content: "下单成功",
                    showCancel: !1
                }), app.util.request({
                    url: "entry/wxapp/DnPrint",
                    cachetime: "0",
                    data: {
                        order_id: t,
                        pay_type: "餐后支付"
                    },
                    success: function(e) {
                        console.log(e);
                    }
                }), app.util.request({
                    url: "entry/wxapp/DnPrint2",
                    cachetime: "0",
                    data: {
                        order_id: t,
                        pay_type: "餐后支付"
                    },
                    success: function(e) {
                        console.log(e);
                    }
                }), app.util.request({
                    url: "entry/wxapp/SmsSet",
                    cachetime: "0",
                    data: {
                        store_id: s
                    },
                    success: function(e) {
                        console.log(e), "1" == e.data.is_dnsms && app.util.request({
                            url: "entry/wxapp/sms",
                            cachetime: "0",
                            data: {
                                store_id: s
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        });
                    }
                }), wx.switchTab({
                    url: "../list/list"
                })));
            }
        }));
    },
    bindPickerChange: function(e) {
        var a = this;
        console.log("picker发送选择改变，携带值为", e.detail.value);
        var o = e.detail.value;
        a.setData({
            index: o,
            inde: 0
        }), console.log(a.data), app.util.request({
            url: "entry/wxapp/TableType",
            cachetime: "0",
            success: function(e) {
                var t = e.data[o].id;
                app.util.request({
                    url: "entry/wxapp/Table",
                    cachetime: "0",
                    data: {
                        type_id: t
                    },
                    success: function(e) {
                        console.log(e), a.setData({
                            not_use: e.data,
                            tabletype_id: t,
                            table_id: e.data[a.data.inde].id
                        });
                    }
                });
            }
        });
    },
    bindPickerChange_one: function(e) {
        var t = this;
        if (console.log(t.data), 0 != t.data.index) ;
        var a = t.data.tabletype_id;
        app.util.request({
            url: "entry/wxapp/Table",
            cachetime: "0",
            data: {
                type_id: a
            },
            success: function(e) {
                console.log(e), t.setData({
                    not_use: e.data,
                    table_id: e.data[t.data.inde].id
                });
            }
        }), console.log("picker发送选择改变，携带值为", e.detail.value), t.setData({
            inde: e.detail.value,
            value: e.detail.value
        });
    },
    onReady: function() {},
    onShow: function() {
        app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: getApp().sjid
            },
            success: function(e) {
                console.log(e), wx.setNavigationBarColor({
                    frontColor: "#ffffff",
                    backgroundColor: e.data.color
                });
            }
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});