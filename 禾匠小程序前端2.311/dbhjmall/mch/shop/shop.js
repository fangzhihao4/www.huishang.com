var api = require("../../api.js"),
    utils = require("../../utils.js"),
    app = getApp();
Page({
    data: {
        tab: 1,
        sort: 1,
        coupon_list: []
    },
    onLoad: function(t) {
        app.pageOnLoad(this);
        var a = this;
        if (t.scene) {
            console.log("---scene raw---\x3e", t.scene);
            var o = decodeURIComponent(t.scene);
            o && (o = utils.scene_decode(o), console.log("---scene decode---\x3e", o), o.mch_id && (t.mch_id = o.mch_id))
        }
        a.setData({
            tab: t.tab || 1,
            sort: t.sort || 1,
            mch_id: t.mch_id || !1,
            cat_id: t.cat_id || ""
        }), a.data.mch_id || wx.showModal({
            title: "提示",
            content: "店铺不存在！店铺id为空"
        }), setInterval(function() {
            a.onScroll()
        }, 40), this.getShopData()
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
    onReachBottom: function() {
        this.getGoodsList()
    },
    onShareAppMessage: function() {
        return {
            title: this.data.shop ? this.data.shop.name : "商城首页"
        }
    },
    onScroll: function(t) {
        var o = this;
        wx.createSelectorQuery().selectViewport(".after-navber").scrollOffset(function(t) {
            var a = 2 == o.data.tab ? 136.5333 : 85.3333;
            t.scrollTop >= a ? o.setData({
                fixed: !0
            }) : o.setData({
                fixed: !1
            })
        }).exec()
    },
    getShopData: function() {
        var a = this,
            o = (a.data.current_page || 0) + 1,
            e = "shop_data_mch_id_" + a.data.mch_id,
            t = wx.getStorageSync(e);
        t && a.setData({
            shop: t.shop
        }), wx.showNavigationBarLoading(), a.setData({
            loading: !0
        }), app.request({
            url: api.mch.shop,
            data: {
                mch_id: a.data.mch_id,
                tab: a.data.tab,
                sort: a.data.sort,
                page: o,
                cat_id: a.data.cat_id
            },
            success: function(t) {
                1 != t.code ? 0 == t.code && (a.setData({
                    shop: t.data.shop,
                    coupon_list: t.data.coupon_list,
                    hot_list: t.data.goods_list,
                    goods_list: t.data.goods_list,
                    new_list: t.data.new_list,
                    current_page: o
                }), wx.setStorageSync(e, t.data)) : wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    success: function(t) {
                        t.confirm && wx.redirectTo({
                            url: "/pages/index/index"
                        })
                    }
                })
            },
            complete: function() {
                wx.hideNavigationBarLoading(), a.setData({
                    loading: !1
                })
            }
        })
    },
    getGoodsList: function() {
        var a = this;
        if (3 != a.data.tab && !a.data.loading && !a.data.no_more) {
            a.setData({
                loading: !0
            });
            var o = (a.data.current_page || 0) + 1;
            app.request({
                url: api.mch.shop,
                data: {
                    mch_id: a.data.mch_id,
                    tab: a.data.tab,
                    sort: a.data.sort,
                    page: o,
                    cat_id: a.data.cat_id
                },
                success: function(t) {
                    0 == t.code && (1 == a.data.tab && (t.data.goods_list && t.data.goods_list.length ? (a.data.hot_list = a.data.hot_list.contact(t.data.goods_list), a.setData({
                        hot_list: a.data.hot_list,
                        current_page: o
                    })) : a.setData({
                        no_more: !0
                    })), 2 == a.data.tab && (t.data.goods_list && t.data.goods_list.length ? (a.data.goods_list = a.data.goods_list.contact(t.data.goods_list), a.setData({
                        goods_list: a.data.goods_list,
                        current_page: o
                    })) : a.setData({
                        no_more: !0
                    })))
                },
                complete: function() {
                    a.setData({
                        loading: !1
                    })
                }
            })
        }
    }
});