var app = getApp();

Page({
    data: {
        coupon: 0,
        Vouchers: 0
    },
    bindGetUserInfo: function(o) {
        console.log(o), "getUserInfo:ok" == o.detail.errMsg && (this.setData({
            hydl: !1
        }), this.changeData());
    },
    changeData: function() {
        var t = this;
        wx.getSetting({
            success: function(o) {
                console.log(o), o.authSetting["scope.userInfo"] ? wx.getUserInfo({
                    success: function(o) {
                        console.log(o), app.util.request({
                            url: "entry/wxapp/login",
                            cachetime: "0",
                            data: {
                                openid: wx.getStorageSync("openid"),
                                img: o.userInfo.avatarUrl,
                                name: o.userInfo.nickName
                            },
                            header: {
                                "content-type": "application/json"
                            },
                            dataType: "json",
                            success: function(o) {
                                console.log("用户信息", o);
                            }
                        });
                        var e = o.userInfo;
                        e.nickName, e.avatarUrl, e.gender, e.province, e.city, e.country;
                        console.log(e), t.setData({
                            avatarUrl: e.avatarUrl,
                            nickName: e.nickName
                        });
                    }
                }) : (console.log("未授权过"), t.setData({
                    hydl: !0
                }));
            }
        });
    },
    onLoad: function(o) {
        var e = wx.getStorageSync("bqxx");
        if ("1" == e.more) var t = wx.getStorageSync("bqxx").color;
        if ("2" == e.more) t = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: t
        });
        var n = this, a = wx.getStorageSync("bqxx");
        console.log(a), this.setData({
            bqxx: a,
            color: t
        });
        wx.getStorageSync("users").id;
        this.changeData(), app.util.request({
            url: "entry/wxapp/Url",
            cachetime: "0",
            success: function(o) {
                n.setData({
                    url: o.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Url2",
            cachetime: "0",
            success: function(o) {
                console.log(o.data), wx.setStorageSync("url2", o.data);
            }
        }), app.util.request({
            url: "entry/wxapp/FxSet",
            cachetime: "0",
            success: function(o) {
                console.log(o.data), n.setData({
                    fxset: o.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Signset",
            cachetime: "0",
            success: function(o) {
                console.log(o.data), n.setData({
                    qdset: o.data[0]
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {
        var o = wx.getStorageSync("bqxx");
        if ("1" == o.more) var e = wx.getStorageSync("bqxx").color;
        if ("2" == o.more) e = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: e
        });
        var a = this, t = wx.getStorageSync("bqxx");
        console.log(t), this.setData({
            bqxx: t,
            color: e
        });
        var n = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: n
            },
            success: function(o) {
                console.log(o), a.setData({
                    integral: o.data.total_score,
                    wallet: o.data.wallet
                });
            }
        });
        var s, c, l, r = (s = new Date(), c = s.getMonth() + 1, l = s.getDate(), 1 <= c && c <= 9 && (c = "0" + c), 
        0 <= l && l <= 9 && (l = "0" + l), s.getFullYear() + "-" + c + "-" + l + " " + s.getHours() + ":" + s.getMinutes() + ":" + s.getSeconds()).slice(0, 10);
        app.util.request({
            url: "entry/wxapp/Coupons",
            cachetime: "0",
            data: {
                user_id: n
            },
            success: function(o) {
                console.log(o);
                var e = o.data.ok, t = [];
                if (console.log(e.length), 0 < e.length) for (var n = 0; n < e.length; n++) console.log(e[n]), 
                e[n].conditions = Number(e[n].conditions), r <= e[n].end_time ? (console.log("有可以用的优惠券"), 
                2 == e[n].state && (t.push(e[n].length), console.log(e[n]), a.setData({
                    coupon: t.length
                }))) : (console.log("没有可以用的优惠券"), a.setData({
                    coupon: 0
                })); else a.setData({
                    coupon: 0
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Voucher",
            cachetime: "0",
            data: {
                user_id: n
            },
            success: function(o) {
                console.log(o);
                var e = o.data.ok, t = [];
                if (0 < e.length) for (var n = 0; n < e.length; n++) e[n].conditions = Number(e[n].conditions), 
                console.log(e[n]), r <= e[n].end_time && (2 == e[n].state ? (console.log("有可以用的代金券"), 
                t.push(e[n]), a.setData({
                    Vouchers: t.length
                })) : (console.log("没有可以用的代金券"), a.setData({
                    Vouchers: 0
                }))); else a.setData({
                    Vouchers: 0
                });
            }
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.onLoad(), this.onShow(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {},
    map: function(o) {
        var a = wx.getStorageSync("users").id;
        wx.chooseAddress({
            success: function(o) {
                console.log(o.userName), console.log(o.postalCode), console.log(o.provinceName), 
                console.log(o.cityName), console.log(o.countyName), console.log(o.detailInfo), console.log(o.nationalCode), 
                console.log(o.telNumber);
                var e = o.telNumber, t = o.countyName + o.detailInfo, n = o.userName;
                app.util.request({
                    url: "entry/wxapp/UpdAdd",
                    cachetime: "0",
                    data: {
                        user_id: a,
                        user_tel: e,
                        user_address: t,
                        user_name: n
                    },
                    success: function(o) {
                        console.log(o);
                    }
                });
            }
        });
    },
    seller: function(o) {
        wx.navigateTo({
            url: "../seller/login"
        });
    },
    zxkf: function() {
        wx.navigateTo({
            url: "kfzx"
        });
    },
    bzzx: function() {
        wx.navigateTo({
            url: "bzzx"
        });
    },
    wallet: function(o) {
        wx.navigateTo({
            url: "wallet"
        });
    },
    youhui: function(o) {
        wx.navigateTo({
            url: "../coupons/shop_coupons"
        });
    },
    youhui2: function(o) {
        wx.navigateTo({
            url: "../coupons/mine_coupons"
        });
    },
    jfsc: function(o) {
        wx.navigateTo({
            url: "../integral/integral"
        });
    },
    integral: function(o) {
        wx.navigateTo({
            url: "integral"
        });
    },
    wyrz: function(o) {
        wx.navigateTo({
            url: "wyrz/authen"
        });
    },
    fx: function(o) {
        wx.navigateTo({
            url: "distribution/yaoqing"
        });
    },
    czzx: function(o) {
        wx.navigateTo({
            url: "cash"
        });
    },
    tzxcx: function(o) {
        var e = this.data.bqxx.tz_appid;
        console.log(e), wx.navigateToMiniProgram({
            appId: e,
            success: function(o) {
                console.log(o);
            }
        });
    }
});