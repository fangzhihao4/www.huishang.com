var api = require("../../../api.js"), app = getApp(), pageNum = 2;

Page({
    data: {
        cid: 0,
        scrollLeft: 600,
        scrollTop: 0,
        emptyGoods: 0,
        page_count: 0,
        cat_show: 1
    },
    onLoad: function(a) {
        this.systemInfo = wx.getSystemInfoSync(), app.pageOnLoad(this), this.loadIndexInfo(this);
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onShareAppMessage: function() {},
    loadIndexInfo: function(a) {
        var t = a;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.book.index,
            method: "get",
            success: function(a) {
                0 == a.code && (setTimeout(function() {
                    wx.hideLoading();
                }, 1e3), t.setData({
                    cat: a.data.cat,
                    banner: a.data.banner,
                    ad: a.data.ad,
                    goods: a.data.goods.list,
                    cat_show: a.data.cat_show,
                    page_count: a.data.goods.page_count
                }), a.data.goods.page >= a.data.goods.page_count && t.setData({
                    emptyGoods: 1
                }));
            }
        });
    },
    switchNav: function(a) {
        var o = this;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        });
        var t = 0;
        if (pageNum = 2, t != a.currentTarget.dataset.id || 0 == a.currentTarget.dataset.id) {
            t = a.currentTarget.dataset.id, console.log(this.systemInfo);
            var e = this.systemInfo.windowWidth, s = a.currentTarget.offsetLeft, n = this.data.scrollLeft;
            n = e / 2 < s ? s : 0, o.setData({
                cid: t,
                page: 1,
                scrollLeft: n,
                scrollTop: 0,
                emptyGoods: 0,
                goods: [],
                show_loading_bar: 1
            }), app.request({
                url: api.book.list,
                method: "get",
                data: {
                    cid: t
                },
                success: function(a) {
                    if (0 == a.code) {
                        setTimeout(function() {
                            wx.hideLoading();
                        }, 1e3);
                        var t = a.data.list;
                        a.data.page_count >= a.data.page ? o.setData({
                            goods: t,
                            page_count: a.data.page_count,
                            row_count: a.data.row_count,
                            show_loading_bar: 0
                        }) : o.setData({
                            emptyGoods: 1
                        });
                    }
                }
            });
        }
    },
    onReachBottom: function(a) {
        var o = this;
        if (1 != o.data.emptyGoods && 1 != o.data.show_loading_bar) {
            o.setData({
                show_loading_bar: 1
            });
            var t = o.data.cid;
            app.request({
                url: api.book.list,
                method: "get",
                data: {
                    page: pageNum,
                    cid: t
                },
                success: function(a) {
                    if (0 == a.code) {
                        var t = o.data.goods;
                        a.data.page >= pageNum && Array.prototype.push.apply(t, a.data.list), console.log(t), 
                        a.data.page_count >= pageNum ? o.setData({
                            goods: t,
                            page: a.data.page,
                            page_count: a.data.page_count,
                            row_count: a.data.row_count,
                            show_loading_bar: 0
                        }) : o.setData({
                            emptyGoods: 1
                        }), pageNum++;
                    }
                }
            });
        }
    }
});