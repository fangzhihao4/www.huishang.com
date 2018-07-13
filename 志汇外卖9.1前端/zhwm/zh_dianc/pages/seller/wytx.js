var app = getApp();

Page({
    data: {
        open: !0,
        txtype: 2,
        zhtext: "微信帐号",
        zhtstext: "请输入微信帐号",
        zhtype: "number",
        disabled: !1,
        logintext: "提现",
        fwxy: !0
    },
    lookck: function() {
        this.setData({
            fwxy: !1
        });
    },
    queren: function() {
        this.setData({
            fwxy: !0
        });
    },
    tradeinfo: function() {
        this.setData({
            open: !this.data.open
        });
    },
    radioChange: function(t) {
        console.log("radio发生change事件，携带value值为：", t.detail.value), "zfbtx" == t.detail.value && this.setData({
            txtype: 1,
            zhtext: "支付宝帐号",
            zhtstext: "请输入支付宝帐号",
            zhtype: "number"
        }), "wxtx" == t.detail.value && this.setData({
            txtype: 2,
            zhtext: "微信帐号",
            zhtstext: "请输入微信帐号",
            zhtype: "text"
        }), "yhktx" == t.detail.value && this.setData({
            txtype: 3,
            zhtext: "银行卡号",
            zhtstext: "请输入银行卡号",
            zhtype: "number"
        });
    },
    formSubmit: function(t) {
        var e = this;
        console.log("form发生了submit事件，携带数据为：", t.detail.value);
        var a = wx.getStorageSync("sjdsjid"), o = Number(this.data.commission), i = Number(this.data.fxset.tx_money), s = t.detail.value.je, n = t.detail.value.name, l = t.detail.value.zh, u = t.detail.value.checkbox.length, c = t.detail.value.radiogroup;
        if (console.log(a, o, i, s, n, l, u, c), "" == c) return wx.showModal({
            title: "提示",
            content: "请选择提现方式"
        }), !1;
        if ("zfbtx" == c) var x = 1;
        if ("wxtx" == c) x = 2;
        if ("yhktx" == c) x = 3;
        var d = "", r = !0;
        o < i ? d = "佣金满" + i + "才能申请提现" : "" == s ? d = "请填写提现金额！" : Number(s) < i ? d = "提现金额未满足提现要求" : Number(s) > o ? d = "提现金额超出您的实际佣金" : "" == n ? d = "请填写姓名！" : "" == l ? d = "请填写帐号！" : 0 == u ? d = "请阅读并同意商家提现协议" : (e.setData({
            disabled: !0,
            logintext: "提交中..."
        }), r = !1, app.util.request({
            url: "entry/wxapp/StoreTx",
            cachetime: "0",
            data: {
                store_id: a,
                type: x,
                name: n,
                username: l,
                tx_cost: s
            },
            success: function(t) {
                console.log(t), 1 == t.data ? (wx.showToast({
                    title: "提交成功"
                }), setTimeout(function() {
                    wx.redirectTo({
                        url: "txmx"
                    });
                }, 1e3)) : (wx.showToast({
                    title: "请重试！",
                    icon: "loading"
                }), e.setData({
                    disabled: !1,
                    logintext: "提现"
                }));
            }
        })), 1 == r && wx.showModal({
            title: "提示",
            content: d
        });
    },
    onLoad: function(t) {
        var e = this, a = wx.getStorageSync("sjdsjid");
        app.util.request({
            url: "entry/wxapp/StoreKtx",
            cachetime: "0",
            data: {
                store_id: a
            },
            success: function(t) {
                console.log(t), e.setData({
                    commission: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(t) {
                console.log(t.data), e.setData({
                    iswx: t.data.is_wx,
                    iszfb: t.data.is_zfb,
                    isyhk: t.data.is_yhk,
                    fxset: t.data
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.onLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {}
});