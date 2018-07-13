var distance, form_id, qqmapsdk, app = getApp(), QQMapWX = require("../../utils/qqmap-wx-jssdk.js"), util = require("../../utils/util.js");

Page({
    data: {
        totalPrice: 0,
        distance: "0",
        form_id: "",
        beizhu: "",
        dnzt: !1,
        qlq: !0,
        sdindex: 0,
        qzf: !1,
        showModal: !1,
        zffs: 1,
        zfz: !1,
        zfwz: "微信支付",
        btntype: "btn_ok1"
    },
    radioChange: function(e) {
        console.log("radio发生change事件，携带value值为：", e.detail.value), "wxzf" == e.detail.value && this.setData({
            zffs: 1,
            zfwz: "微信支付",
            btntype: "btn_ok1"
        }), "yezf" == e.detail.value && this.setData({
            zffs: 2,
            zfwz: "余额支付",
            btntype: "btn_ok2"
        }), "jfzf" == e.detail.value && this.setData({
            zffs: 3,
            zfwz: "积分支付",
            btntype: "btn_ok3"
        });
    },
    jsmj: function(e, t) {
        for (var a, o = 0; o < t.length; o++) if (Number(e) >= Number(t[o].full)) {
            a = o;
            break;
        }
        return a;
    },
    onLoad: function(e) {
        console.log(e);
        var h = this;
        if (null == e.preferential) var w = 0; else w = Number(e.preferential);
        var t = wx.getStorageSync("users"), y = wx.getStorageSync("new_user");
        h.setData({
            coupons_id: e.coupons_id,
            pre: w,
            new_user: y,
            users: t,
            vouchers_id: e.vouchers_id
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(e) {
                console.log(e), qqmapsdk = new QQMapWX({
                    key: e.data.map_key
                }), h.setData({
                    ptxx: e.data,
                    jf_proportion: e.data.jf_proportion
                }), "1" == e.data.is_yue ? h.setData({
                    ptkqyue: !0
                }) : h.setData({
                    ptkqyue: !1
                }), "1" == e.data.is_jfpay ? h.setData({
                    ptkqjf: !0
                }) : h.setData({
                    ptkqjf: !1
                });
            }
        });
        var a = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/UserInfo",
            cachetime: "0",
            data: {
                user_id: a
            },
            success: function(e) {
                console.log(e), h.setData({
                    wallet: e.data.wallet,
                    total_score: e.data.total_score
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: getApp().sjid
            },
            success: function(m) {
                console.log(m), "1" == m.data.is_yue ? h.setData({
                    sjkqyue: !0
                }) : h.setData({
                    sjkqyue: !1
                }), "1" == m.data.is_jfpay ? h.setData({
                    sjkqjf: !0
                }) : h.setData({
                    sjkqjf: !1
                }), console.log(m.data.coordinates.split(","));
                var e = m.data.coordinates.split(","), t = {
                    lng: Number(e[1]),
                    lat: Number(e[0])
                };
                console.log(t), wx.setNavigationBarColor({
                    frontColor: "#ffffff",
                    backgroundColor: m.data.color
                }), h.setData({
                    color: m.data.color,
                    sd_time: m.data.sd_time,
                    start: t
                }), app.util.request({
                    url: "entry/wxapp/Reduction",
                    cachetime: "0",
                    data: {
                        id: getApp().sjid
                    },
                    success: function(e) {
                        console.log(e);
                        for (var t = [], a = 0; a < e.data.length; a++) "1" != e.data[a].type && "3" != e.data[a].type || t.push(e.data[a]);
                        console.log(t);
                        var o = Number(m.data.freight);
                        if (0 == t.length) var s = [ {
                            full: "1000000"
                        } ]; else s = t;
                        var n, l = s.length - 1, i = wx.getStorageSync("order");
                        console.log(i);
                        for (var c = 0, r = 0, u = 0; u < i.length; u++) c += Number(i[u].money) * i[u].num + Number(i[u].box_fee) * i[u].num, 
                        r += Number(i[u].box_fee) * i[u].num;
                        console.log(c, s);
                        var d = Number(m.data.freight);
                        if (console.log("配送费为" + d), 0 < d) d = Number(m.data.freight); else d = 0;
                        var f = Number(m.data.xyh_open), p = Number(m.data.xyh_money);
                        if (1 == f) if (1 == y) console.log("这是一个新用户"), (g = c - p + d) <= 0 && (g = .01), 
                        console.log("商家开启了下单立减优惠，而且用户是一个新用户，不享受满减活动以及优惠券，支付的金额为" + g); else if (Number(c) >= Number(s[s.length - 1].full)) if (console.log(h.jsmj(c, s)), 
                        l = h.jsmj(c, s), n = Number(s[l].reduction), console.log(n), 0 == w) {
                            var g = c + d - n;
                            console.log("商家开启了下单立减优惠，而且用户是一老用户，没有使用优惠券，支付的金额为" + g);
                        } else if (c + d - n - w <= 0) {
                            g = .01;
                            console.log("商家开启了下单立减优惠，而且用户是一老用户，使用了优惠券并且优惠超出总价，支付的金额为" + g);
                        } else {
                            g = c + d - n - w;
                            console.log("商家开启了下单立减优惠，而且用户是一老用户，使用了优惠券并且总价大于优惠，支付的金额为" + g);
                        } else {
                            if (0 == w) g = c + d; else if (c + d - w <= 0) g = .01; else g = c + d - w;
                            console.log("用户是一个老用户，不享受新用户下单立减活动，订单的金额小于满减的金额" + g, s);
                        } else if (Number(c) >= Number(s[s.length - 1].full)) {
                            if (console.log(h.jsmj(c, s)), l = h.jsmj(c, s), n = Number(s[l].reduction), console.log(n), 
                            0 == w) g = c + d - n; else if (c + d - n - w <= 0) g = .01; else g = c + d - n - w;
                            console.log("商家没有开启新用户立减，而且用户是一个老用户，订单的金额大于满减的金额，用户支付的金额为" + g);
                        } else {
                            if (0 == w) g = c + d; else if (c + d - w <= 0) g = .01; else g = c + d - w;
                            console.log("商家没有开启开启新用户立减，而且用户是一个老用户，订单的金额小于满减的金额，用户支付的金额为" + g, s);
                        }
                        h.setData({
                            xyh_open: f,
                            xyh_money: p,
                            store: m.data,
                            money: g.toFixed(2),
                            money1: g.toFixed(2),
                            totalPrice: c,
                            totalbox: r,
                            freight: d,
                            fre: o,
                            order: i,
                            con: s,
                            yh: Number(s[l].full),
                            cut: n,
                            seller_id: m.data.id
                        }), console.log(h.data);
                    }
                }), distance = 1e3 * Number(m.data.distance);
            }
        });
        var o = wx.getStorageSync("openid");
        console.log(o);
        a = wx.getStorageSync("users").id;
        h.setData({
            openid: o,
            user_id: a
        });
    },
    reload: function(e) {},
    distance: function(e, t, a) {
        var o;
        qqmapsdk.calculateDistance({
            mode: "driving",
            from: {
                latitude: e.lat,
                longitude: e.lng
            },
            to: [ {
                latitude: t.lat,
                longitude: t.lng
            } ],
            success: function(e) {
                console.log(e), 0 == e.status && (o = Math.round(e.result.elements[0].distance), 
                a(o));
            },
            fail: function(e) {
                console.log(e), 373 == e.status && (o = 15e3, a(o));
            },
            complete: function(e) {
                console.log(e);
            }
        });
    },
    ddbz: function(e) {
        console.log(e.detail.value), this.setData({
            beizhu: e.detail.value
        });
    },
    xszz: function() {
        this.setData({
            showModal: !0
        });
    },
    yczz: function() {
        this.setData({
            showModal: !1
        });
    },
    onReady: function() {},
    onShow: function() {
        var e = util.formatTime(new Date()), t = util.formatTime(new Date()).substring(0, 10).replace(/\//g, "-"), a = util.formatTime(new Date()).substring(11, 16);
        console.log(e, t.toString(), a.toString()), this.setData({
            datestart: t,
            timestart: a,
            date: t,
            time: a
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {},
    map: function(e) {
        var s = this, n = wx.getStorageSync("users").id;
        wx.chooseAddress({
            success: function(e) {
                console.log(e.userName), console.log(e.postalCode), console.log(e.provinceName), 
                console.log(e.cityName), console.log(e.countyName), console.log(e.detailInfo), console.log(e.nationalCode), 
                console.log(e.telNumber);
                var t = e.telNumber, a = e.provinceName + e.cityName + e.countyName + e.detailInfo, o = e.userName;
                console.log(a), s.setData({
                    user_tel: t,
                    user_address: a,
                    user_name: o
                }), app.util.request({
                    url: "entry/wxapp/UpdAdd",
                    cachetime: "0",
                    data: {
                        user_id: n,
                        user_tel: t,
                        user_address: a,
                        user_name: o
                    },
                    success: function(e) {
                        console.log(e);
                    }
                });
            },
            fail: function(e) {
                console.log(e), wx.showModal({
                    title: "警告",
                    content: "您点击了拒绝授权,无法获取您的地址信息,点击确定重新获取授权。",
                    showCancel: !1,
                    success: function(e) {
                        e.confirm && wx.openSetting({
                            success: function(e) {
                                e.authSetting["scope.address"] && s.map();
                            },
                            fail: function(e) {}
                        });
                    }
                });
            }
        });
    },
    jksd: function() {
        this.setData({
            sdindex: 0,
            qlq: !0
        });
    },
    xzsj: function() {
        this.setData({
            sdindex: 1,
            qlq: !0
        });
    },
    qlq: function() {
        this.setData({
            qlq: !1
        });
    },
    qdzz: function() {
        this.setData({
            qlq: !0
        });
    },
    bindDateChange: function(e) {
        console.log("date 发生 change 事件，携带值为", e.detail.value, this.data.datestart), this.setData({
            date: e.detail.value
        }), e.detail.value == this.data.datestart ? console.log("日期没有修改") : (console.log("修改了日期"), 
        this.setData({
            timestart: "00:01"
        }));
    },
    bindTimeChange: function(e) {
        console.log("time 发生 change 事件，携带值为", e.detail.value), this.setData({
            time: e.detail.value
        });
    },
    switch1Change: function(e) {
        var t = this;
        console.log("switch1 发生 change 事件，携带值为", e.detail.value), t.setData({
            dnzt: e.detail.value
        }), e.detail.value ? t.setData({
            money: (t.data.money1 - t.data.freight).toFixed(2)
        }) : t.setData({
            money: t.data.money1
        });
    },
    formSubmit: function(s) {
        if (console.log("form发生了submit事件，携带数据为：", s.detail.value.radiogroup), "yezf" == s.detail.value.radiogroup) {
            var e = Number(this.data.wallet), n = Number(this.data.money);
            if (console.log(e, n), e < n) return void wx.showToast({
                title: "余额不足支付",
                icon: "loading"
            });
        }
        var l = 0;
        if ("jfzf" == s.detail.value.radiogroup) {
            var t = Number(this.data.total_score) / Number(this.data.jf_proportion);
            n = Number(this.data.money);
            if (l = n * Number(this.data.jf_proportion), console.log(t, n, l), t < n) return void wx.showToast({
                title: "积分不足支付",
                icon: "loading"
            });
        }
        if ("yezf" == s.detail.value.radiogroup) var i = 1;
        if ("wxzf" == s.detail.value.radiogroup) i = 2;
        if ("jfzf" == s.detail.value.radiogroup) i = 3;
        console.log("是否余额", i);
        var c = this, r = c.data.freight;
        if (c.data.dnzt) {
            var u = 1, d = c.data.date + "日" + c.data.time + "分";
            r = 0;
        } else {
            u = 2;
            if (0 == c.data.sdindex) d = "尽快送达,预计" + c.data.sd_time + "内送达"; else d = c.data.date + "日" + c.data.time + "分";
        }
        console.log(c.data, "自提", u, "送达时间", d, "配送费", r, "总计费用", c.data.money, "pre", c.data.pre, "cut", c.data.cut);
        c.data.totalPrice, n = c.data.money;
        if (1 == c.data.xyh_open) {
            if (1 == c.data.new_user) var f = c.data.xyh_money;
            if (2 == c.data.new_user && c.data.totalPrice >= c.data.yh) f = c.data.cut + c.data.pre;
            if (2 == c.data.new_user && c.data.totalPrice < c.data.yh) f = c.data.pre;
        }
        if (2 == c.data.xyh_open) {
            if (c.data.totalPrice >= c.data.yh) f = c.data.cut + c.data.pre;
            if (c.data.totalPrice < c.data.yh) f = c.data.pre;
        }
        console.log(f);
        var p = c.data.beizhu, a = c.data.order;
        console.log(a);
        var g = [];
        a.map(function(e) {
            if (0 < e.num) {
                var t = {};
                t.name = e.name, t.img = e.icon, t.num = e.num, t.money = e.money, t.dishes_id = e.id, 
                g.push(t);
            }
        }), console.log(g);
        c.data.con, c.data.cut;
        if (null == c.data.coupons_id) {
            console.log("用户没有选择优惠券");
            var m = "";
        } else {
            console.log("用户选择了优惠券");
            m = c.data.coupons_id;
        }
        if (null == c.data.vouchers_id) {
            console.log("用户没有选择代金券");
            var h = "";
        } else {
            console.log("用户选择了代金券");
            h = c.data.vouchers_id;
        }
        console.log("代金券id" + h), console.log("优惠券id" + m);
        c.data.xyh_open, c.data.xyh_money, c.data.new_user;
        var w = s.detail.formId, y = c.data.user_id, _ = c.data.openid;
        if (null != c.data.user_name) var x = c.data.user_name; else x = c.data.users.user_name;
        if (null != c.data.user_address) var v = c.data.user_address; else v = c.data.users.user_address;
        if (null != c.data.user_tel) var b = c.data.user_tel; else b = c.data.users.user_tel;
        console.log("用户的名字为" + x), console.log("用户的地址为" + v), console.log("用户的电话号码为" + b);
        var q = c.data.totalbox, z = c.data.seller_id;
        if (console.log(z), "" == _) wx.showToast({
            title: "id为空",
            icon: "",
            image: "",
            duration: 500,
            mask: !0,
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        }); else if ("" == v) wx.showToast({
            title: "请先选择地址",
            icon: "",
            image: "",
            duration: 1e3,
            mask: !0,
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        }); else {
            this.setData({
                zfz: !0
            });
            var o = v.replace(" ", "");
            console.log(o);
            var D = o.indexOf("市");
            console.log(o.substring(0, D));
            var N = o.substring(0, D);
            qqmapsdk.geocoder({
                address: o,
                success: function(e) {
                    console.log(e), console.log("终点:", e.result.location), console.log(e.result.location.lat + "," + e.result.location.lng);
                    var a = e.result.location.lat, o = e.result.location.lng, t = e.result.location;
                    console.log(a, o), c.distance(c.data.start, t, function(e) {
                        console.log(e, distance), distance < e && 2 == u ? (wx.showModal({
                            title: "提示",
                            content: "超出商家配送距离",
                            showCancel: !1
                        }), c.setData({
                            zfz: !1,
                            showModal: !1
                        })) : "" == w ? (wx.showToast({
                            title: "网络不好",
                            icon: "",
                            image: "",
                            duration: 500,
                            mask: !0,
                            success: function(e) {},
                            fail: function(e) {},
                            complete: function(e) {}
                        }), c.setData({
                            zfz: !1
                        })) : app.util.request({
                            url: "entry/wxapp/AddOrder",
                            cachetime: "0",
                            data: {
                                type: 1,
                                seller_id: z,
                                money: n,
                                user_id: y,
                                preferential: f,
                                freight: r,
                                name: x,
                                address: v,
                                tel: b,
                                box_fee: q,
                                sz: g,
                                coupons_id: m,
                                voucher_id: h,
                                note: p,
                                area: N,
                                lat: a,
                                lng: o,
                                is_take: u,
                                delivery_time: d,
                                is_yue: i,
                                form_id: w,
                                jf: l
                            },
                            success: function(e) {
                                console.log(e);
                                var t = e.data;
                                console.log("本次的订单id为" + t), "下单失败" != t ? (c.setData({
                                    zfz: !1,
                                    showModal: !1
                                }), "yezf" == s.detail.value.radiogroup ? (console.log("余额支付流程"), console.log(c.data.store), 
                                app.util.request({
                                    url: "entry/wxapp/PayOrder",
                                    cachetime: "0",
                                    data: {
                                        user_id: y,
                                        order_id: t,
                                        coupons_id: m,
                                        voucher_id: h
                                    },
                                    success: function(e) {
                                        console.log(e), wx.showModal({
                                            title: "提示",
                                            content: "支付成功",
                                            showCancel: !1
                                        }), setTimeout(function() {
                                            wx.switchTab({
                                                url: "../list/list"
                                            });
                                        }, 1e3), console.log(w), "1" != c.data.store.ps_mode || c.data.dnzt || app.util.request({
                                            url: "entry/wxapp/dada",
                                            cachetime: "0",
                                            data: {
                                                area: N,
                                                order_id: t,
                                                lat: a,
                                                lng: o
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), "1" == c.data.ptxx.is_email && app.util.request({
                                            url: "entry/wxapp/email",
                                            cachetime: "0",
                                            data: {
                                                store_id: z,
                                                type: "外卖"
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/Print",
                                            cachetime: "0",
                                            data: {
                                                order_id: t
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/Print2",
                                            cachetime: "0",
                                            data: {
                                                order_id: t
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/message",
                                            cachetime: "0",
                                            data: {
                                                openid: _,
                                                form_id: w,
                                                id: t
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/moban",
                                            cachetime: "0",
                                            data: {
                                                id: t
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/SmsSet",
                                            cachetime: "0",
                                            data: {
                                                store_id: z
                                            },
                                            success: function(e) {
                                                console.log(e), "1" == e.data.is_wmsms && app.util.request({
                                                    url: "entry/wxapp/sms",
                                                    cachetime: "0",
                                                    data: {
                                                        store_id: z
                                                    },
                                                    success: function(e) {
                                                        console.log(e);
                                                    }
                                                });
                                            }
                                        });
                                    }
                                })) : "jfzf" == s.detail.value.radiogroup ? (console.log("积分支付流程"), console.log(c.data.store), 
                                app.util.request({
                                    url: "entry/wxapp/PayOrder",
                                    cachetime: "0",
                                    data: {
                                        user_id: y,
                                        order_id: t,
                                        coupons_id: m,
                                        voucher_id: h
                                    },
                                    success: function(e) {
                                        console.log(e), wx.showModal({
                                            title: "提示",
                                            content: "支付成功",
                                            showCancel: !1
                                        }), setTimeout(function() {
                                            wx.switchTab({
                                                url: "../list/list"
                                            });
                                        }, 1e3), console.log(w), "1" != c.data.store.ps_mode || c.data.dnzt || app.util.request({
                                            url: "entry/wxapp/dada",
                                            cachetime: "0",
                                            data: {
                                                area: N,
                                                order_id: t,
                                                lat: a,
                                                lng: o
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), "1" == c.data.ptxx.is_email && app.util.request({
                                            url: "entry/wxapp/email",
                                            cachetime: "0",
                                            data: {
                                                store_id: z,
                                                type: "外卖"
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/Print",
                                            cachetime: "0",
                                            data: {
                                                order_id: t
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/Print2",
                                            cachetime: "0",
                                            data: {
                                                order_id: t
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/message",
                                            cachetime: "0",
                                            data: {
                                                openid: _,
                                                form_id: w,
                                                id: t
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/moban",
                                            cachetime: "0",
                                            data: {
                                                id: t
                                            },
                                            success: function(e) {
                                                console.log(e);
                                            }
                                        }), app.util.request({
                                            url: "entry/wxapp/SmsSet",
                                            cachetime: "0",
                                            data: {
                                                store_id: z
                                            },
                                            success: function(e) {
                                                console.log(e), "1" == e.data.is_wmsms && app.util.request({
                                                    url: "entry/wxapp/sms",
                                                    cachetime: "0",
                                                    data: {
                                                        store_id: z
                                                    },
                                                    success: function(e) {
                                                        console.log(e);
                                                    }
                                                });
                                            }
                                        });
                                    }
                                })) : (console.log("微信支付流程"), app.util.request({
                                    url: "entry/wxapp/pay",
                                    cachetime: "0",
                                    data: {
                                        openid: _,
                                        order_id: t,
                                        money: n
                                    },
                                    success: function(e) {
                                        console.log(e), wx.hideLoading(), wx.requestPayment({
                                            timeStamp: e.data.timeStamp,
                                            nonceStr: e.data.nonceStr,
                                            package: e.data.package,
                                            signType: e.data.signType,
                                            paySign: e.data.paySign,
                                            success: function(e) {
                                                console.log("支付成功", e), wx.showModal({
                                                    title: "提示",
                                                    content: "支付成功",
                                                    showCancel: !1
                                                });
                                            },
                                            complete: function(e) {
                                                console.log("支付完成", e), "requestPayment:fail cancel" == e.errMsg && (wx.showToast({
                                                    title: "取消支付",
                                                    icon: "loading",
                                                    duration: 1e3
                                                }), setTimeout(function() {
                                                    wx.switchTab({
                                                        url: "../list/list"
                                                    });
                                                }, 1e3)), "requestPayment:ok" == e.errMsg && setTimeout(function() {
                                                    wx.switchTab({
                                                        url: "../list/list"
                                                    });
                                                }, 1e3);
                                            }
                                        });
                                    }
                                }))) : wx.showToast({
                                    title: "下单失败"
                                });
                            }
                        });
                    });
                },
                fail: function(e) {
                    console.log(e);
                },
                complete: function(e) {
                    console.log(e);
                }
            });
        }
    },
    coupon: function(e) {
        console.log(this.data), wx.navigateTo({
            url: "../coupons/mine_coupons?totalPrice=" + this.data.totalPrice + "&state=1",
            success: function(e) {},
            fail: function(e) {},
            complete: function(e) {}
        });
    }
});