var dsq, app = getApp();

Page({
    data: {
        tabbar: {},
        tabs: [ "待接单", "待配送", "退款订单", "已完成" ],
        activeIndex: 0,
        fwxy: !0,
        date: "",
        pagenum: 1,
        ddlist: [],
        mygd: !1,
        jzgd: !0,
        jzwb: !1
    },
    bindDateChange: function(t) {
        this.setData({
            date: t.detail.value
        });
    },
    sousuo: function() {
        this.setData({
            pagenum: 1,
            ddlist: [],
            mygd: !1,
            jzgd: !0,
            jzwb: !1
        }), this.reLoad(this.data.date);
    },
    kfwjd: function(t) {
        var e = this, a = t.currentTarget.dataset.oid, o = t.currentTarget.dataset.istake;
        console.log(a, o), "2" == o ? wx.showModal({
            title: "提示",
            content: "确定接单吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/kfw",
                    cachetime: "0",
                    data: {
                        order_id: a
                    },
                    success: function(t) {
                        console.log(t), "0000" == t.data ? (wx.showToast({
                            title: "接单成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), e.reLoad(e.data.date);
                        }, 1e3)) : wx.showModal({
                            title: "提示",
                            content: "接单失败"
                        });
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        }) : wx.showModal({
            title: "提示",
            content: "确定接单吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/JieOrder",
                    cachetime: "0",
                    data: {
                        order_id: a
                    },
                    success: function(t) {
                        console.log(t), 1 == t.data && (wx.showToast({
                            title: "接单成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), e.reLoad(e.data.date);
                        }, 1e3));
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    rrjd: function(t) {
        var e = this, a = t.currentTarget.dataset.oid, o = t.currentTarget.dataset.istake;
        console.log(a, o), "2" == o ? wx.showModal({
            title: "提示",
            content: "确定接单吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), wx.showModal({
                    title: "提示",
                    content: "正在请求人人快递第三方接口，请耐心等待！不要重复点接单"
                }), app.util.request({
                    url: "entry/wxapp/RrOrder",
                    cachetime: "0",
                    data: {
                        order_id: a
                    },
                    success: function(t) {
                        console.log(t, t.data.indexOf("下单成功")), -1 != t.data.indexOf("下单成功") ? (wx.showToast({
                            title: "接单成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), e.reLoad(e.data.date);
                        }, 1e3)) : wx.showModal({
                            title: "请求报错",
                            content: t.data
                        });
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        }) : wx.showModal({
            title: "提示",
            content: "确定接单吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/JieOrder",
                    cachetime: "0",
                    data: {
                        order_id: a
                    },
                    success: function(t) {
                        console.log(t), 1 == t.data && (wx.showToast({
                            title: "接单成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), e.reLoad(e.data.date);
                        }, 1e3));
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    lookck: function(t) {
        var e = this, a = t.currentTarget.dataset.oid, o = t.currentTarget.dataset.istake;
        console.log(a, o), "2" == o ? (this.setData({
            fwxy: !1
        }), app.util.request({
            url: "entry/wxapp/GetOrderPrice",
            cachetime: "0",
            data: {
                order_id: t.currentTarget.dataset.oid
            },
            success: function(t) {
                console.log(t), console.log("uu信息", JSON.parse(t.data)), e.setData({
                    uuinfo: JSON.parse(t.data),
                    oid: a
                });
            }
        })) : wx.showModal({
            title: "提示",
            content: "确定接单吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/JieOrder",
                    cachetime: "0",
                    data: {
                        order_id: a
                    },
                    success: function(t) {
                        console.log(t), 1 == t.data && (wx.showToast({
                            title: "接单成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), e.reLoad(e.data.date);
                        }, 1e3));
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    qx: function() {
        this.setData({
            fwxy: !0,
            uuinfo: ""
        });
    },
    queren: function() {
        var e = this, t = this.data.oid, a = this.data.uuinfo;
        console.log(t, a), null != a ? app.util.request({
            url: "entry/wxapp/UuAddOrder",
            cachetime: "0",
            data: {
                order_id: t,
                price_token: a.price_token,
                total_money: a.total_money,
                need_paymoney: a.need_paymoney
            },
            success: function(t) {
                console.log(t, JSON.parse(t.data)), "ok" == JSON.parse(t.data).return_code && "订单发布成功" == JSON.parse(t.data).return_msg ? (wx.showToast({
                    title: "接单成功",
                    duration: 1e3
                }), e.setData({
                    fwxy: !0,
                    uuinfo: ""
                }), setTimeout(function() {
                    e.setData({
                        pagenum: 1,
                        ddlist: [],
                        mygd: !1,
                        jzgd: !0,
                        jzwb: !1
                    }), e.reLoad(e.data.date);
                }, 1e3)) : ("账户余额不足，请使用在线支付方式" == JSON.parse(t.data).return_msg ? wx.showToast({
                    title: "账户余额不足",
                    icon: "loading"
                }) : wx.showToast({
                    title: "网络错误",
                    icon: "loading"
                }), e.setData({
                    fwxy: !0,
                    uuinfo: ""
                }));
            }
        }) : wx.showToast({
            title: "网络错误"
        });
    },
    tabClick: function(t) {
        this.setData({
            activeIndex: t.currentTarget.id
        });
    },
    dw: function(t) {
        console.log(t.currentTarget.dataset), wx.openLocation({
            latitude: Number(t.currentTarget.dataset.lat),
            longitude: Number(t.currentTarget.dataset.lng),
            scale: 28,
            address: t.currentTarget.dataset.wz
        });
    },
    tel: function(t) {
        console.log(t.currentTarget.dataset.tel), wx.makePhoneCall({
            phoneNumber: t.currentTarget.dataset.tel
        });
    },
    jied: function(e) {
        var a = this, t = e.currentTarget.dataset.oid;
        console.log(t), wx.showModal({
            title: "提示",
            content: "确定接单吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/JieOrder",
                    cachetime: "0",
                    data: {
                        order_id: e.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t), 1 == t.data && (wx.showToast({
                            title: "接单成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            a.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), a.reLoad(a.data.date);
                        }, 1e3));
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    wcps: function(e) {
        var a = this;
        console.log("完成配送" + e.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定完成配送吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Complete",
                    cachetime: "0",
                    data: {
                        id: e.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "提交成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            a.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), a.reLoad(a.data.date);
                        }, 1e3)) : wx.showToast({
                            title: "请重试",
                            icon: "loading",
                            duration: 1e3
                        });
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    tgtk: function(e) {
        var a = this;
        console.log("通过退款" + e.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定通过退款吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Tg",
                    cachetime: "0",
                    data: {
                        order_id: e.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "提交成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            a.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), a.reLoad(a.data.date);
                        }, 1e3)) : wx.showToast({
                            title: "请重试",
                            icon: "loading",
                            duration: 1e3
                        });
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    jjtk: function(e) {
        var a = this;
        console.log("拒绝退款" + e.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定拒绝退款吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Jj",
                    cachetime: "0",
                    data: {
                        order_id: e.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "提交成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            a.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), a.reLoad(a.data.date);
                        }, 1e3)) : wx.showToast({
                            title: "请重试",
                            icon: "loading",
                            duration: 1e3
                        });
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    scdd: function(e) {
        var a = this;
        console.log("删除订单" + e.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定删除吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Del",
                    cachetime: "0",
                    data: {
                        order_id: e.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "提交成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            a.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), a.reLoad(a.data.date);
                        }, 1e3)) : wx.showToast({
                            title: "请重试",
                            icon: "loading",
                            duration: 1e3
                        });
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    onLoad: function(t) {
        app.editTabBar();
        var e = this;
        t.activeIndex && this.setData({
            activeIndex: parseInt(t.activeIndex)
        });
        var a = wx.getStorageSync("sjdsjid");
        console.log(a), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: a
            },
            success: function(t) {
                console.log("商家信息", t), e.setData({
                    psmode: t.data.ps_mode
                });
            }
        }), this.reLoad(this.data.date);
    },
    reLoad: function(t) {
        app.editTabBar();
        var e = wx.getStorageSync("sjdsjid");
        console.log(e);
        var c = this;
        app.util.request({
            url: "entry/wxapp/StoreOrder",
            cachetime: "0",
            data: {
                store_id: e,
                page: c.data.pagenum,
                time: t
            },
            success: function(t) {
                console.log("分页返回的数据", t.data), 0 == t.data.length ? c.setData({
                    mygd: !0,
                    jzgd: !0,
                    jzwb: !0
                }) : c.setData({
                    jzgd: !0,
                    pagenum: c.data.pagenum + 1
                });
                var e = c.data.ddlist;
                e = e.concat(t.data);
                for (var a = [], o = [], s = [], n = [], d = 0; d < e.length; d++) "2" == e[d].order.state && a.push(e[d]), 
                "3" == e[d].order.state && o.push(e[d]), "7" != e[d].order.state && "8" != e[d].order.state && "9" != e[d].order.state || s.push(e[d]), 
                "4" != e[d].order.state && "6" != e[d].order.state || n.push(e[d]);
                console.log(a, o, s, n), c.setData({
                    djd: a,
                    dps: o,
                    tkdd: s,
                    ywc: n,
                    ddlist: e
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {
        clearInterval(dsq);
    },
    onPullDownRefresh: function() {
        this.setData({
            date: "",
            pagenum: 1,
            ddlist: [],
            mygd: !1,
            jzgd: !0,
            jzwb: !1
        }), this.reLoad(this.data.date), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {
        console.log("上拉加载", this.data.pagenum);
        !this.data.mygd && this.data.jzgd && (this.setData({
            jzgd: !1
        }), this.reLoad(this.data.date));
    },
    onShareAppMessage: function() {}
});