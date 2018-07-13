var app = getApp(), util = require("../../utils/util.js");

Page({
    data: {
        tabs: [ "待审核", "已通过", "已拒绝" ],
        activeIndex: 0,
        djd: [],
        score: [ {
            note: "支付宝提现",
            time: "2017-10-18 12：11：25",
            money: "2.00",
            type: "1"
        }, {
            note: "银行卡提现",
            time: "2017-10-18 12：11：25",
            money: "5.00",
            type: "1"
        } ]
    },
    tabClick: function(t) {
        this.setData({
            activeIndex: t.currentTarget.id
        });
    },
    reLoad: function() {
        var i = this, t = wx.getStorageSync("sjdsjid");
        app.util.request({
            url: "entry/wxapp/StoreTxList",
            cachetime: "0",
            data: {
                store_id: t
            },
            success: function(t) {
                console.log(t.data);
                for (var a = [], e = [], n = [], o = 0; o < t.data.length; o++) "1" == t.data[o].state && a.push(t.data[o]), 
                "2" == t.data[o].state && e.push(t.data[o]), "3" == t.data[o].state && n.push(t.data[o]);
                console.log(a, e, n), i.setData({
                    dsh: a,
                    ytg: e,
                    yjj: n
                });
            }
        });
    },
    onLoad: function(t) {
        this.reLoad();
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.reLoad();
    },
    onReachBottom: function() {}
});