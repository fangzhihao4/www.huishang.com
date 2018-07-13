var app = getApp();

Page({
    data: {
        slide: [ {
            logo: "http://opocfatra.bkt.clouddn.com/images/0/2017/10/tdJ70qw1fEfjfVJfFDD09570eqF28d.jpg"
        }, {
            logo: "http://opocfatra.bkt.clouddn.com/images/0/2017/10/k5JQwpBfpb0u8sNNy5l5bhlnrhl33W.jpg"
        }, {
            logo: "http://opocfatra.bkt.clouddn.com/images/0/2017/10/zUeEednDedmUkIUumN9XI6IXU91eko.jpg"
        } ],
        fenlei: [],
        commodity: []
    },
    tzweb: function(t) {
        console.log(t.currentTarget.dataset.index, this.data.lblist);
        var o = this.data.lblist[t.currentTarget.dataset.index];
        console.log(o), "1" == o.item && wx.redirectTo({
            url: o.src
        }), "2" == o.item && wx.navigateTo({
            url: "../home/webhtml?weburl=" + o.src
        }), "3" == o.item && wx.navigateToMiniProgram({
            appId: o.tz_appid,
            success: function(t) {
                console.log(t);
            }
        });
    },
    onLoad: function(t) {
        var o = wx.getStorageSync("bqxx");
        if ("1" == o.more) var e = wx.getStorageSync("bqxx").color;
        if ("2" == o.more) e = wx.getStorageSync("nbcolor");
        var a = wx.getStorageSync("imglink");
        this.setData({
            url: a
        }), wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: e
        });
        var n = this;
        this.reLoad(), app.util.request({
            url: "entry/wxapp/Ad3",
            cachetime: "0",
            success: function(t) {
                console.log(t), n.setData({
                    lblist: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Jftype",
            cachetime: "0",
            success: function(t) {
                console.log(t), n.setData({
                    fenlei: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/JfGoods",
            cachetime: "0",
            success: function(t) {
                console.log(t), n.setData({
                    commodity: t.data
                });
            }
        });
    },
    reLoad: function() {
        var o = this, t = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: t
            },
            success: function(t) {
                console.log(t), o.setData({
                    integral: t.data.total_score
                });
            }
        });
    },
    record: function(t) {
        wx.navigateTo({
            url: "record/record"
        });
    },
    interinfo: function(t) {
        console.log(t.currentTarget.id), wx.navigateTo({
            url: "integralinfo/integralinfo?id=" + t.currentTarget.id
        });
    },
    cxfl: function(t) {
        console.log(t.currentTarget.id);
        var o = this;
        app.util.request({
            url: "entry/wxapp/JftypeGoods",
            cachetime: "0",
            data: {
                type_id: t.currentTarget.id
            },
            success: function(t) {
                console.log(t), o.setData({
                    commodity: t.data
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {
        this.reLoad();
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.onLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});