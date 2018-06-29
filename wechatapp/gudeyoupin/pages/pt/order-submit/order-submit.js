var api = require("../../../api.js"), app = getApp(), longitude = "", latitude = "";

Page({
    data: {
        address: null,
        offline: 1,
        payment: -1,
        show_payment: !1
    },
    onLoad: function(a) {
        app.pageOnLoad(this);
        var t, e = a.goods_info, i = JSON.parse(e);
        t = 3 == i.deliver_type || 1 == i.deliver_type ? 1 : 2, this.setData({
            options: a,
            type: i.type,
            offline: t,
            parent_id: i.parent_id ? i.parent_id : 0
        });
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
        var a = this, t = wx.getStorageSync("picker_address");
        if (t) {
            var e = a.data.is_area_city_id;
            e && (!function(a, t) {
                for (var e = 0; e < a.length; e++) if (t == a[e]) return !1;
                return !0;
            }(e, t.city_id) ? a.setData({
                is_area: 0
            }) : a.setData({
                is_area: 1
            })), a.setData({
                address: t,
                name: t.name,
                mobile: t.mobile
            }), wx.removeStorageSync("picker_address");
        }
        a.getOrderData(a.data.options);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {},
    getOrderData: function(a) {
        var i = this, t = "";
        i.data.address && i.data.address.id && (t = i.data.address.id), a.goods_info && (wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.group.submit_preview,
            data: {
                goods_info: a.goods_info,
                group_id: a.group_id,
                address_id: t,
                type: i.data.type,
                longitude: longitude,
                latitude: latitude
            },
            success: function(a) {
                if (wx.hideLoading(), 0 == a.code) {
                    if (2 == i.data.offline) var t = parseFloat(0 < a.data.total_price - a.data.colonel ? a.data.total_price - a.data.colonel : .01), e = 0; else t = parseFloat(0 < a.data.total_price - a.data.colonel ? a.data.total_price - a.data.colonel : .01) + a.data.express_price, 
                    e = parseFloat(a.data.express_price);
                    i.setData({
                        total_price: a.data.total_price,
                        goods_list: a.data.list,
                        goods_info: a.data.goods_info,
                        address: a.data.address,
                        express_price: e,
                        coupon_list: a.data.coupon_list,
                        name: a.data.address ? a.data.address.name : "",
                        mobile: a.data.address ? a.data.address.mobile : "",
                        send_type: a.data.send_type,
                        level: a.data.level,
                        total_price_1: t.toFixed(2),
                        colonel: a.data.colonel,
                        shop_list: a.data.shop_list,
                        shop: {},
                        res: a.data,
                        is_area_city_id: a.data.is_area_city_id
                    }), 0 < a.data.pay_type_list.length && (i.setData({
                        payment: a.data.pay_type_list[0].payment
                    }), 1 < a.data.pay_type_list.length && i.setData({
                        payment: -1
                    })), 1 == a.data.is_area && i.setData({
                        is_area: 1
                    });
                }
                1 == a.code && wx.showModal({
                    title: "提示",
                    content: a.msg,
                    showCancel: !1,
                    confirmText: "返回",
                    success: function(a) {
                        a.confirm && wx.navigateBack({
                            delta: 1
                        });
                    }
                });
            }
        }));
    },
    bindkeyinput: function(a) {
        this.setData({
            content: a.detail.value
        });
    },
    orderSubmit: function(a) {
        var t = this, e = {}, i = t.data.offline;
        if (1 == i) {
            var s = t.data.is_area_city_id;
            if (s && function(a, t) {
                for (var e = 0; e < a.length; e++) if (t == a[e]) return !1;
                return !0;
            }(s, t.data.address.city_id)) return void wx.showToast({
                title: "所选地区无货",
                image: "/images/icon-warning.png"
            });
        }
        if (1 == (e.offline = i)) {
            if (!t.data.address || !t.data.address.id) return void wx.showToast({
                title: "请选择收货地址",
                image: "/images/icon-warning.png"
            });
            e.address_id = t.data.address.id;
        } else {
            if (e.address_name = t.data.name, e.address_mobile = t.data.mobile, !t.data.shop.id) return void wx.showToast({
                title: "请选择核销门店",
                image: "/images/icon-warning.png"
            });
            if (e.shop_id = t.data.shop.id, console.log(e.address_name), !e.address_name || null == e.address_name) return void wx.showToast({
                title: "请填写收货人",
                image: "/images/icon-warning.png"
            });
            if (!e.address_mobile || null == e.address_mobile) return void wx.showToast({
                title: "请填写联系方式",
                image: "/images/icon-warning.png"
            });
            if (!/^1\d{10}$/.test(e.address_mobile)) return void wx.showModal({
                title: "提示",
                content: "手机号格式不正确"
            });
        }
        return -1 == t.data.payment ? (wx.showModal({
            title: "提示",
            content: "请选择支付方式",
            showCancel: !1
        }), !1) : (t.data.goods_info && (e.goods_info = JSON.stringify(t.data.goods_info)), 
        t.data.picker_coupon && (e.user_coupon_id = t.data.picker_coupon.user_coupon_id), 
        t.data.content && (e.content = t.data.content), t.data.type && (e.type = t.data.type), 
        t.data.parent_id && (e.parent_id = t.data.parent_id), e.payment = t.data.payment, 
        e.formId = a.detail.formId, void t.order_submit(e, "pt"));
    },
    KeyName: function(a) {
        this.setData({
            name: a.detail.value
        });
    },
    KeyMobile: function(a) {
        this.setData({
            mobile: a.detail.value
        });
    },
    getOffline: function(a) {
        var t = this, e = a.target.dataset.index, i = parseFloat(0 < t.data.res.total_price - t.data.res.colonel ? t.data.res.total_price - t.data.res.colonel : .01) + t.data.res.express_price;
        if (1 == e) {
            var s = t.data.is_area_city_id, o = a.target.dataset.city_id;
            s && function(a, t) {
                for (var e = 0; e < a.length; e++) if (t == a[e]) return !1;
                return !0;
            }(s, o) && this.setData({
                is_area: 1
            }), this.setData({
                offline: 1,
                express_price: t.data.res.express_price,
                total_price_1: i.toFixed(2)
            });
        } else {
            var d = (t.data.total_price_1 - t.data.express_price).toFixed(2);
            this.setData({
                offline: 2,
                express_price: 0,
                total_price_1: d,
                is_area: 0
            });
        }
    },
    showShop: function(a) {
        this.dingwei(), this.data.shop_list && 1 <= this.data.shop_list.length && this.setData({
            show_shop: !0
        });
    },
    dingwei: function() {
        var t = this;
        wx.chooseLocation({
            success: function(a) {
                longitude = a.longitude, latitude = a.latitude, t.setData({
                    location: a.address
                });
            },
            fail: function(a) {
                app.getauth({
                    content: "需要获取您的地理位置授权，请到小程序设置中打开授权",
                    success: function(a) {
                        a && (a.authSetting["scope.userLocation"] ? t.dingwei() : wx.showToast({
                            title: "您取消了授权",
                            image: "/images/icon-warning.png"
                        }));
                    }
                });
            }
        });
    },
    pickShop: function(a) {
        var t = a.currentTarget.dataset.index;
        "-1" == t || -1 == t ? this.setData({
            shop: !1,
            show_shop: !1
        }) : this.setData({
            shop: this.data.shop_list[t],
            show_shop: !1
        });
    },
    showPayment: function() {
        this.setData({
            show_payment: !0
        });
    },
    payPicker: function(a) {
        var t = a.currentTarget.dataset.index;
        this.setData({
            payment: t
        });
    },
    payClose: function() {
        this.setData({
            show_payment: !1
        });
    }
});