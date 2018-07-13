var app = getApp(), util = require("../../../utils/util.js");

Page({
    data: {
        score: [ {
            note: "张三",
            time: "2017-10-18 12：11：25",
            money: "2.00",
            type: "1"
        }, {
            note: "张三",
            time: "2017-10-18 12：11：25",
            money: "5.00",
            type: "1"
        } ]
    },
    onLoad: function(t) {
        var n = this, e = wx.getStorageSync("users").id, a = wx.getStorageSync("imglink");
        app.util.request({
            url: "entry/wxapp/Earnings",
            cachetime: "0",
            data: {
                user_id: e
            },
            success: function(t) {
                console.log(t);
                for (var e = 0; e < t.data.length; e++) t.data[e].time = util.ormatDate(t.data[e].time);
                n.setData({
                    symx: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(t) {
                console.log(t), n.setData({
                    link_logo: t.data.link_logo,
                    pt_name: t.data.pt_name,
                    url: a
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