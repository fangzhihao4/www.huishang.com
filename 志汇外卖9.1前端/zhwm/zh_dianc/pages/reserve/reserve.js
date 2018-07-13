var form_id, app = getApp(), util = require("../../utils/util.js");

Page({
    data: {
        date: "",
        index: 0,
        jindex: 0,
        time: "12:00",
        array: [],
        jcrsarray: [ "1人", "2人", "3人", "4人", "5人", "6人", "7人", "8人", "9人", "10人", "10人以上" ],
        showModal: !1,
        zftype: !0,
        zffs: 1,
        zfz: !1,
        zfwz: "微信支付",
        btntype: "btn_ok1"
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
    radioChange: function(e) {
        console.log("radio发生change事件，携带value值为：", e.detail.value), this.setData({
            zflx: e.detail.value
        }), "wxzf" == e.detail.value && this.setData({
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
    bindPickerChange: function(e) {
        console.log("picker发送选择改变，携带值为", e.detail.value), this.setData({
            index: e.detail.value
        });
    },
    bindDateChange: function(e) {
        console.log("picker发送选择改变，携带值为", e.detail.value), this.setData({
            date: e.detail.value
        });
    },
    bindTimeChange: function(e) {
        console.log("picker发送选择改变，携带值为", e.detail.value), this.setData({
            time: e.detail.value
        });
    },
    bindjcrsChange: function(e) {
        console.log("picker发送选择改变，携带值为", e.detail.value), this.setData({
            jindex: e.detail.value
        });
    },
    formSubmit: function(e) {
        var a = this;
        form_id = e.detail.formId, a.setData({
            form_id: form_id
        }), console.log("form发生了submit事件，携带数据为：", e.detail.value);
        var t = this.data.array;
        if (console.log(t), 0 != t.length) {
            var o = wx.getStorageSync("openid"), s = this.data.store.name, i = wx.getStorageSync("users").id, n = this.data.store.id, l = e.detail.value.datepicker, c = e.detail.value.timepicker, r = e.detail.value.zwpicker.name, d = e.detail.value.zwpicker.id, u = e.detail.value.zwpicker.zd_cost, p = e.detail.value.lxr, f = e.detail.value.jcrs, m = e.detail.value.tel, _ = parseFloat(e.detail.value.zwpicker.yd_cost), y = e.detail.value.beizhu;
            console.log(o, s, i, n, l, c, r, d, p, f, m, _, y), a.setData({
                ydcost: _,
                forminfo: e.detail.value
            });
            var w = "", h = !0;
            "" == p ? w = "请填写您的姓名！" : "" == f ? w = "请选择您的就惨人数" : "" == m ? w = "请填写您的手机号！" : /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/.test(m) ? (h = !1, 
            "" == form_id ? wx.showToast({
                title: "网络不好",
                icon: "loading",
                duration: 500,
                mask: !0,
                success: function(e) {},
                fail: function(e) {},
                complete: function(e) {}
            }) : 0 < _ ? a.setData({
                showModal: !0
            }) : app.util.request({
                url: "entry/wxapp/Reservation",
                cachetime: "0",
                data: {
                    store_id: n,
                    user_id: i,
                    xz_date: l,
                    yjdd_date: c,
                    table_type_id: d,
                    table_type_name: r,
                    zd_cost: u,
                    link_name: p,
                    link_tel: m,
                    jc_num: f,
                    remark: y,
                    money: _,
                    ydcode: ""
                },
                success: function(e) {
                    console.log(e);
                    var t = e.data;
                    "预定失败" != e.data ? (wx.showModal({
                        title: "提示",
                        content: "预约成功等待审核",
                        showCancel: !1
                    }), setTimeout(function() {
                        wx.redirectTo({
                            url: "reserveinfo?ydid=" + e.data
                        });
                    }, 1e3), "1" == a.data.ptxx.is_email && app.util.request({
                        url: "entry/wxapp/email",
                        cachetime: "0",
                        data: {
                            store_id: n,
                            type: "预约"
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    }), app.util.request({
                        url: "entry/wxapp/moban2",
                        cachetime: "0",
                        data: {
                            id: t
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    }), app.util.request({
                        url: "entry/wxapp/SmsSet",
                        cachetime: "0",
                        data: {
                            store_id: n
                        },
                        success: function(e) {
                            console.log(e), "1" == e.data.is_yysms && app.util.request({
                                url: "entry/wxapp/sms2",
                                cachetime: "0",
                                data: {
                                    store_id: n
                                },
                                success: function(e) {
                                    console.log(e);
                                }
                            });
                        }
                    }), app.util.request({
                        url: "entry/wxapp/Message3",
                        cachetime: "0",
                        data: {
                            openid: o,
                            form_id: form_id,
                            xz_date: l,
                            store_name: s,
                            yjdd_date: c,
                            link_name: p,
                            link_tel: m,
                            jc_num: f,
                            remark: y
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    })) : wx.showToast({
                        title: "请重试",
                        icon: "loading",
                        duration: 1e3
                    });
                }
            })) : w = "手机号格式不正确", 1 == h && wx.showModal({
                title: "提示",
                content: w
            });
        } else wx.showModal({
            title: "提示",
            content: "商家暂未添加桌位类型，暂时不能预定"
        });
    },
    qdzf: function() {
        this.setData({
            zfz: !0
        });
        var a = this, e = this.data.forminfo, t = this.data.zffs, o = wx.getStorageSync("openid"), s = this.data.store.name, i = wx.getStorageSync("users").id, n = this.data.store.id, l = e.datepicker, c = e.timepicker, r = e.zwpicker.name, d = e.zwpicker.id, u = e.zwpicker.zd_cost, p = e.lxr, f = e.jcrs, m = e.tel, _ = parseFloat(e.zwpicker.yd_cost), y = e.beizhu;
        if (console.log(o, s, i, n, l, c, r, d, p, f, m, _, y), console.log(e, form_id, t), 
        2 == t) {
            var w = Number(this.data.wallet), h = Number(this.data.ydcost);
            if (console.log(w, h), w < h) return wx.showToast({
                title: "余额不足支付",
                icon: "loading"
            }), void a.setData({
                zfz: !1
            });
            console.log("余额支付流程"), app.util.request({
                url: "entry/wxapp/Reservation",
                cachetime: "0",
                data: {
                    store_id: n,
                    user_id: i,
                    xz_date: l,
                    yjdd_date: c,
                    table_type_id: d,
                    table_type_name: r,
                    zd_cost: u,
                    link_name: p,
                    link_tel: m,
                    jc_num: f,
                    remark: y,
                    money: _,
                    is_yue: 1,
                    jf: 0
                },
                success: function(e) {
                    console.log(e);
                    var t = e.data;
                    "预定失败" != e.data ? (wx.showModal({
                        title: "提示",
                        content: "预约成功等待审核",
                        showCancel: !1
                    }), a.setData({
                        showModal: !1
                    }), setTimeout(function() {
                        wx.redirectTo({
                            url: "reserveinfo?ydid=" + e.data
                        });
                    }, 1e3), "1" == a.data.ptxx.is_email && app.util.request({
                        url: "entry/wxapp/email",
                        cachetime: "0",
                        data: {
                            store_id: n,
                            type: "预约"
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    }), app.util.request({
                        url: "entry/wxapp/moban2",
                        cachetime: "0",
                        data: {
                            id: t
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    }), app.util.request({
                        url: "entry/wxapp/SmsSet",
                        cachetime: "0",
                        data: {
                            store_id: n
                        },
                        success: function(e) {
                            console.log(e), "1" == e.data.is_yysms && app.util.request({
                                url: "entry/wxapp/sms2",
                                cachetime: "0",
                                data: {
                                    store_id: n
                                },
                                success: function(e) {
                                    console.log(e);
                                }
                            });
                        }
                    }), app.util.request({
                        url: "entry/wxapp/Message3",
                        cachetime: "0",
                        data: {
                            openid: o,
                            form_id: form_id,
                            xz_date: l,
                            store_name: s,
                            yjdd_date: c,
                            link_name: p,
                            link_tel: m,
                            jc_num: f,
                            remark: y
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    })) : wx.showToast({
                        title: "请重试",
                        icon: "loading",
                        duration: 1e3
                    });
                }
            });
        }
        if (3 == t) {
            var g = Number(this.data.total_score) / Number(this.data.jf_proportion), x = (h = Number(this.data.ydcost)) * Number(this.data.jf_proportion);
            if (console.log(g, h, x), g < h) return wx.showToast({
                title: "积分不足支付",
                icon: "loading"
            }), void a.setData({
                zfz: !1
            });
            console.log("积分支付流程"), app.util.request({
                url: "entry/wxapp/Reservation",
                cachetime: "0",
                data: {
                    store_id: n,
                    user_id: i,
                    xz_date: l,
                    yjdd_date: c,
                    table_type_id: d,
                    table_type_name: r,
                    zd_cost: u,
                    link_name: p,
                    link_tel: m,
                    jc_num: f,
                    remark: y,
                    money: _,
                    is_yue: 3,
                    jf: x
                },
                success: function(e) {
                    console.log(e);
                    var t = e.data;
                    "预定失败" != e.data ? (wx.showModal({
                        title: "提示",
                        content: "预约成功等待审核",
                        showCancel: !1
                    }), a.setData({
                        showModal: !1
                    }), setTimeout(function() {
                        wx.redirectTo({
                            url: "reserveinfo?ydid=" + e.data
                        });
                    }, 1e3), "1" == a.data.ptxx.is_email && app.util.request({
                        url: "entry/wxapp/email",
                        cachetime: "0",
                        data: {
                            store_id: n,
                            type: "预约"
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    }), app.util.request({
                        url: "entry/wxapp/moban2",
                        cachetime: "0",
                        data: {
                            id: t
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    }), app.util.request({
                        url: "entry/wxapp/SmsSet",
                        cachetime: "0",
                        data: {
                            store_id: n
                        },
                        success: function(e) {
                            console.log(e), "1" == e.data.is_yysms && app.util.request({
                                url: "entry/wxapp/sms2",
                                cachetime: "0",
                                data: {
                                    store_id: n
                                },
                                success: function(e) {
                                    console.log(e);
                                }
                            });
                        }
                    }), app.util.request({
                        url: "entry/wxapp/Message3",
                        cachetime: "0",
                        data: {
                            openid: o,
                            form_id: form_id,
                            xz_date: l,
                            store_name: s,
                            yjdd_date: c,
                            link_name: p,
                            link_tel: m,
                            jc_num: f,
                            remark: y
                        },
                        success: function(e) {
                            console.log(e);
                        }
                    })) : wx.showToast({
                        title: "请重试",
                        icon: "loading",
                        duration: 1e3
                    });
                }
            });
        }
        1 == t && (console.log("微信支付流程"), app.util.request({
            url: "entry/wxapp/Reservation",
            cachetime: "0",
            data: {
                store_id: n,
                user_id: i,
                xz_date: l,
                yjdd_date: c,
                table_type_id: d,
                table_type_name: r,
                zd_cost: u,
                link_name: p,
                link_tel: m,
                jc_num: f,
                remark: y,
                money: _,
                is_yue: 2,
                form_id: form_id
            },
            success: function(e) {
                console.log(e);
                var t = e.data;
                "预定失败" != e.data ? (a.setData({
                    showModal: !1
                }), app.util.request({
                    url: "entry/wxapp/pay2",
                    cachetime: "0",
                    data: {
                        openid: o,
                        money: _,
                        order_id: t
                    },
                    success: function(e) {
                        console.log(e), wx.requestPayment({
                            timeStamp: e.data.timeStamp,
                            nonceStr: e.data.nonceStr,
                            package: e.data.package,
                            signType: e.data.signType,
                            paySign: e.data.paySign,
                            success: function(e) {
                                console.log(e), wx.showToast({
                                    title: "支付成功",
                                    duration: 1e3
                                }), console.log(a.data.store);
                            },
                            complete: function(e) {
                                console.log(e), "requestPayment:fail cancel" == e.errMsg && (wx.showToast({
                                    title: "取消支付",
                                    icon: "loading"
                                }), a.setData({
                                    zfz: !1
                                })), "requestPayment:ok" == e.errMsg && (wx.showModal({
                                    title: "提示",
                                    content: "预约成功等待审核",
                                    showCancel: !1
                                }), setTimeout(function() {
                                    wx.redirectTo({
                                        url: "reserveinfo?ydid=" + t
                                    });
                                }, 1e3));
                            }
                        });
                    }
                })) : wx.showToast({
                    title: "请重试",
                    icon: "loading",
                    duration: 1e3
                });
            }
        }));
    },
    onLoad: function(e) {
        var t = this, a = util.formatTime(new Date()).substring(0, 10).replace(/\//g, "-");
        console.log(a.toString()), this.setData({
            date: a
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(e) {
                console.log(e), t.setData({
                    ptxx: e.data,
                    jf_proportion: e.data.jf_proportion
                }), "1" == e.data.is_yue ? t.setData({
                    ptkqyue: !0
                }) : t.setData({
                    ptkqyue: !1
                }), "1" == e.data.is_jfpay ? t.setData({
                    ptkqjf: !0
                }) : t.setData({
                    ptkqjf: !1
                });
            }
        });
        var o = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: o
            },
            success: function(e) {
                console.log(e), t.setData({
                    wallet: e.data.wallet,
                    total_score: e.data.total_score
                });
            }
        }), app.util.request({
            url: "entry/wxapp/TableType",
            cachetime: "0",
            data: {
                store_id: getApp().sjid
            },
            success: function(e) {
                console.log(e), t.setData({
                    array: e.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: getApp().sjid
            },
            success: function(e) {
                console.log(e), "1" == e.data.is_yue ? t.setData({
                    sjkqyue: !0
                }) : t.setData({
                    sjkqyue: !1
                }), "1" == e.data.is_jfpay ? t.setData({
                    sjkqjf: !0
                }) : t.setData({
                    sjkqjf: !1
                }), wx.setNavigationBarColor({
                    frontColor: "#ffffff",
                    backgroundColor: e.data.color
                }), t.setData({
                    store: e.data,
                    color: e.data.color
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.onLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});