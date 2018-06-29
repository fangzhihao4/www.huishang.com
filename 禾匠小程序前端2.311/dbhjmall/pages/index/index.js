var api = require("../../api.js"), app = getApp(), share_count = 0, width = 260, int = 1, interval = 0, page_first_init = !0, timer = 1, msgHistory = "", fullScreen = !1;

Page({
    data: {
        x: wx.getSystemInfoSync().windowWidth,
        y: wx.getSystemInfoSync().windowHeight,
        left: 0,
        show_notice: !1,
        animationData: {},
        play: -1,
        time: 0,
        buy_user: "",
        buy_address: "",
        buy_time: 0,
        buy_type: ""
    },
    onLoad: function(t) {
        app.pageOnLoad(this), this.loadData(t);
        var a = 0, e = t.user_id, i = decodeURIComponent(t.scene);
        null != e ? a = e : null != i && (a = i), app.loginBindParent({
            parent_id: a
        });
    },
    suspension: function() {
        var r = this;
        interval = setInterval(function() {
            app.request({
                url: api.default.buy_data,
                data: {
                    time: r.data.time
                },
                method: "POST",
                success: function(t) {
                    if (0 == t.code) {
                        var a = !1;
                        msgHistory == t.md5 && (a = !0);
                        var e = "", i = t.cha_time, n = Math.floor(i / 60 - 60 * Math.floor(i / 3600));
                        e = 0 == n ? i % 60 + "秒" : n + "分" + i % 60 + "秒";
                        var o = "购买了", s = "/pages/goods/goods?id=" + t.data.goods;
                        2 === t.data.type ? (o = "预约了", s = "/pages/book/details/details?id=" + t.data.goods) : 3 === t.data.type ? (o = "秒杀了", 
                        s = "/pages/miaosha/details/details?id=" + t.data.goods) : 4 === t.data.type && (o = "拼团了", 
                        s = "/pages/pt/details/details?gid=" + t.data.goods), !a && t.cha_time <= 300 ? (r.setData({
                            buy_time: e,
                            buy_type: o,
                            buy_url: s,
                            buy_user: 5 <= t.data.user.length ? t.data.user.slice(0, 4) + "..." : t.data.user,
                            buy_avatar_url: t.data.avatar_url,
                            buy_address: 8 <= t.data.address.length ? t.data.address.slice(0, 7) + "..." : t.data.address
                        }), msgHistory = t.md5) : r.setData({
                            buy_user: "",
                            buy_type: "",
                            buy_url: s,
                            buy_address: "",
                            buy_avatar_url: "",
                            buy_time: ""
                        });
                    }
                }
            });
        }, 1e4);
    },
    loadData: function(t) {
        var s = this, a = wx.getStorageSync("pages_index_index");
        a && (a.act_modal_list = [], s.setData(a)), app.request({
            url: api.default.index,
            success: function(t) {
                if (0 == t.code) {
                    page_first_init ? page_first_init = !1 : t.data.act_modal_list = [];
                    var a = t.data.topic_list, e = new Array();
                    if (a && 1 != t.data.update_list.topic.count) {
                        if (1 == a.length) e[0] = new Array(), e[0] = a; else for (var i = 0, n = 0; i < a.length; i += 2, 
                        n++) null != a[i + 1] && (e[n] = new Array(), e[n][0] = a[i], e[n][1] = a[i + 1]);
                        t.data.topic_list = e;
                    }
                    s.setData(t.data), wx.setStorageSync("store", t.data.store), wx.setStorageSync("pages_index_index", t.data);
                    var o = wx.getStorageSync("user_info");
                    o && s.setData({
                        _user_info: o
                    }), s.miaoshaTimer();
                }
            },
            complete: function() {
                wx.stopPullDownRefresh();
            }
        });
    },
    onShow: function() {
        app.pageOnShow(this), share_count = 0;
        var t = wx.getStorageSync("store");
        t && t.name && wx.setNavigationBarTitle({
            title: t.name
        }), 1 === t.purchase_frame ? this.suspension(this.data.time) : this.setData({
            buy_user: ""
        }), clearInterval(int), this.notice();
    },
    onPullDownRefresh: function() {
        clearInterval(timer), this.loadData();
    },
    onShareAppMessage: function(t) {
        var a = this;
        return {
            path: "/pages/index/index?user_id=" + wx.getStorageSync("user_info").id,
            success: function(t) {
                1 == ++share_count && app.shareSendCoupon(a);
            },
            title: a.data.store.name
        };
    },
    receive: function(t) {
        var e = this, a = t.currentTarget.dataset.index;
        wx.showLoading({
            title: "领取中",
            mask: !0
        }), e.hideGetCoupon || (e.hideGetCoupon = function(t) {
            var a = t.currentTarget.dataset.url || !1;
            e.setData({
                get_coupon_list: null
            }), a && wx.navigateTo({
                url: a
            });
        }), app.request({
            url: api.coupon.receive,
            data: {
                id: a
            },
            success: function(t) {
                wx.hideLoading(), 0 == t.code ? e.setData({
                    get_coupon_list: t.data.list,
                    coupon_list: t.data.coupon_list
                }) : (wx.showToast({
                    title: t.msg,
                    duration: 2e3
                }), e.setData({
                    coupon_list: t.data.coupon_list
                }));
            }
        });
    },
    navigatorClick: function(t) {
        var a = t.currentTarget.dataset.open_type, e = t.currentTarget.dataset.url;
        return "wxapp" != a || ((e = function(t) {
            var a = /([^&=]+)=([\w\W]*?)(&|$|#)/g, e = /^[^\?]+\?([\w\W]+)$/.exec(t), i = {};
            if (e && e[1]) for (var n, o = e[1]; null != (n = a.exec(o)); ) i[n[1]] = n[2];
            return i;
        }(e)).path = e.path ? decodeURIComponent(e.path) : "", console.log("Open New App"), 
        wx.navigateToMiniProgram({
            appId: e.appId,
            path: e.path,
            complete: function(t) {
                console.log(t);
            }
        }), !1);
    },
    closeCouponBox: function(t) {
        this.setData({
            get_coupon_list: ""
        });
    },
    notice: function() {
        var t = this.data.notice;
        if (null != t) t.length;
    },
    miaoshaTimer: function() {
        var t = this;
        t.data.miaosha && t.data.miaosha.rest_time && (timer = setInterval(function() {
            0 < t.data.miaosha.rest_time ? (t.data.miaosha.rest_time = t.data.miaosha.rest_time - 1, 
            t.data.miaosha.times = t.getTimesBySecond(t.data.miaosha.rest_time), t.setData({
                miaosha: t.data.miaosha
            })) : clearInterval(timer);
        }, 1e3));
    },
    onHide: function() {
        app.pageOnHide(this), this.setData({
            play: -1
        }), clearInterval(int), clearInterval(interval), console.log("hide");
    },
    onUnload: function() {
        app.pageOnUnload(this), this.setData({
            play: -1
        }), clearInterval(timer), clearInterval(int), clearInterval(interval), console.log("unload");
    },
    showNotice: function() {
        this.setData({
            show_notice: !0
        });
    },
    closeNotice: function() {
        this.setData({
            show_notice: !1
        });
    },
    getTimesBySecond: function(t) {
        if (t = parseInt(t), isNaN(t)) return {
            h: "00",
            m: "00",
            s: "00"
        };
        var a = parseInt(t / 3600), e = parseInt(t % 3600 / 60), i = t % 60;
        return 1 <= a && (a -= 1), {
            h: a < 10 ? "0" + a : "" + a,
            m: e < 10 ? "0" + e : "" + e,
            s: i < 10 ? "0" + i : "" + i
        };
    },
    to_dial: function() {
        var t = this.data.store.contact_tel;
        wx.makePhoneCall({
            phoneNumber: t
        });
    },
    closeActModal: function() {
        var t, a = this, e = a.data.act_modal_list, i = !0;
        for (var n in e) {
            var o = parseInt(n);
            e[o].show && (e[o].show = !1, void 0 !== e[t = o + 1] && i && (i = !1, setTimeout(function() {
                a.data.act_modal_list[t].show = !0, a.setData({
                    act_modal_list: a.data.act_modal_list
                });
            }, 500)));
        }
        a.setData({
            act_modal_list: e
        });
    },
    naveClick: function(t) {
        app.navigatorClick(t, this);
    },
    play: function(t) {
        this.setData({
            play: t.currentTarget.dataset.index
        });
    },
    onPageScroll: function(t) {
        var e = this;
        fullScreen || -1 != e.data.play && wx.createSelectorQuery().select(".video").fields({
            rect: !0
        }, function(t) {
            console.log("page-scroll"), console.log(t.top);
            var a = wx.getSystemInfoSync().windowHeight;
            (t.top <= -200 || t.top >= a - 57) && e.setData({
                play: -1
            });
        }).exec();
    },
    fullscreenchange: function(t) {
        fullScreen = !!t.detail.fullScreen;
    }
});