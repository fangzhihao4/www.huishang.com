var api = require("../../api.js"), app = getApp();

Page({
    data: {},
    onLoad: function(n) {
        app.pageOnLoad(this);
        var e = wx.getStorageSync("user_info");
        this.setData({
            store: wx.getStorageSync("store"),
            user_info: e
        }), wx.showModal({
            title: "提示",
            content: "是否核销？",
            success: function(e) {
                e.confirm ? (wx.showLoading({
                    title: "核销中"
                }), app.request({
                    url: api.user.card_clerk,
                    data: {
                        user_card_id: decodeURIComponent(n.scene)
                    },
                    success: function(e) {
                        wx.showModal({
                            title: "提示",
                            content: e.msg,
                            showCancel: !1,
                            success: function(e) {
                                e.confirm && wx.redirectTo({
                                    url: "/pages/index/index"
                                });
                            }
                        });
                    },
                    complete: function() {
                        wx.hideLoading();
                    }
                })) : e.cancel && wx.redirectTo({
                    url: "/pages/index/index"
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {}
});