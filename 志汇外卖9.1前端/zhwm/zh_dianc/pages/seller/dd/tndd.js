var dsq, app = getApp();

Page({
    data: {
        tabbar: {},
        tabs: [ "待支付", "已完成", "已关闭" ],
        activeIndex: 0,
        date: "",
        pagenum: 1,
        ddlist: [],
        mygd: !1,
        jzgd: !0,
        jzwb: !1
    },
    tabClick: function(t) {
        this.setData({
            activeIndex: t.currentTarget.id
        });
    },
    tel: function(t) {
        console.log(t.currentTarget.dataset.tel), wx.makePhoneCall({
            phoneNumber: t.currentTarget.dataset.tel
        });
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
    qrsk: function(a) {
        var e = this, t = a.currentTarget.dataset.oid;
        console.log(t), wx.showModal({
            title: "提示",
            content: "确认收款吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/OkDnOrder",
                    cachetime: "0",
                    data: {
                        id: a.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t), 1 == t.data && (wx.showToast({
                            title: "操作成功",
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
    gbdd: function(a) {
        var e = this;
        console.log("关闭订单" + a.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定关闭订单吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/DownDnOrder",
                    cachetime: "0",
                    data: {
                        id: a.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "操作成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), e.reLoad(e.data.date);
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
    cxkt: function(a) {
        var e = this;
        console.log("重新开台" + a.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定重新开台吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/OpenTable",
                    cachetime: "0",
                    data: {
                        id: a.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "操作成功",
                            icon: "success",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.setData({
                                pagenum: 1,
                                ddlist: [],
                                mygd: !1,
                                jzgd: !0,
                                jzwb: !1
                            }), e.reLoad(e.data.date);
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
        var a = this;
        t.activeIndex && this.setData({
            activeIndex: parseInt(t.activeIndex)
        });
        var e = wx.getStorageSync("sjdsjid");
        console.log(e), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: e
            },
            success: function(t) {
                console.log("商家信息", t), "3" == t.data.ps_mode && a.setData({
                    isuu: !0
                });
            }
        }), this.reLoad(this.data.date);
    },
    reLoad: function(t) {
        var a = wx.getStorageSync("sjdsjid");
        console.log(a);
        var d = this;
        app.util.request({
            url: "entry/wxapp/AppDnOrder",
            cachetime: "0",
            data: {
                store_id: a,
                page: d.data.pagenum,
                time: t
            },
            success: function(t) {
                console.log("分页返回的数据", t.data), 0 == t.data.length ? d.setData({
                    mygd: !0,
                    jzgd: !0,
                    jzwb: !0
                }) : d.setData({
                    jzgd: !0,
                    pagenum: d.data.pagenum + 1
                });
                var a = d.data.ddlist;
                a = a.concat(t.data);
                for (var e = [], o = [], n = [], s = 0; s < a.length; s++) "1" == a[s].dn_state && e.push(a[s]), 
                "2" == a[s].dn_state && o.push(a[s]), "3" == a[s].dn_state && n.push(a[s]);
                console.log(e, o, n), d.setData({
                    dzf: e,
                    ywc: o,
                    ygb: n,
                    ddlist: a
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