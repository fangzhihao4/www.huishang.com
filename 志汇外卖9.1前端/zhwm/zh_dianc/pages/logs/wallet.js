var app = getApp();

Page({
    data: {},
    onLoad: function(n) {
        var o = this, t = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: t
            },
            success: function(n) {
                console.log(n), o.setData({
                    wallet: n.data.wallet
                });
            }
        });
    },
    cash: function(n) {
        wx.navigateTo({
            url: "cash"
        });
    },
    tradeinfo: function(n) {
        wx.navigateTo({
            url: "walletmx"
        });
    },
    onReady: function() {},
    onShow: function() {
        this.onLoad();
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});