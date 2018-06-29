var api = require("../../api.js"), app = getApp();

Page({
    data: {
        form: {
            name: "",
            mobile: ""
        },
        img: "/images/img-share-un.png",
        agree: 0
    },
    onLoad: function(e) {
        app.pageOnLoad(this);
    },
    onReady: function() {},
    onShow: function() {
        var a = this, t = wx.getStorageSync("user_info"), e = wx.getStorageSync("store"), o = wx.getStorageSync("share_setting");
        wx.showLoading({
            title: "加载中"
        }), app.pageOnShow(a), a.setData({
            user_info: t,
            store: e,
            share_setting: o
        }), app.request({
            url: api.share.check,
            method: "POST",
            success: function(e) {
                0 == e.code && (t.is_distributor = e.data, wx.setStorageSync("user_info", t), 1 == e.data && wx.redirectTo({
                    url: "/pages/share/index"
                })), a.setData({
                    user_info: t
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    onHide: function() {},
    onUnload: function() {},
    formSubmit: function(e) {
        var a = this, t = wx.getStorageSync("user_info");
        if (a.data.form = e.detail.value, null != a.data.form.name && "" != a.data.form.name) if (null != a.data.form.mobile && "" != a.data.form.mobile) {
            var o = e.detail.value;
            o.form_id = e.detail.formId, 0 != a.data.agree ? (console.log(a.data.agree), wx.showLoading({
                title: "正在提交",
                mask: !0
            }), app.request({
                url: api.share.join,
                method: "POST",
                data: o,
                success: function(e) {
                    0 == e.code ? (t.is_distributor = 2, wx.setStorageSync("user_info", t), wx.redirectTo({
                        url: "/pages/add-share/index"
                    })) : wx.showToast({
                        title: e.msg,
                        image: "/images/icon-warning.png"
                    });
                }
            })) : wx.showToast({
                title: "请先阅读并确认分销申请协议！！",
                image: "/images/icon-warning.png"
            });
        } else wx.showToast({
            title: "请填写联系方式！",
            image: "/images/icon-warning.png"
        }); else wx.showToast({
            title: "请填写姓名！",
            image: "/images/icon-warning.png"
        });
    },
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    agreement: function() {
        var e = wx.getStorageSync("share_setting");
        wx.showModal({
            title: "分销协议",
            content: e.agree,
            showCancel: !1,
            confirmText: "我已阅读",
            confirmColor: "#ff4544",
            success: function(e) {
                e.confirm && console.log("用户点击确定");
            }
        });
    },
    agree: function() {
        var e = this, a = e.data.agree;
        0 == a ? (a = 1, e.setData({
            img: "/images/img-share-agree.png",
            agree: a
        })) : 1 == a && (a = 0, e.setData({
            img: "/images/img-share-un.png",
            agree: a
        }));
    }
});