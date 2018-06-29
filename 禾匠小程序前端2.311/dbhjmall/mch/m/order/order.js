var api = require("../../../api.js"),
    app = getApp();
Page({
    data: {
        status: 1,
        show_menu: !1,
        order_list: [],
        no_orders: !1,
        no_more_orders: !1
    },
    onLoad: function(t) {
        app.pageOnLoad(this);
        var e = this;
        e.setData({
            status: parseInt(t.status || 1),
            loading_more: !0
        }), e.loadOrderList(function() {
            e.setData({
                loading_more: !1
            })
        })
    },
    onReady: function() {
        app.pageOnReady(this)
    },
    onShow: function() {
        app.pageOnShow(this)
    },
    onHide: function() {
        app.pageOnHide(this)
    },
    onUnload: function() {
        app.pageOnUnload(this)
    },
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {},
    showMenu: function(t) {
        this.setData({
            show_menu: !this.data.show_menu
        })
    },
    loadOrderList: function(t) {
        var e = this,
            a = e.data.status,
            s = (e.data.current_page || 0) + 1,
            n = e.data.keyword || "";
        app.request({
            url: api.mch.order.list,
            data: {
                status: a,
                page: s,
                keyword: n
            },
            success: function(t) {
                0 == t.code && (1 != s || t.data.list && t.data.list.length || e.setData({
                    no_orders: !0
                }), t.data.list && t.data.list.length ? (e.data.order_list = e.data.order_list || [], e.data.order_list = e.data.order_list.concat(t.data.list), e.setData({
                    order_list: e.data.order_list,
                    current_page: s
                })) : e.setData({
                    no_more_orders: !0
                }))
            },
            complete: function() {
                "function" == typeof t && t()
            }
        })
    },
    showSendModal: function(t) {
        this.setData({
            show_send_modal: !0,
            send_type: "express",
            order_index: t.currentTarget.dataset.index
        })
    },
    hideSendModal: function() {
        this.setData({
            show_send_modal: !1
        })
    },
    switchSendType: function(t) {
        var e = t.currentTarget.dataset.type;
        this.setData({
            send_type: e
        })
    },
    sendSubmit: function() {
        var e = this;
        if ("express" == e.data.send_type) return e.hideSendModal(), void wx.navigateTo({
            url: "/mch/m/order-send/order-send?id=" + e.data.order_list[e.data.order_index].id
        });
        wx.showModal({
            title: "提示",
            content: "无需物流方式订单将直接标记成已发货，确认操作？",
            success: function(t) {
                t.confirm && (wx.showLoading({
                    title: "正在提交",
                    mask: !0
                }), app.request({
                    url: api.mch.order.send,
                    method: "post",
                    data: {
                        send_type: "none",
                        order_id: e.data.order_list[e.data.order_index].id
                    },
                    success: function(e) {
                        wx.showModal({
                            title: "提示",
                            content: e.msg,
                            success: function(t) {
                                t.confirm && 0 == e.code && wx.redirectTo({
                                    url: "/mch/m/order/order?status=2"
                                })
                            }
                        })
                    },
                    complete: function() {
                        wx.hideLoading({
                            title: "正在提交",
                            mask: !0
                        })
                    }
                }))
            }
        })
    },
    showPicList: function(t) {
        wx.previewImage({
            urls: this.data.order_list[t.currentTarget.dataset.index].pic_list,
            current: this.data.order_list[t.currentTarget.dataset.index].pic_list[t.currentTarget.dataset.pindex]
        })
    },
    refundPass: function(t) {
        var e = t.currentTarget.dataset.index,
            a = this.data.order_list[e].id,
            s = this.data.order_list[e].type;
        wx.showModal({
            title: "提示",
            content: "确认同意" + (1 == s ? "退款？资金将原路返回！" : "换货？"),
            success: function(t) {
                t.confirm && (wx.showLoading({
                    title: "正在处理",
                    mask: !0
                }), app.request({
                    url: api.mch.order.refund,
                    method: "post",
                    data: {
                        id: a,
                        action: "pass"
                    },
                    success: function(t) {},
                    complete: function() {
                        wx.hideLoading()
                    }
                }))
            }
        })
    },
    refundDeny: function(t) {
        var e = t.currentTarget.dataset.index;
        this.data.order_list[e].id
    }
});