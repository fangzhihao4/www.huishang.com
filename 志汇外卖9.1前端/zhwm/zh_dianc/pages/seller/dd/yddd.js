var dsq, app = getApp();

Page({
    data: {
        tabbar: {},
        tabs: [ "待确认", "已确认", "已取消" ],
        activeIndex: 0,
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
    qrdd: function(a) {
        var e = this, t = a.currentTarget.dataset.oid;
        console.log(t), wx.showModal({
            title: "提示",
            content: "确认订单吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/OkYdOrder",
                    cachetime: "0",
                    data: {
                        order_id: a.currentTarget.dataset.oid
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
    tgtk: function(a) {
        var e = this;
        console.log("通过退款" + a.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定通过退款吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Ydtk",
                    cachetime: "0",
                    data: {
                        order_id: a.currentTarget.dataset.oid
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
    jjtk: function(a) {
        var e = this;
        console.log("拒绝退款" + a.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定拒绝退款吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Tkjj",
                    cachetime: "0",
                    data: {
                        order_id: a.currentTarget.dataset.oid
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
    scdd: function(a) {
        var e = this;
        console.log("删除订单" + a.currentTarget.dataset.oid), wx.showModal({
            title: "提示",
            content: "确定删除吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/Del",
                    cachetime: "0",
                    data: {
                        order_id: a.currentTarget.dataset.oid
                    },
                    success: function(t) {
                        console.log(t.data), "1" == t.data ? (wx.showToast({
                            title: "提交成功",
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
        t.activeIndex && this.setData({
            activeIndex: parseInt(t.activeIndex)
        });
        var a = wx.getStorageSync("sjdsjid");
        console.log(a), this.reLoad(this.data.date);
    },
    reLoad: function(t) {
        var a = wx.getStorageSync("sjdsjid");
        console.log(a);
        var d = this;
        app.util.request({
            url: "entry/wxapp/AppYdOrder",
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
                for (var e = [], o = [], n = [], s = 0; s < a.length; s++) "1" == a[s].state && e.push(a[s]), 
                "2" == a[s].state && o.push(a[s]), "4" != a[s].state && "5" != a[s].state && "6" != a[s].state && "7" != a[s].state || n.push(a[s]);
                console.log(e, o, n), d.setData({
                    dqr: e,
                    yqr: o,
                    yqx: n,
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