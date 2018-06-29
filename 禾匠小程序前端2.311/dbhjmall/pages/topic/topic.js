var api = require("../../api.js"), app = getApp(), WxParse = require("../../wxParse/wxParse.js");

Page({
    data: {},
    onLoad: function(t) {
        app.pageOnLoad(this);
        var a = this;
        app.request({
            url: api.default.topic,
            data: {
                id: t.id
            },
            success: function(t) {
                0 == t.code ? (a.setData(t.data), WxParse.wxParse("content", "html", t.data.content, a)) : wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    success: function(t) {
                        t.confirm && wx.redirectTo({
                            url: "/pages/index/index"
                        });
                    }
                });
            }
        });
        var e = t.user_id;
        e && app.loginBindParent({
            parent_id: e
        });
    },
    wxParseTagATap: function(t) {
        if (console.log(t), t.currentTarget.dataset.goods) {
            var a = t.currentTarget.dataset.src || !1;
            if (!a) return;
            wx.navigateTo({
                url: a
            });
        }
    },
    favoriteClick: function(t) {
        var a = this, e = t.currentTarget.dataset.action;
        app.request({
            url: api.user.topic_favorite,
            data: {
                topic_id: a.data.id,
                action: e
            },
            success: function(t) {
                wx.showToast({
                    title: t.msg
                }), 0 == t.code && a.setData({
                    is_favorite: e
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onShareAppMessage: function() {
        var t = wx.getStorageSync("user_info"), a = this.data.id;
        return {
            title: this.data.title,
            path: "/pages/topic/topic?id=" + a + "&user_id=" + t.id
        };
    }
});