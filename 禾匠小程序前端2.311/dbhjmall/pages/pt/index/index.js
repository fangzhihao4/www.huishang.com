var api = require("../../../api.js"), app = getApp();

Page({
    data: {
        cid: 0,
        scrollLeft: 600,
        scrollTop: 0,
        emptyGoods: 0,
        page_count: 0
    },
    onLoad: function(a) {
        this.systemInfo = wx.getSystemInfoSync(), app.pageOnLoad(this), this.loadIndexInfo(this);
        var t = wx.getStorageSync("store");
        this.setData({
            store: t
        });
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {},
    loadIndexInfo: function(a) {
        var t = a;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.group.index,
            method: "get",
            success: function(a) {
                0 == a.code && (setTimeout(function() {
                    wx.hideLoading();
                }, 1e3), t.setData({
                    cat: a.data.cat,
                    banner: a.data.banner,
                    ad: a.data.ad,
                    goods: a.data.goods.list,
                    page: a.data.goods.page,
                    page_count: a.data.goods.page_count
                }), a.data.goods.row_count <= 0 && t.setData({
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
        if (t != a.currentTarget.dataset.id || 0 == a.currentTarget.dataset.id) {
            t = a.currentTarget.dataset.id, console.log(this.systemInfo);
            var e = this.systemInfo.windowWidth, n = a.currentTarget.offsetLeft, s = this.data.scrollLeft;
            s = e / 2 < n ? n : 0, o.setData({
                cid: t,
                page: 1,
                scrollLeft: s,
                scrollTop: 0,
                emptyGoods: 0,
                goods: [],
                show_loading_bar: 1
            }), app.request({
                url: api.group.list,
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
                            page: a.data.page,
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
    pullDownLoading: function(a) {
        var o = this;
        if (1 != o.data.emptyGoods && 1 != o.data.show_loading_bar) {
            o.setData({
                show_loading_bar: 1
            });
            var t = parseInt(o.data.page + 1), e = o.data.cid;
            app.request({
                url: api.group.list,
                method: "get",
                data: {
                    page: t,
                    cid: e
                },
                success: function(a) {
                    if (0 == a.code) {
                        var t = o.data.goods;
                        a.data.page > o.data.page && Array.prototype.push.apply(t, a.data.list), console.log(a.data.page), 
                        console.log(a.data.page_count), a.data.page_count >= a.data.page ? o.setData({
                            goods: t,
                            page: a.data.page,
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
    navigatorClick: function(a) {
        var t = a.currentTarget.dataset.open_type, o = a.currentTarget.dataset.url;
        return "wxapp" != t || ((o = function(a) {
            var t = /([^&=]+)=([\w\W]*?)(&|$|#)/g, o = /^[^\?]+\?([\w\W]+)$/.exec(a), e = {};
            if (o && o[1]) for (var n, s = o[1]; null != (n = t.exec(s)); ) e[n[1]] = n[2];
            return e;
        }(o)).path = o.path ? decodeURIComponent(o.path) : "", console.log("Open New App"), 
        wx.navigateToMiniProgram({
            appId: o.appId,
            path: o.path,
            complete: function(a) {
                console.log(a);
            }
        }), !1);
    },
    to_dial: function() {
        var a = this.data.store.contact_tel;
        wx.makePhoneCall({
            phoneNumber: a
        });
    }
});