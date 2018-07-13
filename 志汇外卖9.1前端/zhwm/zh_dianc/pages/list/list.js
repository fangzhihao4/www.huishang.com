var app = getApp(), util = require("../../utils/util.js");

Page({
    data: {
        tabs: [ "外卖", "点餐", "预定" ],
        wm: "外卖",
        dc: "点餐",
        yd: "预定",
        activeIndex: 0,
        dndd: [],
        wmdd: []
    },
    tabClick: function(t) {
        this.setData({
            activeIndex: t.currentTarget.id
        });
    },
    onLoad: function(t) {
        var e = wx.getStorageSync("imglink"), o = t.activeindex;
        this.setData({
            activeIndex: o,
            imglink: e
        });
    },
    onReady: function() {},
    onShow: function() {
        var t = wx.getStorageSync("bqxx");
        console.log(t);
        var o = this;
        if (app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(t) {
                console.log(t), "" != t.data.wm_name && o.setData({
                    wm: t.data.wm_name
                }), "" != t.data.dc_name && o.setData({
                    dc: t.data.dc_name
                }), "" != t.data.yd_name && o.setData({
                    yd: t.data.yd_name
                });
                var e = Number(t.data.day);
                console.log(e), 0 == e && (e = 1), o.setData({
                    day: e
                });
            }
        }), "1" == t.more) var e = wx.getStorageSync("bqxx").color;
        if ("2" == t.more) e = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: e
        }), this.setData({
            color: e
        }), console.log("ddonShow"), this.reLoad();
    },
    reLoad: function() {
        var t = wx.getStorageSync("users").id, i = this;
        app.util.request({
            url: "entry/wxapp/MyReservation",
            cachetime: "0",
            data: {
                user_id: t
            },
            success: function(t) {
                console.log(t), i.setData({
                    ydlist: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/myorder",
            cachetime: "0",
            data: {
                user_id: t
            },
            success: function(t) {
                console.log(t);
                for (var e = [], o = [], a = 0; a < t.data.length; a++) "1" == t.data[a].type ? o.push(t.data[a]) : e.push(t.data[a]), 
                i.setData({
                    dndd: e,
                    wmdd: o
                });
                for (var n = 0; n < o.length; n++) if ("3" == o[n].state) {
                    var c = util.formatTime(new Date()).substring(0, 10).replace(/\//g, "-"), s = o[n].time.substring(0, 10);
                    console.log(s, c);
                    var d = util.DateDiff(s, c);
                    console.log(d, i.data.day), d >= i.data.day && app.util.request({
                        url: "entry/wxapp/Complete",
                        cachetime: "0",
                        data: {
                            id: o[n].id
                        },
                        success: function(t) {
                            console.log(t.data), "1" == t.data && (console.log("自动确认收货"), i.reLoad());
                        }
                    });
                }
                console.log(e, o);
            }
        });
    },
    qxyy: function(e) {
        var o = this;
        console.log("取消预约" + e.currentTarget.dataset.yyid), wx.showModal({
            title: "提示",
            content: "确定取消预约么",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/CancelReservation",
                    cachetime: "0",
                    data: {
                        id: e.currentTarget.dataset.yyid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "取消成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            o.reLoad();
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
    ckxq: function(t) {
        console.log("查看详情" + t.currentTarget.dataset.yyid), wx.navigateTo({
            url: "reserveinfo/reserveinfo?yyid=" + t.currentTarget.dataset.yyid
        });
    },
    qxdd: function(e) {
        var o = this;
        console.log("取消订单" + e.currentTarget.dataset.wmddid), wx.showModal({
            title: "提示",
            content: "确定取消订单么",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/CancelOrder",
                    cachetime: "0",
                    data: {
                        order_id: e.currentTarget.dataset.wmddid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "取消成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            o.reLoad();
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
    ljzf: function(t) {
        console.log("立即支付" + t.currentTarget.dataset.wmddid), wx.navigateTo({
            url: "waim/waim?wmddid=" + t.currentTarget.dataset.wmddid
        });
    },
    txsj: function(t) {
        console.log("提醒商家" + t.currentTarget.dataset.wmddtel), wx.makePhoneCall({
            phoneNumber: t.currentTarget.dataset.wmddtel
        });
    },
    lxsj: function(t) {
        console.log("联系商家" + t.currentTarget.dataset.wmddtel), wx.makePhoneCall({
            phoneNumber: t.currentTarget.dataset.wmddtel
        });
    },
    qrsh: function(e) {
        var o = this;
        console.log("确认收货" + e.currentTarget.dataset.wmddid), wx.showModal({
            title: "提示",
            content: "确定收货么",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Complete",
                    cachetime: "0",
                    data: {
                        id: e.currentTarget.dataset.wmddid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "收货成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            o.reLoad();
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
        var o = this;
        console.log("删除订单" + e.currentTarget.dataset.wmddid), wx.showModal({
            title: "提示",
            content: "删除订单么",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/DelOrder",
                    cachetime: "0",
                    data: {
                        order_id: e.currentTarget.dataset.wmddid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "删除成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            o.reLoad();
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
    scyy: function(e) {
        var o = this;
        console.log("删除订单" + e.currentTarget.dataset.yyid), wx.showModal({
            title: "提示",
            content: "删除订单么",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/DelYd",
                    cachetime: "0",
                    data: {
                        id: e.currentTarget.dataset.yyid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "删除成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            o.reLoad();
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
    sqtk: function(e) {
        var o = this;
        console.log("申请退款" + e.currentTarget.dataset.wmddid), wx.showModal({
            title: "提示",
            content: "申请退款么",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Tuik",
                    cachetime: "0",
                    data: {
                        order_id: e.currentTarget.dataset.wmddid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "申请成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            o.reLoad();
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
    yysqtk: function(e) {
        var o = this;
        console.log("预约申请退款" + e.currentTarget.dataset.yyid), wx.showModal({
            title: "提示",
            content: "申请退款么",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/YdRefund",
                    cachetime: "0",
                    data: {
                        id: e.currentTarget.dataset.yyid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "申请成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            o.reLoad();
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
    zlyd: function(t) {
        wx.switchTab({
            url: "../home/home"
        });
    },
    pingjia: function(t) {
        console.log("评价" + t.currentTarget.dataset.wmddid), wx.navigateTo({
            url: "../comment/comment?wmddid=" + t.currentTarget.dataset.wmddid
        });
    },
    dnljzf: function(t) {
        console.log("立即支付" + t.currentTarget.dataset.dnddid), wx.navigateTo({
            url: "choose/choose?dnddid=" + t.currentTarget.dataset.dnddid
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.reLoad(), setTimeout(function() {
            wx.stopPullDownRefresh();
        }, 1e3);
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});