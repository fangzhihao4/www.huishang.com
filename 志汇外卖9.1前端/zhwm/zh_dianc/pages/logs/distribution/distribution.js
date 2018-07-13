var app = getApp();

Page({
    data: {
        fwxy: !0,
        disabled: !1,
        logintext: "申请成为分销商"
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
    onLoad: function(t) {
        var e = this, a = wx.getStorageSync("imglink"), n = wx.getStorageSync("users").id;
        app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(t) {
                console.log(t), e.setData({
                    pt_name: t.data.pt_name,
                    url: a
                });
            }
        }), app.util.request({
            url: "entry/wxapp/FxSet",
            cachetime: "0",
            success: function(t) {
                console.log(t.data), e.setData({
                    img: t.data.img2,
                    fx_details: t.data.fx_details,
                    fxset: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/MySx",
            cachetime: "0",
            data: {
                user_id: n
            },
            success: function(t) {
                console.log(t.data), t.data ? e.setData({
                    yqr: t.data.name
                }) : e.setData({
                    yqr: "总店"
                });
            }
        });
    },
    formSubmit: function(t) {
        console.log("form发生了submit事件，携带数据为：", t.detail.value);
        var e = this, a = wx.getStorageSync("users").id, n = t.detail.value.name, o = t.detail.value.tel, s = t.detail.value.checkbox.length;
        console.log(a, n, o, s);
        var i = "", l = !0;
        "" == n ? i = "请填写姓名！" : "" == o ? i = "请填写联系电话！" : /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/.test(o) && 11 == o.length ? 0 == s ? i = "阅读并同意分销商申请协议" : (e.setData({
            disabled: !0,
            logintext: "提交中..."
        }), l = !1, app.util.request({
            url: "entry/wxapp/Distribution",
            cachetime: "0",
            data: {
                user_id: a,
                user_name: n,
                user_tel: o
            },
            success: function(t) {
                console.log(t), 1 == t.data ? (wx.showToast({
                    title: "提交成功"
                }), setTimeout(function() {
                    wx.navigateBack({});
                }, 1e3)) : (wx.showToast({
                    title: "请重试！",
                    icon: "loading"
                }), e.setData({
                    disabled: !1,
                    logintext: "申请成为分销商"
                }));
            }
        })) : i = "手机号错误！", 1 == l && wx.showModal({
            title: "提示",
            content: i
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});