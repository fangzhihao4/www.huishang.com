var app = getApp(), util = require("../../../utils/util.js");

Page({
    data: {
        catalogSelect: 0,
        color: "#34aaff"
    },
    spfl: function() {
        wx.navigateTo({
            url: "spfl"
        });
    },
    tjsp: function() {
        wx.navigateTo({
            url: "bjcp"
        });
    },
    selectMenu: function(t) {
        var e = t.currentTarget.dataset.itemIndex;
        this.setData({
            toView: "order" + e.toString(),
            catalogSelect: t.currentTarget.dataset.itemIndex
        }), console.log("order" + e.toString());
    },
    tjgg: function(t) {
        var e = t.currentTarget.dataset.cpid;
        console.log(e), wx.navigateTo({
            url: "tjgg?cpid=" + e
        });
    },
    bianj: function(t) {
        var e = t.currentTarget.dataset.cpid;
        console.log(e), wx.navigateTo({
            url: "bjcp?cpid=" + e
        });
    },
    sjxj: function(t) {
        var e = this, o = t.currentTarget.dataset.cpid, n = t.currentTarget.dataset.shelves;
        console.log(o, n), wx.showModal({
            title: "提示",
            content: "确认进行上下架操作吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/UpdDishes",
                    cachetime: "0",
                    data: {
                        dishes_id: o,
                        is_shelves: n
                    },
                    success: function(t) {
                        console.log(t), 1 == t.data && (wx.showToast({
                            title: "操作成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.reLoad();
                        }, 1e3));
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    sccp: function(t) {
        var e = this, o = t.currentTarget.dataset.cpid;
        console.log(o), wx.showModal({
            title: "提示",
            content: "确认删除此菜品吗？",
            success: function(t) {
                t.confirm ? (console.log("用户点击确定"), app.util.request({
                    url: "entry/wxapp/DelDishes",
                    cachetime: "0",
                    data: {
                        dishes_id: o
                    },
                    success: function(t) {
                        console.log(t), 1 == t.data && (wx.showToast({
                            title: "操作成功",
                            duration: 1e3
                        }), setTimeout(function() {
                            e.reLoad();
                        }, 1e3));
                    }
                })) : t.cancel && console.log("用户点击取消");
            }
        });
    },
    onLoad: function(t) {
        app.editTabBar();
        var e = this;
        wx.getSystemInfo({
            success: function(t) {
                console.log(t.windowWidth), console.log(t.windowHeight), e.setData({
                    height: t.windowHeight / t.windowWidth * 750 - 230
                });
            }
        }), this.reLoad();
    },
    reLoad: function() {
        var e = this, t = wx.getStorageSync("sjdsjid");
        console.log(t);
        var o = wx.getStorageSync("imglink");
        console.log(o), app.util.request({
            url: "entry/wxapp/AppDishes",
            cachetime: "0",
            data: {
                store_id: t
            },
            success: function(t) {
                console.log(t.data), e.setData({
                    dishes: t.data,
                    url: o
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.reLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});