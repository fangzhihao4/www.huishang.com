var api = require("../../../api.js"), app = getApp();

Page({
    data: {},
    onLoad: function(o) {
        app.pageOnLoad(this);
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
        this.loadOrderDetails();
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {
        var o = this, t = "/pages/pt/group/details?oid=" + o.data.order_info.order_id;
        return {
            title: o.data.order_info.goods_list[0].name,
            path: t,
            imageUrl: o.data.order_info.goods_list[0].goods_pic,
            success: function(o) {
                console.log(t), console.log(o);
            }
        };
    },
    loadOrderDetails: function() {
        var t = this, o = t.options.scene;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.group.order.clerk_order_details,
            data: {
                id: o
            },
            success: function(o) {
                0 == o.code ? (3 != o.data.status && t.countDownRun(o.data.limit_time_ms), t.setData({
                    order_info: o.data,
                    limit_time: o.data.limit_time
                })) : wx.showModal({
                    title: "提示",
                    content: o.msg,
                    showCancel: !1,
                    success: function(o) {
                        o.confirm && wx.redirectTo({
                            url: "/pages/pt/order/order"
                        });
                    }
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    copyText: function(o) {
        var t = o.currentTarget.dataset.text;
        wx.setClipboardData({
            data: t,
            success: function() {
                wx.showToast({
                    title: "已复制"
                });
            }
        });
    },
    clerkOrder: function(o) {
        var t = this;
        console.log(t.data.order), wx.showModal({
            title: "提示",
            content: "是否确认核销？",
            success: function(o) {
                o.confirm ? (wx.showLoading({
                    title: "正在加载"
                }), app.request({
                    url: api.group.order.clerk,
                    data: {
                        order_id: t.data.order_info.order_id
                    },
                    success: function(o) {
                        0 == o.code ? wx.redirectTo({
                            url: "/pages/user/user"
                        }) : wx.showModal({
                            title: "警告！",
                            showCancel: !1,
                            content: o.msg,
                            confirmText: "确认",
                            success: function(o) {
                                o.confirm && wx.redirectTo({
                                    url: "/pages/index/index"
                                });
                            }
                        });
                    },
                    complete: function() {
                        wx.hideLoading();
                    }
                })) : o.cancel;
            }
        });
    },
    location: function() {
        var o = this.data.order_info.shop;
        wx.openLocation({
            latitude: parseFloat(o.latitude),
            longitude: parseFloat(o.longitude),
            address: o.address,
            name: o.name
        });
    }
});