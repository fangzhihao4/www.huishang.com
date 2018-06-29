var api = require("../../../api.js"), utils = require("../../../utils.js"), app = getApp(), is_loading = !1, is_no_more = !1;

Page({
    data: {
        page: 1,
        page_count: 1,
        longitude: "",
        latitude: "",
        score: [ 1, 2, 3, 4, 5 ],
        keyword: ""
    },
    onLoad: function(t) {
        app.pageOnLoad(this);
        var a = this;
        a.setData({
            ids: t.ids
        }), wx.getLocation({
            success: function(t) {
                a.setData({
                    longitude: t.longitude,
                    latitude: t.latitude
                });
            },
            complete: function() {
                console.log(11), a.loadData();
            }
        });
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    loadData: function() {
        var a = this;
        wx.showLoading({
            title: "加载中"
        }), app.request({
            url: api.book.shop_list,
            method: "GET",
            data: {
                longitude: a.data.longitude,
                latitude: a.data.latitude,
                ids: a.data.ids
            },
            success: function(t) {
                0 == t.code && (console.log(22), a.setData(t.data));
            },
            fail: function(t) {
                console.log(t);
            },
            complete: function() {
                console.log(33), wx.hideLoading();
            }
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        var a = this;
        a.setData({
            keyword: "",
            page: 1
        }), wx.getLocation({
            success: function(t) {
                a.setData({
                    longitude: t.longitude,
                    latitude: t.latitude
                });
            },
            complete: function() {
                a.loadData(), wx.stopPullDownRefresh();
            }
        });
    },
    onReachBottom: function() {
        var t = this;
        t.data.page >= t.data.page_count || t.loadMoreData();
    },
    loadMoreData: function() {
        var o = this, e = o.data.page;
        is_loading || (is_loading = !0, wx.showLoading({
            title: "加载中"
        }), app.request({
            url: api.book.shop_list,
            method: "GET",
            data: {
                page: e,
                longitude: o.data.longitude,
                latitude: o.data.latitude,
                ids: o.data.ids
            },
            success: function(t) {
                if (0 == t.code) {
                    var a = o.data.list.concat(t.data.list);
                    o.setData({
                        list: a,
                        page_count: t.data.page_count,
                        row_count: t.data.row_count,
                        page: e + 1
                    });
                }
            },
            complete: function() {
                wx.hideLoading(), is_loading = !1;
            }
        }));
    },
    goto: function(a) {
        var o = this;
        wx.getSetting({
            success: function(t) {
                t.authSetting["scope.userLocation"] ? o.location(a) : app.getauth({
                    content: "需要获取您的地理位置授权，请到小程序设置中打开授权！",
                    cancel: !1,
                    success: function(t) {
                        t.authSetting["scope.userLocation"] && o.location(a);
                    }
                });
            }
        });
    },
    location: function(t) {
        var a = t.currentTarget.dataset.index, o = this.data.list;
        console.log(1), wx.openLocation({
            latitude: parseFloat(o[a].latitude),
            longitude: parseFloat(o[a].longitude),
            name: o[a].name,
            address: o[a].address
        });
    },
    inputFocus: function(t) {
        this.setData({
            show: !0
        });
    },
    inputBlur: function(t) {
        this.setData({
            show: !1
        });
    },
    inputConfirm: function(t) {
        this.search();
    },
    input: function(t) {
        this.setData({
            keyword: t.detail.value
        });
    },
    search: function(t) {
        var a = this;
        wx.showLoading({
            title: "搜索中"
        }), app.request({
            url: api.book.shop_list,
            method: "GET",
            data: {
                keyword: a.data.keyword,
                longitude: a.data.longitude,
                latitude: a.data.latitude,
                ids: a.data.ids
            },
            success: function(t) {
                0 == t.code && a.setData(t.data);
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    go: function(t) {
        var a = t.currentTarget.dataset.index, o = this.data.list;
        wx.navigateTo({
            url: "/pages/shop-detail/shop-detail?shop_id=" + o[a].id
        });
    },
    navigatorClick: function(t) {
        var a = t.currentTarget.dataset.open_type, o = t.currentTarget.dataset.url;
        return "wxapp" != a || ((o = function(t) {
            var a = /([^&=]+)=([\w\W]*?)(&|$|#)/g, o = /^[^\?]+\?([\w\W]+)$/.exec(t), e = {};
            if (o && o[1]) for (var n, i = o[1]; null != (n = a.exec(i)); ) e[n[1]] = n[2];
            return e;
        }(o)).path = o.path ? decodeURIComponent(o.path) : "", console.log("Open New App"), 
        wx.navigateToMiniProgram({
            appId: o.appId,
            path: o.path,
            complete: function(t) {
                console.log(t);
            }
        }), !1);
    },
    onShareAppMessage: function(t) {}
});