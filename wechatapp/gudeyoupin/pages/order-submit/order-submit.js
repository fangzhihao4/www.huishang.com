var api = require("../../api.js"), app = getApp(), longitude = "", latitude = "", util = require("../../utils/utils.js");

Page({
    data: {
        total_price: 0,
        address: null,
        express_price: 0,
        content: "",
        offline: 0,
        express_price_1: 0,
        name: "",
        mobile: "",
        integral_radio: 1,
        new_total_price: 0,
        show_card: !1,
        payment: -1,
        show_payment: !1
    },
    onLoad: function(t) {
        app.pageOnLoad(this);
        var a = util.formatData(new Date());
        this.setData({
            options: t,
            store: wx.getStorageSync("store"),
            time: a
        });
    },
    bindkeyinput: function(t) {
        var a = t.currentTarget.dataset.mchIndex;
        -1 == a ? this.setData({
            content: t.detail.value
        }) : (this.data.mch_list[a] && (this.data.mch_list[a].content = t.detail.value), 
        this.setData({
            mch_list: this.data.mch_list
        }));
    },
    KeyName: function(t) {
        this.setData({
            name: t.detail.value
        });
    },
    KeyMobile: function(t) {
        this.setData({
            mobile: t.detail.value
        });
    },
    getOffline: function(t) {
        var a = this, e = this.data.express_price, i = this.data.express_price_1;
        if (1 == t.currentTarget.dataset.index) this.setData({
            offline: 1,
            express_price: 0,
            express_price_1: e,
            is_area: 0
        }); else {
            var s = a.data.is_area_city_id, o = a.data.address.city_id;
            o && s && function(t, a) {
                for (var e = 0; e < t.length; e++) if (a == t[e]) return !1;
                return !0;
            }(s, o) && this.setData({
                is_area: 1
            }), this.setData({
                offline: 0,
                express_price: i
            });
        }
        a.getPrice();
    },
    dingwei: function() {
        var a = this;
        wx.chooseLocation({
            success: function(t) {
                longitude = t.longitude, latitude = t.latitude, a.setData({
                    location: t.address
                });
            },
            fail: function(t) {
                app.getauth({
                    content: "需要获取您的地理位置授权，请到小程序设置中打开授权",
                    success: function(t) {
                        t && (t.authSetting["scope.userLocation"] ? a.dingwei() : wx.showToast({
                            title: "您取消了授权",
                            image: "/images/icon-warning.png"
                        }));
                    }
                });
            }
        });
    },
    orderSubmit: function(t) {
        var a = this, e = a.data.offline, i = {};
        if (0 == e) {
            var s = a.data.is_area_city_id;
            if (s && function(t, a) {
                for (var e = 0; e < t.length; e++) if (a == t[e]) return !1;
                return !0;
            }(s, a.data.address.city_id)) return void wx.showToast({
                title: "所选地区无货",
                image: "/images/icon-warning.png"
            });
        }
        if (0 == e) {
            if (!a.data.address || !a.data.address.id) return void wx.showToast({
                title: "请选择收货地址",
                image: "/images/icon-warning.png"
            });
            i.address_id = a.data.address.id;
        } else {
            if (i.address_name = a.data.name, i.address_mobile = a.data.mobile, !a.data.shop.id) return void wx.showModal({
                title: "警告",
                content: "请选择门店",
                showCancel: !1
            });
            if (i.shop_id = a.data.shop.id, !i.address_name || null == i.address_name) return void a.showToast({
                title: "请填写收货人",
                image: "/images/icon-warning.png"
            });
            if (!i.address_mobile || null == i.address_mobile) return void a.showToast({
                title: "请填写联系方式",
                image: "/images/icon-warning.png"
            });
            if (!/^1\d{10}$/.test(i.address_mobile)) return void wx.showModal({
                title: "提示",
                content: "手机号格式不正确",
                showCancel: !1
            });
        }
        i.offline = e;
        var o = a.data.form;
        if (1 == o.is_form) {
            var d = o.list;
            for (var n in d) if ("date" == d[n].type && (d[n].default = d[n].default ? d[n].default : a.data.time), 
            "time" == d[n].type && (d[n].default = d[n].default ? d[n].default : "00:00"), 1 == d[n].required) if ("radio" == d[n].type || "checkboxc" == d[n].type) {
                var r = !1;
                for (var l in d[n].default_list) 1 == d[n].default_list[l].is_selected && (r = !0);
                if (!r) return wx.showModal({
                    title: "提示",
                    content: "请填写" + o.name + "，加‘*’为必填项",
                    showCancel: !1
                }), !1;
            } else if (!d[n].default || null == d[n].default) return wx.showModal({
                title: "提示",
                content: "请填写" + o.name + "，加‘*’为必填项",
                showCancel: !1
            }), !1;
        }
        if (-1 == a.data.payment) return a.setData({
            show_payment: !0
        }), !1;
        if (i.form = JSON.stringify(o), a.data.cart_id_list && (i.cart_id_list = JSON.stringify(a.data.cart_id_list)), 
        a.data.mch_list && a.data.mch_list.length) {
            var c = [];
            for (var n in a.data.mch_list) if (a.data.mch_list[n].cart_id_list) {
                var _ = {
                    id: a.data.mch_list[n].id,
                    cart_id_list: a.data.mch_list[n].cart_id_list
                };
                a.data.mch_list[n].content && (_.content = a.data.mch_list[n].content), c.push(_);
            }
            c.length ? i.mch_list = JSON.stringify(c) : i.mch_list = "";
        }
        a.data.goods_info && (i.goods_info = JSON.stringify(a.data.goods_info)), a.data.picker_coupon && (i.user_coupon_id = a.data.picker_coupon.user_coupon_id), 
        a.data.content && (i.content = a.data.content), a.data.cart_list && (i.cart_list = JSON.stringify(a.data.cart_list)), 
        1 == a.data.integral_radio ? i.use_integral = 1 : i.use_integral = 2, a.data.goods_list && a.data.goods_list.length || !a.data.mch_list || 1 != a.data.mch_list.length || (i.content = a.data.mch_list[0].content), 
        i.payment = a.data.payment, i.formId = t.detail.formId, a.order_submit(i, "s");
    },
    onReady: function() {},
    onShow: function() {
        var t = this, a = wx.getStorageSync("picker_address");
        if (a) {
            var e = t.data.is_area_city_id;
            e && (!function(t, a) {
                for (var e = 0; e < t.length; e++) if (a == t[e]) return !1;
                return !0;
            }(e, a.city_id) ? t.setData({
                is_area: 0
            }) : t.setData({
                is_area: 1
            })), t.setData({
                address: a,
                name: a.name,
                mobile: a.mobile
            }), wx.removeStorageSync("picker_address");
        }
        t.getOrderData(t.data.options);
    },
    getOrderData: function(t) {
        var s = this, a = {}, e = "";
        if (s.data.address && s.data.address.id && (e = s.data.address.id), a.address_id = e, 
        a.longitude = longitude, a.latitude = latitude, wx.showLoading({
            title: "正在加载",
            mask: !0
        }), t.cart_list) {
            JSON.parse(t.cart_list);
            a.cart_list = t.cart_list;
        }
        if (t.cart_id_list) {
            var i = JSON.parse(t.cart_id_list);
            a.cart_id_list = i;
        }
        if (t.mch_list) {
            var o = JSON.parse(t.mch_list);
            a.mch_list = o;
        }
        t.goods_info && (a.goods_info = t.goods_info);
        var d = [];
        app.request({
            url: api.order.submit_preview,
            data: a,
            success: function(t) {
                if (wx.hideLoading(), 0 == t.code) {
                    for (var a in t.data.coupon_list) null != t.data.coupon_list[a] && d.push(t.data.coupon_list[a]);
                    var e = t.data.shop_list, i = {};
                    e && 1 == e.length && (i = e[0]), t.data.is_shop && (i = t.data.is_shop), s.setData({
                        total_price: t.data.total_price || 0,
                        goods_list: t.data.list || null,
                        address: t.data.address || null,
                        express_price: parseFloat(t.data.express_price),
                        coupon_list: d,
                        shop_list: e,
                        shop: i,
                        name: t.data.address ? t.data.address.name : "",
                        mobile: t.data.address ? t.data.address.mobile : "",
                        send_type: t.data.send_type,
                        level: t.data.level,
                        new_total_price: t.data.total_price || 0,
                        integral: t.data.integral,
                        goods_card_list: t.data.goods_card_list || [],
                        form: t.data.form,
                        is_payment: t.data.is_payment,
                        pay_type_list: t.data.pay_type_list,
                        payment: t.data.pay_type_list[0].payment,
                        mch_list: t.data.mch_list || null,
                        is_area_city_id: t.data.is_area_city_id
                    }), 1 < t.data.pay_type_list.length && s.setData({
                        payment: -1
                    }), t.data.goods_info && s.setData({
                        goods_info: t.data.goods_info
                    }), t.data.cart_id_list && s.setData({
                        cart_id_list: t.data.cart_id_list
                    }), t.data.cart_list && s.setData({
                        cart_list: t.data.cart_list
                    }), 1 == t.data.send_type && s.setData({
                        offline: 0
                    }), 2 == t.data.send_type && s.setData({
                        offline: 1
                    }), s.getPrice(), 1 == t.data.is_area && s.setData({
                        is_area: 1
                    });
                }
                1 == t.code && wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    confirmText: "返回",
                    success: function(t) {
                        t.confirm && wx.navigateBack({
                            delta: 1
                        });
                    }
                });
            }
        });
    },
    copyText: function(t) {
        var a = t.currentTarget.dataset.text;
        a && wx.setClipboardData({
            data: a,
            success: function() {
                page.showToast({
                    title: "已复制内容"
                });
            },
            fail: function() {
                page.showToast({
                    title: "复制失败",
                    image: "/images/icon-warning.png"
                });
            }
        });
    },
    showCouponPicker: function() {
        this.data.coupon_list && 0 < this.data.coupon_list.length && this.setData({
            show_coupon_picker: !0
        });
    },
    pickCoupon: function(t) {
        var a = t.currentTarget.dataset.index;
        "-1" == a || -1 == a ? this.setData({
            picker_coupon: !1,
            show_coupon_picker: !1
        }) : this.setData({
            picker_coupon: this.data.coupon_list[a],
            show_coupon_picker: !1
        }), this.getPrice();
    },
    numSub: function(t, a, e) {
        return 100;
    },
    showShop: function(t) {
        this.dingwei(), this.data.shop_list && 1 <= this.data.shop_list.length && this.setData({
            show_shop: !0
        });
    },
    pickShop: function(t) {
        var a = t.currentTarget.dataset.index;
        "-1" == a || -1 == a ? this.setData({
            shop: !1,
            show_shop: !1
        }) : this.setData({
            shop: this.data.shop_list[a],
            show_shop: !1
        }), this.getPrice();
    },
    integralSwitchChange: function(t) {
        0 != t.detail.value ? this.setData({
            integral_radio: 1
        }) : this.setData({
            integral_radio: 2
        }), this.getPrice();
    },
    integration: function(t) {
        var a = this.data.integral.integration;
        wx.showModal({
            title: "积分使用规则",
            content: a,
            showCancel: !1,
            confirmText: "我知道了",
            confirmColor: "#ff4544",
            success: function(t) {
                t.confirm && console.log("用户点击确定");
            }
        });
    },
    getPrice: function() {
        var t = this, a = t.data.total_price, e = t.data.express_price, i = t.data.picker_coupon, s = t.data.integral, o = t.data.integral_radio, d = t.data.level, n = t.data.offline;
        if (t.data.goods_list && 0 < t.data.goods_list.length && (i && (a -= i.sub_price), 
        s && 1 == o && (a -= parseFloat(s.forehead)), d && (a = a * d.discount / 10), a <= .01 && (a = .01), 
        0 == n && (a += e)), t.data.mch_list && t.data.mch_list.length) for (var r in t.data.mch_list) a += t.data.mch_list[r].total_price + t.data.mch_list[r].express_price;
        t.setData({
            new_total_price: parseFloat(a.toFixed(2))
        });
    },
    cardDel: function() {
        this.setData({
            show_card: !1
        }), wx.redirectTo({
            url: "/pages/order/order?status=1"
        });
    },
    cardTo: function() {
        this.setData({
            show_card: !1
        }), wx.redirectTo({
            url: "/pages/card/card"
        });
    },
    formInput: function(t) {
        var a = t.currentTarget.dataset.index, e = this.data.form, i = e.list;
        i[a].default = t.detail.value, e.list = i, this.setData({
            form: e
        });
    },
    selectForm: function(t) {
        var a = t.currentTarget.dataset.index, e = t.currentTarget.dataset.k, i = this.data.form, s = i.list;
        if ("radio" == s[a].type) {
            var o = s[a].default_list;
            for (var d in o) d == e ? o[e].is_selected = 1 : o[d].is_selected = 0;
            s[a].default_list = o;
        }
        "checkbox" == s[a].type && (1 == (o = s[a].default_list)[e].is_selected ? o[e].is_selected = 0 : o[e].is_selected = 1, 
        s[a].default_list = o);
        i.list = s, this.setData({
            form: i
        });
    },
    showPayment: function() {
        this.setData({
            show_payment: !0
        });
    },
    payPicker: function(t) {
        var a = t.currentTarget.dataset.index;
        this.setData({
            payment: a,
            show_payment: !1
        });
    },
    payClose: function() {
        this.setData({
            show_payment: !1
        });
    }
});