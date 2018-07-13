var app = getApp();

Page({
    data: {
        open: !1,
        kong: !0
    },
    onLoad: function(e) {
        var t = this, a = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(e) {
                console.log(e), t.setData({
                    wallet: e.data.wallet
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Czhd",
            cachetime: "0",
            success: function(e) {
                console.log(e), t.setData({
                    czhd: e.data
                });
            }
        });
    },
    jsmj: function(e, t) {
        for (var a, n = 0; n < t.length; n++) if (Number(e) >= Number(t[n].full)) {
            a = n;
            break;
        }
        return a;
    },
    bindInput: function(e) {
        console.log(e.detail.value), this.setData({
            czje: e.detail.value
        }), "" != e.detail.value ? this.setData({
            kong: !1
        }) : this.setData({
            kong: !0
        });
    },
    tradeinfo: function() {
        this.setData({
            open: !this.data.open
        });
    },
    formSubmit: function(e) {
        var t = e.detail.formId;
        console.log("form发生了submit事件，携带数据为：", e.detail, e.detail.formId);
        var a = wx.getStorageSync("openid"), n = e.detail.value.czje, o = this.data.czhd, s = wx.getStorageSync("users").id;
        if (console.log(o), 0 == o.length) var i = n; else if (Number(n) >= Number(this.data.czhd[o.length - 1].full)) {
            var c = this.jsmj(n, o);
            console.log(c);
            i = Number(n) + Number(o[c].reduction);
        } else i = n;
        console.log(a, n, s, i), app.util.request({
            url: "entry/wxapp/AddCzorder",
            cachetime: "0",
            data: {
                user_id: s,
                money: i,
                form_id: t
            },
            success: function(e) {
                console.log(e);
                var t = e.data;
                app.util.request({
                    url: "entry/wxapp/pay4",
                    cachetime: "0",
                    data: {
                        openid: a,
                        money: n,
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
                                console.log(e);
                            },
                            complete: function(e) {
                                console.log(e), "requestPayment:fail cancel" == e.errMsg && wx.showToast({
                                    title: "取消支付"
                                }), "requestPayment:ok" == e.errMsg && (wx.showModal({
                                    title: "提示",
                                    content: "支付成功",
                                    showCancel: !1
                                }), setTimeout(function() {
                                    wx.navigateBack({});
                                }, 1e3));
                            }
                        });
                    }
                });
            }
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