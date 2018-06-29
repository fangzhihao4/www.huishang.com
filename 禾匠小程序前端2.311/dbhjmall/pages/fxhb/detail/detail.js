var api = require("../../../api.js"), app = getApp(), timer = null;

Page({
    data: {
        page_img: {
            bg: app.webRoot + "/statics/images/fxhb/bg.png",
            close: app.webRoot + "/statics/images/fxhb/close.png",
            hongbao_bg: app.webRoot + "/statics/images/fxhb/hongbao_bg.png",
            open_hongbao_btn: app.webRoot + "/statics/images/fxhb/open_hongbao_btn.png",
            wechat: app.webRoot + "/statics/images/fxhb/wechat.png",
            coupon: app.webRoot + "/statics/images/fxhb/coupon.png",
            pointer_r: app.webRoot + "/statics/images/fxhb/pointer_r.png",
            best_icon: app.webRoot + "/statics/images/fxhb/best_icon.png",
            more_l: app.webRoot + "/statics/images/fxhb/more_l.png",
            more_r: app.webRoot + "/statics/images/fxhb/more_r.png",
            cry: app.webRoot + "/statics/images/fxhb/cry.png",
            share_modal_bg: app.webRoot + "/statics/images/fxhb/share_modal_bg.png"
        },
        goods_list: null,
        rest_time_str: "--:--:--"
    },
    onLoad: function(t) {
        var a = this;
        app.pageOnLoad(this);
        var e = t.id;
        wx.showLoading({
            title: "加载中",
            mask: !0
        }), app.request({
            url: api.fxhb.detail,
            data: {
                id: e
            },
            success: function(e) {
                wx.hideLoading(), 1 != e.code ? (0 == e.code && (a.setData({
                    rule: e.data.rule,
                    share_pic: e.data.share_pic,
                    share_title: e.data.share_title,
                    coupon_total_money: e.data.coupon_total_money,
                    rest_user_num: e.data.rest_user_num,
                    rest_time: e.data.rest_time,
                    hongbao: e.data.hongbao,
                    hongbao_list: e.data.hongbao_list,
                    is_my_hongbao: e.data.is_my_hongbao,
                    my_coupon: e.data.my_coupon,
                    goods_list: e.data.goods_list
                }), a.setRestTimeStr()), a.showShareModal()) : wx.showModal({
                    title: "提示",
                    content: e.msg,
                    showCancel: !1,
                    success: function(t) {
                        t.confirm && (1 == e.game_open ? wx.redirectTo({
                            url: "/pages/fxhb/open/open"
                        }) : wx.redirectTo({
                            url: "/pages/index/index"
                        }));
                    }
                });
            }
        });
    },
    onReady: function() {
        app.pageOnReady(this);
    },
    onShow: function() {
        app.pageOnShow(this);
    },
    showRule: function() {
        this.setData({
            showRule: !0
        });
    },
    closeRule: function() {
        this.setData({
            showRule: !1
        });
    },
    showShareModal: function() {
        this.setData({
            showShareModal: !0
        });
    },
    closeShareModal: function() {
        this.setData({
            showShareModal: !1
        });
    },
    setRestTimeStr: function() {
        var o = this, s = o.data.rest_time || !1;
        !1 !== s && null !== s && ((s = parseInt(s)) <= 0 ? o.setData({
            rest_time_str: "00:00:00"
        }) : (timer && clearInterval(timer), timer = setInterval(function() {
            if ((s = o.data.rest_time) <= 0) return clearInterval(timer), void o.setData({
                rest_time_str: "00:00:00"
            });
            var t = parseInt(s / 3600), e = parseInt(s % 3600 / 60), a = parseInt(s % 3600 % 60);
            o.setData({
                rest_time: s - 1,
                rest_time_str: (t < 10 ? "0" + t : t) + ":" + (e < 10 ? "0" + e : e) + ":" + (a < 10 ? "0" + a : a)
            });
        }, 1e3)));
    },
    detailSubmit: function(t) {
        var e = this;
        wx.showLoading({
            mask: !0
        }), app.request({
            url: api.fxhb.detail_submit,
            method: "post",
            data: {
                id: e.data.hongbao.id,
                form_id: t.detail.formId
            },
            success: function(t) {
                if (1 == t.code) return wx.hideLoading(), void e.showToast({
                    title: t.msg,
                    complete: function() {
                        0 == t.game_open && wx.redirectTo({
                            url: "/pages/index/index"
                        });
                    }
                });
                0 == t.code && (wx.hideLoading(), e.showToast({
                    title: t.msg,
                    complete: function() {
                        1 == t.reload && wx.redirectTo({
                            url: "/pages/fxhb/detail/detail?id=" + e.options.id
                        });
                    }
                }));
            }
        });
    },
    onShareAppMessage: function() {
        var t = this;
        return {
            title: t.data.share_title || null,
            imageUrl: t.data.share_pic || null,
            complete: function() {
                t.closeShareModal();
            }
        };
    }
});