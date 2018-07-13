var app = getApp();

Page({
    data: {
        disabled: !0,
        zh: "",
        mm: "",
        logintext: "登录"
    },
    tel: function() {
        wx.makePhoneCall({
            phoneNumber: this.data.tel
        });
    },
    srzh: function(t) {
        console.log(t.detail.value), this.setData({
            zh: t.detail.value
        }), "" != this.data.zh && "" != this.data.mm ? this.setData({
            disabled: !1
        }) : this.setData({
            disabled: !0
        });
    },
    srmm: function(t) {
        console.log(t.detail.value), this.setData({
            mm: t.detail.value
        }), "" != this.data.zh && "" != this.data.mm ? this.setData({
            disabled: !1
        }) : this.setData({
            disabled: !0
        });
    },
    login: function() {
        var t = this.data.zh, a = this.data.mm;
        console.log(t, a), this.setData({
            logintext: "登录中...",
            disabled: !0
        });
        var e = this;
        app.util.request({
            url: "entry/wxapp/storelogin",
            cachetime: "0",
            data: {
                user: t,
                password: a
            },
            success: function(t) {
                console.log(t), e.setData({
                    logintext: "登录",
                    disabled: !1
                }), 2 == t.data ? wx.showModal({
                    title: "提示",
                    content: "您的帐号或密码错误，请重新输入"
                }) : "1" == t.data.state ? (wx.setStorageSync("sjdsjid", t.data.store_id), wx.redirectTo({
                    url: "gzt"
                })) : wx.showModal({
                    title: "提示",
                    content: "该帐号已禁用"
                });
            }
        });
    },
    onLoad: function(t) {
        var a = this;
        console.log(this);
        var e = wx.getStorageSync("sjdsjid");
        console.log(e), e ? (console.log("已存在"), wx.redirectTo({
            url: "gzt"
        })) : console.log("不存在"), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(t) {
                console.log(t), a.setData({
                    bqxx: t.data,
                    tel: t.data.tel
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