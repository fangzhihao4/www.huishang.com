var app = getApp(), util = require("../../../utils/util.js");

Page({
    data: {
        activeid: "",
        disabled: !1,
        disabled1: !1,
        isxz: !1
    },
    onLoad: function(t) {
        this.setData({
            cpid: t.cpid
        }), this.reLoad();
    },
    xzfl: function() {
        this.setData({
            isxz: !0,
            activeid: ""
        });
    },
    qx: function() {
        this.setData({
            isxz: !1
        });
    },
    bianji: function(t) {
        var e = t.currentTarget.dataset.id;
        console.log(e), this.setData({
            activeid: e
        });
    },
    sc: function(t) {
        var e = this, a = t.currentTarget.dataset.id;
        console.log(a), wx.showModal({
            title: "提示",
            content: "确认删除此分类吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/DelSpec",
                    cachetime: "0",
                    data: {
                        spec_id: a
                    },
                    success: function(t) {
                        console.log(t), 1 == t.data && (wx.showToast({
                            title: "操作成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.reLoad();
                        }, 1e3));
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    reLoad: function() {
        var e = this, t = this.data.cpid;
        console.log(t), app.util.request({
            url: "entry/wxapp/AppSpec",
            cachetime: "0",
            data: {
                dishes_id: t
            },
            success: function(t) {
                console.log(t), e.setData({
                    flarr: t.data
                });
            }
        });
    },
    formSubmit1: function(t) {
        console.log("form1发生了submit事件，携带数据为：", t.detail.value);
        var e = this, a = this.data.cpid, i = t.detail.value.flmc, o = t.detail.value.pxxh;
        console.log("", a, i, o);
        var s = "", n = !0;
        "" == i ? s = "请填写规格名称！" : "" == o ? s = "请填写价格！" : (e.setData({
            disabled1: !0
        }), n = !1, app.util.request({
            url: "entry/wxapp/AddSpec",
            cachetime: "0",
            data: {
                cost: o,
                name: i,
                id: "",
                dishes_id: a
            },
            success: function(t) {
                console.log(t), 1 == t.data ? (wx.showToast({
                    title: "操作成功"
                }), setTimeout(function() {
                    e.reLoad(), e.setData({
                        isxz: !1,
                        disabled1: !1
                    });
                }, 1e3)) : (e.setData({
                    disabled1: !1
                }), wx.showToast({
                    title: "请修改后提交！",
                    icon: "loading"
                }));
            }
        })), 1 == n && wx.showModal({
            title: "提示",
            content: s
        });
    },
    formSubmit: function(t) {
        console.log("form发生了submit事件，携带数据为：", t.detail.value);
        var e = this, a = this.data.activeid, i = this.data.cpid, o = t.detail.value.flmc, s = t.detail.value.pxxh;
        console.log(a, i, o, s);
        var n = "", c = !0;
        "" == o ? n = "请填写规格名称！" : "" == s ? n = "请填写价格！" : (e.setData({
            disabled: !0
        }), c = !1, app.util.request({
            url: "entry/wxapp/AddSpec",
            cachetime: "0",
            data: {
                cost: s,
                name: o,
                id: a,
                dishes_id: i
            },
            success: function(t) {
                console.log(t), 1 == t.data ? (wx.showToast({
                    title: "操作成功"
                }), setTimeout(function() {
                    e.reLoad(), e.setData({
                        activeid: "",
                        disabled: !1
                    });
                }, 1e3)) : (e.setData({
                    disabled: !1
                }), wx.showToast({
                    title: "请修改后提交！",
                    icon: "loading"
                }));
            }
        })), 1 == c && wx.showModal({
            title: "提示",
            content: n
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});