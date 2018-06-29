var api = require("../../api.js"), app = getApp();

Page({
    data: {
        load_more_count: 0,
        last_load_more_time: 0,
        is_loading: !1,
        loading_class: "",
        cat_id: !1,
        keyword: !1,
        page: 1,
        limit: 20,
        goods_list: [],
        show_history: !0,
        show_result: !1,
        history_list: []
    },
    onLoad: function(t) {
        app.pageOnLoad(this);
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
        this.setData({
            history_list: this.getHistoryList(!0)
        });
    },
    inputFocus: function() {
        this.setData({
            show_history: !0,
            show_result: !1
        });
    },
    inputBlur: function() {
        var t = this;
        0 < t.data.goods_list.length && setTimeout(function() {
            t.setData({
                show_history: !1,
                show_result: !0
            });
        }, 300);
    },
    inputConfirm: function(t) {
        var a = this, o = t.detail.value;
        0 != o.length && (a.setData({
            page: 1,
            keyword: o
        }), a.setHistory(o), a.getGoodsList());
    },
    searchCancel: function() {
        wx.navigateBack({
            delta: 1
        });
    },
    historyClick: function(t) {
        var a = t.currentTarget.dataset.value;
        0 != a.length && (this.setData({
            page: 1,
            keyword: a
        }), this.getGoodsList());
    },
    getGoodsList: function() {
        var a = this;
        a.setData({
            show_history: !1,
            show_result: !0
        }), a.setData({
            page: 1,
            scroll_top: 0
        }), a.setData({
            goods_list: []
        });
        var t = {};
        a.data.cat_id && (t.cat_id = a.data.cat_id, a.setActiveCat(t.cat_id)), a.data.keyword && (t.keyword = a.data.keyword), 
        a.showLoadingBar(), a.is_loading = !0, app.request({
            url: api.default.goods_list,
            data: t,
            success: function(t) {
                0 == t.code && a.setData({
                    goods_list: t.data.list
                }), t.code;
            },
            complete: function() {
                a.hideLoadingBar(), a.is_loading = !1;
            }
        });
    },
    onListScrollBottom: function(t) {
        this.getMoreGoodsList();
    },
    getHistoryList: function(t) {
        t = t || !1;
        var a = wx.getStorageSync("search_history_list");
        if (!a) return [];
        if (!t) return a;
        for (var o = [], i = a.length - 1; 0 <= i; i--) o.push(a[i]);
        return o;
    },
    setHistory: function(t) {
        var a = this.getHistoryList();
        for (var o in a.push({
            keyword: t
        }), a) {
            if (a.length <= 20) break;
            a.splice(o, 1);
        }
        wx.setStorageSync("search_history_list", a);
    },
    getMoreGoodsList: function() {
        var i = this, s = {};
        i.data.cat_id && (s.cat_id = i.data.cat_id, i.setActiveCat(s.cat_id)), i.data.keyword && (s.keyword = i.data.keyword), 
        s.page = i.data.page || 1, i.showLoadingMoreBar(), i.setData({
            is_loading: !0
        }), i.setData({
            load_more_count: i.data.load_more_count + 1
        }), s.page = i.data.page + 1, i.setData({
            page: s.page
        }), app.request({
            url: api.default.goods_list,
            data: s,
            success: function(t) {
                if (0 == t.code) {
                    var a = i.data.goods_list;
                    if (0 < t.data.list.length) {
                        for (var o in t.data.list) a.push(t.data.list[o]);
                        i.setData({
                            goods_list: a
                        });
                    } else i.setData({
                        page: s.page - 1
                    });
                }
                t.code;
            },
            complete: function() {
                i.setData({
                    is_loading: !1
                }), i.hideLoadingMoreBar();
            }
        });
    },
    showLoadingBar: function() {
        this.setData({
            loading_class: "active"
        });
    },
    hideLoadingBar: function() {
        this.setData({
            loading_class: ""
        });
    },
    showLoadingMoreBar: function() {
        this.setData({
            loading_more_active: "active"
        });
    },
    hideLoadingMoreBar: function() {
        this.setData({
            loading_more_active: ""
        });
    },
    deleteSearchHistory: function() {
        this.setData({
            history_list: null
        }), wx.removeStorageSync("search_history_list");
    }
});