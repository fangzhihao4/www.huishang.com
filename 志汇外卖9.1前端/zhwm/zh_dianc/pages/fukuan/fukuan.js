var form_id, app = getApp();

Page({
    data: {
        money: 0,
        qzf: !0,
        showModal: !1,
        zffs: 1,
        zfz: !1,
        zfwz: "微信支付",
        btntype: "btn_ok1"
    },
    radioChange: function(e) {
        console.log("radio发生change事件，携带value值为：", e.detail.value), "wxzf" == e.detail.value && this.setData({
            zffs: 1,
            zfwz: "微信支付",
            btntype: "btn_ok1"
        }), "yezf" == e.detail.value && this.setData({
            zffs: 2,
            zfwz: "余额支付",
            btntype: "btn_ok2"
        }), "jfzf" == e.detail.value && this.setData({
            zffs: 3,
            zfwz: "积分支付",
            btntype: "btn_ok3"
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
    money: function(e) {
        var t;
        console.log(e.detail.value), t = "" != e.detail.value ? e.detail.value : 0, this.setData({
            money: parseFloat(t).toFixed(2)
        });
    },
    formSubmit: function(e) {
        var o = this;
        form_id = e.detail.formId, o.setData({
            form_id: form_id
        });
        var a = wx.getStorageSync("openid"), t = wx.getStorageSync("users").id, s = this.data.money, n = this.data.store.name, i = this.data.store.id;
        if (console.log(a, s, n, i), 0 == s) return wx.showModal({
            title: "提示",
            content: "付款金额不能等于0"
        }), !1;
        if (console.log("form发生了submit事件，携带数据为：", e.detail.value.radiogroup), "yezf" == e.detail.value.radiogroup) {
            var r = Number(this.data.wallet);
            s = Number(this.data.money);
            if (console.log(r, s), r < s) return void wx.showToast({
                title: "余额不足支付",
                icon: "loading"
            });
        }
        var c = 0;
        if ("jfzf" == e.detail.value.radiogroup) {
            var l = Number(this.data.total_score) / Number(this.data.jf_proportion);
            s = Number(this.data.money);
            if (c = s * Number(this.data.jf_proportion), console.log(l, s, c), l < s) return void wx.showToast({
                title: "积分不足支付",
                icon: "loading"
            });
        }
        if ("yezf" == e.detail.value.radiogroup) var u = 1;
        if ("wxzf" == e.detail.value.radiogroup) u = 2;
        if ("jfzf" == e.detail.value.radiogroup) u = 3;
        console.log("是否余额", u), "" == form_id ? wx.showToast({
            title: "网络不好",
            icon: "loading",
            duration: 500,
            mask: !0,
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        }) : (this.setData({
            zfz: !0
        }), "yezf" == e.detail.value.radiogroup ? (console.log("余额支付流程"), app.util.request({
            url: "entry/wxapp/DmOrder",
            cachetime: "0",
            data: {
                money: s,
                store_id: i,
                user_id: t,
                is_yue: u,
                form_id: form_id
            },
            success: function(e) {
                o.setData({
                    zfz: !1,
                    showModal: !1
                }), console.log(e);
                var t = e.data;
                "下单失败" != e.data && app.util.request({
                    url: "entry/wxapp/dmpay",
                    cachetime: "0",
                    data: {
                        order_id: t
                    },
                    success: function(e) {
                        console.log(e), o.onShow1(), app.util.request({
                            url: "entry/wxapp/dmPrint",
                            cachetime: "0",
                            data: {
                                order_id: t
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        }), app.util.request({
                            url: "entry/wxapp/dmPrint2",
                            cachetime: "0",
                            data: {
                                order_id: t
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        }), app.util.request({
                            url: "entry/wxapp/Message2",
                            cachetime: "0",
                            data: {
                                openid: a,
                                form_id: form_id,
                                name: n,
                                money: s + "元"
                            },
                            success: function(e) {
                                console.log(e), wx.showModal({
                                    title: "提示",
                                    content: "支付成功"
                                });
                            }
                        });
                    }
                });
            }
        })) : "jfzf" == e.detail.value.radiogroup ? (console.log("积分支付流程"), app.util.request({
            url: "entry/wxapp/DmOrder",
            cachetime: "0",
            data: {
                money: s,
                store_id: i,
                user_id: t,
                is_yue: u,
                form_id: form_id
            },
            success: function(e) {
                o.setData({
                    zfz: !1,
                    showModal: !1
                }), console.log(e);
                var t = e.data;
                "下单失败" != e.data && app.util.request({
                    url: "entry/wxapp/dmpay",
                    cachetime: "0",
                    data: {
                        order_id: t,
                        jf: c
                    },
                    success: function(e) {
                        console.log(e), o.onShow1(), app.util.request({
                            url: "entry/wxapp/dmPrint",
                            cachetime: "0",
                            data: {
                                order_id: t
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        }), app.util.request({
                            url: "entry/wxapp/dmPrint2",
                            cachetime: "0",
                            data: {
                                order_id: t
                            },
                            success: function(e) {
                                console.log(e);
                            }
                        }), app.util.request({
                            url: "entry/wxapp/Message2",
                            cachetime: "0",
                            data: {
                                openid: a,
                                form_id: form_id,
                                name: n,
                                money: s + "元"
                            },
                            success: function(e) {
                                console.log(e), wx.showModal({
                                    title: "提示",
                                    content: "支付成功"
                                });
                            }
                        });
                    }
                });
            }
        })) : (console.log("微信支付流程"), app.util.request({
            url: "entry/wxapp/DmOrder",
            cachetime: "0",
            data: {
                money: s,
                store_id: i,
                user_id: t,
                is_yue: u,
                form_id: form_id
            },
            success: function(e) {
                o.setData({
                    zfz: !1,
                    showModal: !1
                }), console.log(e), "下单失败" != e.data && (o.onShow(), app.util.request({
                    url: "entry/wxapp/pay3",
                    cachetime: "0",
                    data: {
                        openid: a,
                        money: s,
                        order_id: e.data
                    },
                    success: function(e) {
                        console.log(e), wx.requestPayment({
                            timeStamp: e.data.timeStamp,
                            nonceStr: e.data.nonceStr,
                            package: e.data.package,
                            signType: e.data.signType,
                            paySign: e.data.paySign,
                            success: function(e) {
                                console.log(e.data), console.log(e), console.log(form_id);
                            },
                            complete: function(e) {
                                console.log(e), "requestPayment:fail cancel" == e.errMsg && wx.showToast({
                                    title: "取消支付",
                                    icon: "loading",
                                    duration: 1e3
                                }), "requestPayment:ok" == e.errMsg && (o.onShow1(), wx.showModal({
                                    title: "提示",
                                    content: "支付成功"
                                }));
                            }
                        });
                    }
                }));
            }
        })));
    },
    onLoad: function(e) {
        var t = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: t
        }), this.setData({
            money: parseFloat(0).toFixed(2)
        });
        var o = this;
        console.log(e);
        var a = decodeURIComponent(e.scene);
        if ("undefined" != a) {
            console.log("扫码进入");
            var s = a;
        } else s = getApp().sjid;
        console.log("scene", a, s), wx.login({
            success: function(e) {
                var t = e.code;
                wx.setStorageSync("code", e.code), app.util.request({
                    url: "entry/wxapp/openid",
                    cachetime: "0",
                    data: {
                        code: t
                    },
                    success: function(e) {
                        console.log(e), wx.setStorageSync("key", e.data.session_key), wx.setStorageSync("openid", e.data.openid);
                        var t = e.data.openid;
                        console.log(t), "" == t ? wx.showToast({
                            title: "没有获取到openid",
                            icon: "",
                            image: "",
                            duration: 1e3,
                            mask: !0,
                            success: function(e) {},
                            fail: function(e) {},
                            complete: function(e) {}
                        }) : app.util.request({
                            url: "entry/wxapp/Login",
                            cachetime: "0",
                            data: {
                                openid: t
                            },
                            success: function(e) {
                                console.log(e), wx.setStorageSync("users", e.data), o.onShow1();
                            }
                        });
                    }
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: s
            },
            success: function(e) {
                console.log(e), o.setData({
                    store: e.data,
                    color: e.data.color
                }), "1" == e.data.is_yue ? o.setData({
                    sjkqyue: !0
                }) : o.setData({
                    sjkqyue: !1
                }), "1" == e.data.is_jfpay ? o.setData({
                    sjkqjf: !0
                }) : o.setData({
                    sjkqjf: !1
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Url",
            cachetime: "0",
            success: function(e) {
                o.setData({
                    url: e.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(e) {
                console.log(e), o.setData({
                    ptxx: e.data,
                    jf_proportion: e.data.jf_proportion
                }), "1" == e.data.is_yue ? o.setData({
                    ptkqyue: !0
                }) : o.setData({
                    ptkqyue: !1
                }), "1" == e.data.is_jfpay ? o.setData({
                    ptkqjf: !0
                }) : o.setData({
                    ptkqjf: !1
                });
            }
        });
    },
    onReady: function() {},
    onShow1: function() {
        var t = this, e = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: e
            },
            success: function(e) {
                console.log(e), t.setData({
                    wallet: e.data.wallet,
                    total_score: e.data.total_score
                });
            }
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.onLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});