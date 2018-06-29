var api = require("../../api.js"), app = getApp();

Page({
    data: {
        list: ""
    },
    onLoad: function(e) {
        app.pageOnLoad(this);
    },
    onReady: function() {},
    showDialogBtn: function() {
        this.setData({
            showModal: !0
        });
    },
    preventTouchMove: function() {},
    hideModal: function() {
        this.setData({
            showModal: !1
        });
    },
    onCancel: function() {
        this.hideModal();
    },
    onShow: function() {
        var t = this;
        wx.showLoading({
            title: "加载中"
        }), app.request({
            url: api.user.member,
            method: "POST",
            success: function(e) {
                wx.hideLoading(), 0 == e.code && (t.setData(e.data), t.setData({
                    buy_price: e.data.next_level.price,
                    current_key: 0
                }));
            }
        });
    },
    pay: function(e) {
        var t = e.currentTarget.dataset.key, a = this.data.list[t].id, n = e.currentTarget.dataset.payment;
        this.hideModal(), app.request({
            url: api.user.submit_member,
            data: {
                level_id: a,
                pay_type: n
            },
            method: "POST",
            success: function(e) {
                if (0 == e.code) {
                    if (setTimeout(function() {
                        wx.hideLoading();
                    }, 1e3), "WECHAT_PAY" == n) return void wx.requestPayment({
                        timeStamp: e.data.timeStamp,
                        nonceStr: e.data.nonceStr,
                        package: e.data.package,
                        signType: e.data.signType,
                        paySign: e.data.paySign,
                        complete: function(e) {
                            "requestPayment:fail" != e.errMsg && "requestPayment:fail cancel" != e.errMsg ? "requestPayment:ok" == e.errMsg && wx.showModal({
                                title: "提示",
                                content: "充值成功",
                                showCancel: !1,
                                confirmText: "确认",
                                success: function(e) {
                                    wx.navigateBack({
                                        delta: 1
                                    });
                                }
                            }) : wx.showModal({
                                title: "提示",
                                content: "订单尚未支付",
                                showCancel: !1,
                                confirmText: "确认"
                            });
                        }
                    });
                    "BALANCE_PAY" == n && wx.showModal({
                        title: "提示",
                        content: "充值成功",
                        showCancel: !1,
                        confirmText: "确认",
                        success: function(e) {
                            wx.navigateBack({
                                delta: 1
                            });
                        }
                    });
                } else wx.showModal({
                    title: "提示",
                    content: e.msg,
                    showCancel: !1
                }), wx.hideLoading();
            }
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    changeTabs: function(e) {
        for (var t = e.detail.currentItemId, a = e.detail.current, n = parseFloat(this.data.next_level.price), i = this.data.list, o = 0; o < a; o++) n += parseFloat(i[o + 1].price);
        this.setData({
            current_id: t,
            current_key: a,
            buy_price: n
        });
    }
});