var app = getApp(), util = require("../../../utils/util.js");

Page({
    data: {},
    dw: function(t) {
        console.log(t.currentTarget.dataset), wx.openLocation({
            latitude: Number(t.currentTarget.dataset.lat),
            longitude: Number(t.currentTarget.dataset.lng),
            scale: 28,
            address: t.currentTarget.dataset.wz
        });
    },
    tel: function(t) {
        console.log(t.currentTarget.dataset.tel), wx.makePhoneCall({
            phoneNumber: t.currentTarget.dataset.tel
        });
    },
    onLoad: function(t) {
        console.log(t);
        var e = wx.getStorageSync("imglink"), a = this, n = t.ddid;
        console.log(n, e), app.util.request({
            url: "entry/wxapp/OrderInfo",
            cachetime: "0",
            data: {
                id: n
            },
            success: function(t) {
                console.log(t), "0" != t.data.order.pay_time && (t.data.order.pay_time = util.ormatDate(t.data.order.pay_time)), 
                a.setData({
                    wmdd: t.data,
                    url: e
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