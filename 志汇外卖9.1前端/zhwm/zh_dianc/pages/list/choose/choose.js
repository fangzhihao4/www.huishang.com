var dnform_id, app = getApp();

Page({
    data: {
        list: [ {
            name: "回锅肉",
            num: 1,
            money: "23.8"
        }, {
            name: "番茄鸡蛋",
            num: 1,
            money: "18"
        } ]
    },
    call_phone: function() {
        wx.makePhoneCall({
            phoneNumber: "02750661298"
        });
    },
    onLoad: function(o) {
        var n = wx.getStorageSync("bqxx");
        if ("1" == n.more) var e = wx.getStorageSync("bqxx").color;
        if ("2" == n.more) e = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: e
        }), (a = this).setData({
            color: e
        });
        var t = wx.getStorageSync("imglink"), a = this, d = o.dnddid;
        console.log(d), app.util.request({
            url: "entry/wxapp/OrderInfo",
            cachetime: "0",
            data: {
                id: d
            },
            success: function(o) {
                console.log(o.data), a.setData({
                    dnddinfo: o.data,
                    imglink: t
                });
            }
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(o) {
                console.log(o), a.setData({
                    ptxx: o.data
                });
            }
        });
    },
    formSubmit: function(o) {
        dnform_id = o.detail.formId, console.log(dnform_id);
    },
    onPay: function() {
        var o = wx.getStorageSync("users").id, n = wx.getStorageSync("openid"), e = this.data.dnddinfo.order.money, t = this.data.dnddinfo.order.id, a = this.data.dnddinfo.order.coupons_id, d = this.data.dnddinfo.order.voucher_id;
        console.log(o, n, e, t, a, d), "" == dnform_id ? wx.showToast({
            title: "网络不好",
            icon: "loading"
        }) : app.util.request({
            url: "entry/wxapp/pay",
            cachetime: "0",
            data: {
                openid: n,
                order_id: t,
                money: e
            },
            success: function(o) {
                console.log(o), wx.requestPayment({
                    timeStamp: o.data.timeStamp,
                    nonceStr: o.data.nonceStr,
                    package: o.data.package,
                    signType: o.data.signType,
                    paySign: o.data.paySign,
                    success: function(o) {
                        console.log(o.data), console.log(o);
                    },
                    complete: function(o) {
                        console.log(o.errMsg), "requestPayment:fail cancel" == o.errMsg && wx.showToast({
                            title: "取消支付",
                            icon: "loading",
                            duration: 1e3
                        }), "requestPayment:ok" == o.errMsg && (wx.showToast({
                            title: "支付成功",
                            icon: "loading",
                            duration: 1e3
                        }), setTimeout(function() {
                            wx.navigateBack({});
                        }, 1e3));
                    }
                });
            }
        });
    },
    lxsj: function(o) {
        console.log("联系商家" + o.currentTarget.dataset.dnddtel), wx.makePhoneCall({
            phoneNumber: o.currentTarget.dataset.dnddtel
        });
    },
    zlyd: function(o) {
        console.log("再来一单" + o.currentTarget.dataset.dnddid), wx.switchTab({
            url: "../../home/home"
        });
    },
    pingjia: function(o) {
        console.log("评价" + o.currentTarget.dataset.dnddid), wx.navigateTo({
            url: "../../comment/comment?wmddid=" + o.currentTarget.dataset.dnddid
        });
    },
    chzf: function() {
        wx.showModal({
            title: "提示",
            content: "请用餐结束后到前台付款",
            showCancel: !1
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.onLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});