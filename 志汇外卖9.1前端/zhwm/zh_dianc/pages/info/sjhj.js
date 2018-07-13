var app = getApp();

Page({
    data: {},
    onLoad: function(o) {
        var t = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: t
        }), this.reLoad();
    },
    reLoad: function() {
        var a = this, r = wx.getStorageSync("imglink");
        console.log(r), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: getApp().sjid
            },
            success: function(o) {
                for (var t = o.data.environment, e = o.data.yyzz, n = 0; n < t.length; n++) t[n] = r + t[n];
                for (n = 0; n < e.length; n++) e[n] = r + e[n];
                console.log(o), a.setData({
                    store: o.data,
                    storeimg: t,
                    storeyyzz: e
                });
            }
        });
    },
    previewImage: function(o) {
        wx.previewImage({
            current: o.currentTarget.id,
            urls: o.currentTarget.dataset.urls
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.reLoad(), setTimeout(function() {
            wx.stopPullDownRefresh();
        }, 1500);
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});