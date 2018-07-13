var app = getApp();

Page({
    data: {},
    onLoad: function(o) {
        var n = wx.getStorageSync("bqxx");
        if ("1" == n.more) var t = wx.getStorageSync("bqxx").color;
        if ("2" == n.more) t = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: t
        });
        var e = this, a = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/Qbmx",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(o) {
                console.log(o), e.setData({
                    score: o.data
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