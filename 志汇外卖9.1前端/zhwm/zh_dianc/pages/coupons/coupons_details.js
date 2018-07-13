var app = getApp();

Page({
    data: {},
    onLoad: function(o) {
        var e = wx.getStorageSync("bqxx");
        if ("1" == e.more) var t = wx.getStorageSync("bqxx").color;
        if ("2" == e.more) t = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: t
        }), this.setData({
            color: t
        });
        var n = this, a = wx.getStorageSync("users").id;
        console.log(o);
        var c = o.type, s = o.id;
        1 == o.state ? (app.util.request({
            url: "entry/wxapp/Coupons",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(o) {
                console.log(o);
                for (var e = o.data.all, t = 0; t < e.length; t++) if (s == e[t].id) {
                    console.log(e[t]);
                    var a = e[t].coupons_type;
                    1 == c && n.setData({
                        coupons: e[t],
                        coupons_type: a
                    });
                }
            }
        }), app.util.request({
            url: "entry/wxapp/Voucher",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(o) {
                console.log(o);
                for (var e = o.data.all, t = 0; t < e.length; t++) if (s == e[t].id) {
                    console.log(e[t]);
                    var a = e[t].voucher_type;
                    2 == c && n.setData({
                        coupons: e[t],
                        coupons_type: a
                    });
                }
            }
        })) : (app.util.request({
            url: "entry/wxapp/Coupons",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(o) {
                console.log(o);
                for (var e = o.data.ok, t = 0; t < e.length; t++) if (s == e[t].id) {
                    console.log(e[t]);
                    var a = e[t].coupons_type;
                    1 == c && n.setData({
                        coupons: e[t],
                        coupons_type: a
                    });
                }
            }
        }), app.util.request({
            url: "entry/wxapp/Voucher",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(o) {
                console.log(o);
                for (var e = o.data.ok, t = 0; t < e.length; t++) if (s == e[t].id) {
                    console.log(e[t]);
                    var a = e[t].voucher_type;
                    2 == c && n.setData({
                        coupons: e[t],
                        coupons_type: a
                    });
                }
            }
        }));
    },
    onPullDownRefresh: function() {
        this.onLoad(), wx.stopPullDownRefresh();
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});