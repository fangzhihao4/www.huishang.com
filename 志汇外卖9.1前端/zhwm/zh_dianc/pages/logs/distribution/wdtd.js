var app = getApp(), util = require("../../../utils/util.js");

Page({
    data: {
        tabs: [ "一级", "二级" ],
        activeIndex: 0,
        djd: []
    },
    tabClick: function(t) {
        this.setData({
            activeIndex: t.currentTarget.id
        });
    },
    onLoad: function(t) {
        var o = this, e = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/MyTeam",
            cachetime: "0",
            data: {
                user_id: e
            },
            success: function(t) {
                console.log(t);
                var e = [], n = [];
                e = t.data.one, n = t.data.two;
                for (var a = 0; a < e.length; a++) e[a].time = util.ormatDate(e[a].time);
                for (a = 0; a < n.length; a++) n[a].time = util.ormatDate(n[a].time);
                o.setData({
                    yj: e,
                    ej: n
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