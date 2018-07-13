var app = getApp();

Page({
    data: {},
    onLoad: function(o) {
        var t = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: t
        });
        var n = this;
        console.log(o);
        var a = o.id;
        n.setData({
            id: o.id,
            types: o.types
        }), app.util.request({
            url: "entry/wxapp/Url",
            cachetime: "0",
            success: function(o) {
                n.setData({
                    url: o.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/DishesInfo",
            cachetime: "0",
            data: {
                id: a
            },
            success: function(o) {
                console.log(o.data), n.setData({
                    dishesinfo: o.data
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