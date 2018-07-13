var app = getApp();

Page({
    data: {},
    onLoad: function(o) {
        var t = wx.getStorageSync("bqxx");
        if ("1" == t.more) var e = wx.getStorageSync("bqxx").color;
        if ("2" == t.more) e = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: e
        });
        var n = this, a = wx.getStorageSync("users").id;
        console.log(a), app.util.request({
            url: "entry/wxapp/Jfmx",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(o) {
                console.log(o);
                var t = o.data;
                n.setData({
                    score: t
                });
            }
        }), app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(o) {
                console.log(o), n.setData({
                    integral: o.data.total_score
                });
            }
        });
    },
    tzjfsc: function() {
        wx.redirectTo({
            url: "../integral/integral"
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