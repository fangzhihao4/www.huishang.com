var _Page;

function _defineProperty(e, o, t) {
    return o in e ? Object.defineProperty(e, o, {
        value: t,
        enumerable: !0,
        configurable: !0,
        writable: !0
    }) : e[o] = t, e;
}

var app = getApp();

Page((_defineProperty(_Page = {
    data: {
        close: !1,
        current_time: ""
    },
    onLoad: function(i) {
        var e = wx.getStorageSync("bqxx");
        if ("1" == e.more) var o = wx.getStorageSync("bqxx").color;
        if ("2" == e.more) o = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: o
        }), this.setData({
            color: o,
            options: i
        }), console.log(i);
        var s = this;
        if (null == i.totalPrice) var t = 0; else t = Number(i.totalPrice);
        if (null == i.state) {
            console.log("状态是空的");
            var n = 0;
        } else {
            console.log("有状态");
            var a = i.state;
        }
        console.log(a), s.setData({
            state: a,
            states: n,
            totalPrice: t
        });
        var r = wx.getStorageSync("users").id, l = function() {
            var e = new Date(), o = e.getMonth() + 1, t = e.getDate();
            1 <= o && o <= 9 && (o = "0" + o);
            0 <= t && t <= 9 && (t = "0" + t);
            return e.getFullYear() + "-" + o + "-" + t + " " + e.getHours() + ":" + e.getMinutes() + ":" + e.getSeconds();
        }().slice(0, 10);
        console.log(l), s.setData({
            current_time: l
        }), app.util.request({
            url: "entry/wxapp/Coupons",
            cachetime: "0",
            data: {
                user_id: r
            },
            success: function(e) {
                console.log(e);
                for (var o = e.data.ok, t = [], n = 0; n < o.length; n++) o[n].conditions = Number(o[n].conditions), 
                l <= o[n].end_time && 2 == o[n].state && t.push(o[n]);
                if (null == i.dnjr && null == i.state) console.log("从个人中心进入"), s.setData({
                    coupon: t
                }); else {
                    console.log("从门店进入");
                    for (var a = [], r = 0; r < t.length; r++) t[r].store_id == getApp().sjid && a.push(t[r]);
                    s.setData({
                        coupon: a
                    });
                }
            }
        }), app.util.request({
            url: "entry/wxapp/Voucher",
            cachetime: "0",
            data: {
                user_id: r
            },
            success: function(e) {
                console.log(e);
                for (var o = e.data.ok, t = [], n = 0; n < o.length; n++) o[n].conditions = Number(o[n].conditions), 
                l <= o[n].end_time && 2 == o[n].state && (console.log(), t.push(o[n]));
                if (null == i.dnjr && null == i.state) console.log("从个人中心进入"), s.setData({
                    Vouchers: t
                }); else {
                    console.log("从门店进入");
                    for (var a = [], r = 0; r < t.length; r++) t[r].store_id == getApp().sjid && a.push(t[r]);
                    s.setData({
                        Vouchers: a
                    });
                }
            }
        });
    },
    select: function(e) {
        "2" == this.data.state ? wx.redirectTo({
            url: "../order/order?&tableid=" + this.data.options.tableid,
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        }) : wx.redirectTo({
            url: "../pay/pay",
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        });
    },
    use: function(e) {
        var o = this, t = e.currentTarget.id;
        console.log(e), console.log(o.data);
        for (var n = o.data.coupon, a = 0; a < n.length; a++) if (t == n[a].id) {
            console.log(n[a]);
            var r = n[a];
            "2" == o.data.state ? wx.redirectTo({
                url: "../order/order?coupons_id=" + r.coupons_id + "&preferential=" + r.preferential + "&tableid=" + o.data.options.tableid,
                success: function(e) {},
                fail: function(e) {},
                complete: function(e) {}
            }) : wx.redirectTo({
                url: "../pay/pay?coupons_id=" + r.coupons_id + "&preferential=" + r.preferential,
                success: function(e) {},
                fail: function(e) {},
                complete: function(e) {}
            });
        }
        console.log(e), console.log(o.data);
    },
    user: function(e) {
        var o = this;
        console.log(o.data);
        for (var t = e.currentTarget.id, n = o.data.Vouchers, a = 0; a < n.length; a++) if (t == n[a].id) {
            console.log(n[a]);
            var r = n[a];
            "2" == o.data.state ? wx.redirectTo({
                url: "../order/order?vouchers_id=" + r.vouchers_id + "&preferential=" + r.preferential + "&tableid=" + o.data.options.tableid,
                success: function(e) {},
                fail: function(e) {},
                complete: function(e) {}
            }) : wx.redirectTo({
                url: "../pay/pay?vouchers_id=" + r.vouchers_id + "&preferential=" + r.preferential,
                success: function(e) {},
                fail: function(e) {},
                complete: function(e) {}
            });
        }
        console.log(e), console.log(o.data);
    },
    tzsj: function(e) {
        var o = e.currentTarget.dataset.sjid;
        console.log(o, this.data.options), null == this.data.options.dnjr ? (console.log("从个人中心进入"), 
        wx.switchTab({
            url: "../home/home"
        })) : (console.log("从门店进入"), wx.navigateBack({
            delta: 1
        }));
    },
    details: function(e) {
        console.log(e);
        var o = e.currentTarget.id;
        wx.navigateTo({
            url: "coupons_details?id=" + o + "&type=1&state=2"
        });
    },
    detail: function(e) {
        console.log(e);
        var o = e.currentTarget.id;
        wx.navigateTo({
            url: "coupons_details?id=" + o + "&type=2&state=2"
        });
    },
    onPullDownRefresh: function() {
        this.onLoad(), wx.stopPullDownRefresh();
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {}
}, "onPullDownRefresh", function() {
    this.onLoad(), wx.stopPullDownRefresh();
}), _defineProperty(_Page, "onReachBottom", function() {}), _defineProperty(_Page, "onShareAppMessage", function() {}), 
_Page));