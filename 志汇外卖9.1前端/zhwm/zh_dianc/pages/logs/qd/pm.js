var app = getApp();

Page({
    data: {},
    onLoad: function(a) {
        var e = this, n = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/userinfo",
            cachetime: "0",
            data: {
                user_id: n
            },
            success: function(t) {
                console.log("user", t), e.setData({
                    userinfo: t.data
                }), app.util.request({
                    url: "entry/wxapp/Rank",
                    cachetime: "0",
                    success: function(a) {
                        console.log("rank", a), e.setData({
                            rank: a.data
                        });
                        for (var n = 0; n < a.data.length; n++) t.data.id == a.data[n].id && e.setData({
                            pm: n + 1
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