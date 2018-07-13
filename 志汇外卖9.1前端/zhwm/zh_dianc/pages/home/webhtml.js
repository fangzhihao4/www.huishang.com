var app = getApp();

Page({
    data: {},
    onLoad: function(n) {
        console.log(n);
        var o = this;
        app.util.request({
            url: "entry/wxapp/AdInfo",
            cachetime: "0",
            data: {
                id: n.weburl
            },
            success: function(n) {
                console.log(n), o.setData({
                    vr: n.data.src
                }), console.log(o.data.vr);
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