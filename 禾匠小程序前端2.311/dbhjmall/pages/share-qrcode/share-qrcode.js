var api = require("../../api.js"), app = getApp();

Page({
    data: {
        qrcode: ""
    },
    onLoad: function(e) {
        app.pageOnLoad(this);
        var t = this, o = wx.getStorageSync("share_setting");
        t.setData({
            qrcode: o.qrcode_bg
        }), wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.share.get_qrcode,
            success: function(e) {
                0 == e.code ? t.setData({
                    qrcode: e.data
                }) : wx.showModal({
                    title: "提示",
                    content: e.msg,
                    showCancel: !1
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    onReady: function() {},
    onShow: function() {
        var e = wx.getStorageSync("user_info");
        this.setData({
            user_info: e
        });
    },
    click: function() {
        wx.previewImage({
            current: this.data.qrcode,
            urls: [ this.data.qrcode ]
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {}
});