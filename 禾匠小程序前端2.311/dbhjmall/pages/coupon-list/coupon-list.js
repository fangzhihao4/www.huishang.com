var api = require("../../api.js"), app = getApp(), share_count = 0;

Page({
    data: {},
    onLoad: function(o) {
        app.pageOnLoad(this);
        var t = this;
        wx.showLoading({
            mask: !0
        }), app.request({
            url: api.default.coupon_list,
            success: function(o) {
                0 == o.code && (t.setData({
                    coupon_list: o.data.list
                }), console.log(o.data.list));
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    receive: function(o) {
        var n = this, t = o.target.dataset.index;
        wx.showLoading({
            mask: !0
        }), n.hideGetCoupon || (n.hideGetCoupon = function(o) {
            var t = o.currentTarget.dataset.url || !1;
            n.setData({
                get_coupon_list: null
            }), t && wx.navigateTo({
                url: t
            });
        }), app.request({
            url: api.coupon.receive,
            data: {
                id: t
            },
            success: function(o) {
                0 == o.code && n.setData({
                    get_coupon_list: o.data.list,
                    coupon_list: o.data.coupon_list
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    closeCouponBox: function(o) {
        this.setData({
            get_coupon_list: ""
        });
    },
    goodsList: function(o) {
        var t = o.currentTarget.dataset.goods, n = [];
        for (var a in t) n.push(t[a].id);
        wx.navigateTo({
            url: "/pages/list/list?goods_id=" + n,
            success: function(o) {},
            fail: function(o) {}
        });
    }
});