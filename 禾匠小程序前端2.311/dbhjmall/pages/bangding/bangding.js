var app = getApp(), api = require("../../api.js");

Page({
    data: {
        second: 60
    },
    onLoad: function(n) {
        var t = this;
        app.request({
            url: api.user.sms_setting,
            method: "get",
            data: {
                page: 1
            },
            success: function(n) {
                0 == n.code ? t.setData({
                    status: !0
                }) : t.setData({
                    status: !1
                });
            }
        });
    },
    getPhoneNumber: function(e) {
        var a = this;
        "getPhoneNumber:fail user deny" == e.detail.errMsg ? wx.showModal({
            title: "提示",
            showCancel: !1,
            content: "未授权",
            success: function(n) {}
        }) : wx.login({
            success: function(n) {
                if (n.code) {
                    var t = n.code;
                    app.request({
                        url: api.user.user_binding,
                        method: "POST",
                        data: {
                            iv: e.detail.iv,
                            encryptedData: e.detail.encryptedData,
                            code: t
                        },
                        success: function(n) {
                            0 == n.code ? a.setData({
                                PhoneNumber: n.data.dataObj
                            }) : wx.showToast({
                                title: "授权失败"
                            });
                        }
                    });
                } else wx.showToast({
                    title: "授权失败",
                    image: "/images/icon-warning.png"
                });
            }
        });
    },
    gainPhone: function() {
        this.setData({
            gainPhone: !0,
            handPhone: !1
        });
    },
    handPhone: function() {
        this.setData({
            gainPhone: !1,
            handPhone: !0
        });
    },
    nextStep: function() {
        var t = this, n = this.data.handphone;
        /^1[3|5][0-9]\d{4,8}$/.test(n) && 11 == n.length ? app.request({
            url: api.user.user_hand_binding,
            method: "POST",
            data: {
                content: n
            },
            success: function(n) {
                0 == n.code ? (t.timer(), t.setData({
                    content: n.msg,
                    timer: !0
                })) : (n.code, wx.showToast({
                    title: n.msg,
                    image: "/images/icon-warning.png"
                }));
            }
        }) : wx.showToast({
            title: "手机号码错误",
            image: "/images/icon-warning.png"
        });
    },
    timer: function() {
        var a = this;
        new Promise(function(n, t) {
            var e = setInterval(function() {
                a.setData({
                    second: a.data.second - 1
                }), a.data.second <= 0 && (a.setData({
                    timer: !1
                }), n(e));
            }, 1e3);
        }).then(function(n) {
            clearInterval(n);
        });
    },
    HandPhoneInput: function(n) {
        this.setData({
            handphone: n.detail.value
        });
    },
    CodeInput: function(n) {
        this.setData({
            code: n.detail.value
        });
    },
    PhoneInput: function(n) {
        this.setData({
            phoneNum: n.detail.value
        });
    },
    onSubmit: function() {
        var n = this.data.gainPhone;
        this.data.handPhone;
        if (n) {
            var t = this.data.phoneNum;
            if (t) {
                if (11 != t.length) return void wx.showToast({
                    title: "手机号码错误",
                    image: "/images/icon-warning.png"
                });
                var e = t;
            } else {
                if (!(e = this.data.PhoneNumber)) return void wx.showToast({
                    title: "手机号码错误",
                    image: "/images/icon-warning.png"
                });
            }
        } else {
            if (11 != (e = this.data.handphone).length) return void wx.showToast({
                title: "手机号码错误",
                image: "/images/icon-warning.png"
            });
            var a = this.data.code;
            if (!a) return void wx.showToast({
                title: "请输入验证码",
                image: "/images/icon-warning.png"
            });
            if (a != this.data.content) return void wx.showToast({
                title: "验证码错误",
                image: "/images/icon-warning.png"
            });
        }
        var i = this;
        app.request({
            url: api.user.user_empower,
            method: "POST",
            data: {
                phone: e
            },
            success: function(n) {
                0 == n.code ? i.setData({
                    binding: !0,
                    binding_num: e
                }) : 1 == n.code && wx.showToast({
                    title: n.msg,
                    image: "/images/icon-warning.png"
                });
            }
        });
    },
    renewal: function() {
        this.setData({
            binding: !1,
            gainPhone: !0,
            handPhone: !1
        });
    },
    onReady: function() {},
    onShow: function() {
        var t = this;
        app.request({
            url: api.user.index,
            method: "GET",
            success: function(n) {
                0 == n.code && (n.data.user_info.binding ? t.setData({
                    binding_num: n.data.user_info.binding,
                    binding: !0
                }) : t.setData({
                    gainPhone: !0,
                    handPhone: !1
                }));
            }
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});