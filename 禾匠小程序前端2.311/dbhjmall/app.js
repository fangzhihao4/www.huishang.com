var api, util = require("./utils/utils.js"), order_pay = require("./commons/order-pay/order-pay.js");

App({
    is_on_launch: !0,
    onLaunch: function() {
        this.setApi(), api = this.api, this.getNavigationBarColor(), console.log(wx.getSystemInfoSync()), 
        this.getStoreData(), this.getCatList();
    },
    getStoreData: function() {
        this.request({
            url: api.default.store,
            success: function(e) {
                0 == e.code && (wx.setStorageSync("store", e.data.store), wx.setStorageSync("store_name", e.data.store_name), 
                wx.setStorageSync("show_customer_service", e.data.show_customer_service), wx.setStorageSync("contact_tel", e.data.contact_tel), 
                wx.setStorageSync("share_setting", e.data.share_setting));
            },
            complete: function() {}
        });
    },
    getCatList: function() {
        this.request({
            url: api.default.cat_list,
            success: function(e) {
                if (0 == e.code) {
                    var t = e.data.list || [];
                    wx.setStorageSync("cat_list", t);
                }
            }
        });
    },
    login: require("utils/login.js"),
    request: require("utils/request.js"),
    saveFormId: function(e) {
        this.request({
            url: api.user.save_form_id,
            data: {
                form_id: e
            }
        });
    },
    loginBindParent: function(e) {
        if ("" == wx.getStorageSync("access_token")) return !0;
        getApp().bindParent(e);
    },
    bindParent: function(e) {
        if ("undefined" != e.parent_id && 0 != e.parent_id) {
            console.log("Try To Bind Parent With User Id:" + e.parent_id);
            var t = wx.getStorageSync("user_info");
            if (0 < wx.getStorageSync("share_setting").level) 0 != e.parent_id && getApp().request({
                url: api.share.bind_parent,
                data: {
                    parent_id: e.parent_id
                },
                success: function(e) {
                    0 == e.code && (t.parent = e.data, wx.setStorageSync("user_info", t));
                }
            });
        }
    },
    shareSendCoupon: function(a) {
        wx.showLoading({
            mask: !0
        }), a.hideGetCoupon || (a.hideGetCoupon = function(e) {
            var t = e.currentTarget.dataset.url || !1;
            a.setData({
                get_coupon_list: null
            }), t && wx.navigateTo({
                url: t
            });
        }), this.request({
            url: api.coupon.share_send,
            success: function(e) {
                0 == e.code && a.setData({
                    get_coupon_list: e.data.list
                });
            },
            complete: function() {
                wx.hideLoading();
            }
        });
    },
    getauth: function(t) {
        wx.showModal({
            title: "是否打开设置页面重新授权",
            content: t.content,
            confirmText: "去设置",
            success: function(e) {
                e.confirm ? wx.openSetting({
                    success: function(e) {
                        t.success && t.success(e);
                    },
                    fail: function(e) {
                        t.fail && t.fail(e);
                    },
                    complete: function(e) {
                        t.complete && t.complete(e);
                    }
                }) : t.cancel && getApp().getauth(t);
            }
        });
    },
    api: require("api.js"),
    setApi: function() {
        var n = this.siteInfo.siteroot;
        n = n.replace("app/index.php", ""), n += "addons/zjhj_mall/core/web/index.php?store_id=-1&r=api/", 
        this.api = function e(t) {
            for (var a in t) "string" == typeof t[a] ? t[a] = t[a].replace("{$_api_root}", n) : t[a] = e(t[a]);
            return t;
        }(this.api);
        var e = this.api.default.index, t = e.substr(0, e.indexOf("/index.php"));
        this.webRoot = t;
    },
    webRoot: null,
    siteInfo: require("siteinfo.js"),
    currentPage: null,
    pageOnLoad: function(e) {
        this.page.onLoad(e);
    },
    pageOnReady: function(e) {
        this.page.onReady(e);
    },
    pageOnShow: function(e) {
        this.page.onShow(e);
    },
    pageOnHide: function(e) {
        this.page.onHide(e);
    },
    pageOnUnload: function(e) {
        this.page.onUnload(e);
    },
    page: require("utils/page.js"),
    setPageNavbar: function(o) {
        console.log("----setPageNavbar----"), console.log(o);
        var e = wx.getStorageSync("_navbar");
        e && n(e);
        var t = !1;
        for (var a in this.navbarPages) if (o.route == this.navbarPages[a]) {
            t = !0;
            break;
        }
        function n(e) {
            var t = !1, a = o.route || o.__route__ || null;
            for (var n in e.navs) e.navs[n].url === "/" + a ? t = e.navs[n].active = !0 : e.navs[n].active = !1;
            t && o.setData({
                _navbar: e
            });
        }
        t ? this.request({
            url: api.default.navbar,
            success: function(e) {
                0 == e.code && (n(e.data), wx.setStorageSync("_navbar", e.data));
            }
        }) : console.log("----setPageNavbar Return----");
    },
    getNavigationBarColor: function() {
        var t = this;
        t.request({
            url: api.default.navigation_bar_color,
            success: function(e) {
                0 == e.code && (wx.setStorageSync("_navigation_bar_color", e.data), t.setNavigationBarColor());
            }
        });
    },
    setNavigationBarColor: function() {
        var e = wx.getStorageSync("_navigation_bar_color");
        e && wx.setNavigationBarColor(e);
    },
    loginNoRefreshPage: [ "pages/index/index", "mch/shop/shop" ],
    navbarPages: [ "pages/index/index", "pages/cat/cat", "pages/cart/cart", "pages/user/user", "pages/list/list", "pages/search/search", "pages/topic-list/topic-list", "pages/video/video-list", "pages/miaosha/miaosha", "pages/shop/shop", "pages/pt/index/index", "pages/book/index/index", "pages/share/index", "pages/quick-purchase/index/index" ],
    openWxapp: function(e) {
        if (console.log("--openWxapp---"), e.currentTarget.dataset.url) {
            var t = e.currentTarget.dataset.url;
            (t = function(e) {
                var t = /([^&=]+)=([\w\W]*?)(&|$|#)/g, a = /^[^\?]+\?([\w\W]+)$/.exec(e), n = {};
                if (a && a[1]) for (var o, i = a[1]; null != (o = t.exec(i)); ) n[o[1]] = o[2];
                return n;
            }(t)).path = t.path ? decodeURIComponent(t.path) : "", console.log("Open New App"), 
            console.log(t), wx.navigateToMiniProgram({
                appId: t.appId,
                path: t.path,
                complete: function(e) {
                    console.log(e);
                }
            });
        }
    },
    pageShowToast: function(e) {
        console.log("--- pageToast ---");
        var t = this.currentPage, a = e.duration || 2500, n = e.title || "", o = (e.success, 
        e.fail, e.complete || null);
        t._toast_timer && clearTimeout(t._toast_timer), t.setData({
            _toast: {
                title: n
            }
        }), t._toast_timer = setTimeout(function() {
            var e = t.data._toast;
            e.hide = !0, t.setData({
                _toast: e
            }), "function" == typeof o && o();
        }, a);
    },
    uploader: require("utils/uploader"),
    navigatorClick: function(e, t) {
        var a = e.currentTarget.dataset.open_type;
        if ("redirect" == a) return !0;
        if ("wxapp" == a) {
            var n = e.currentTarget.dataset.path;
            "/" != n.substr(0, 1) && (n = "/" + n), wx.navigateToMiniProgram({
                appId: e.currentTarget.dataset.appid,
                path: n,
                complete: function(e) {
                    console.log(e);
                }
            });
        }
        if ("tel" == a) {
            var o = e.currentTarget.dataset.tel;
            wx.makePhoneCall({
                phoneNumber: o
            });
        }
        return !1;
    },
    utils: util,
    order_pay: order_pay
});