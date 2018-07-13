var app = getApp();

Page({
    data: {
        modalHidden: !0,
        infoactive: "1"
    },
    onLoad: function(o) {
        var n = wx.getStorageSync("bqxx");
        if ("1" == n.more) var t = wx.getStorageSync("bqxx").color;
        if ("2" == n.more) t = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: t
        }), this.setData({
            color: t
        });
        var a = wx.getStorageSync("imglink"), e = this, i = o.yyid;
        console.log(i), app.util.request({
            url: "entry/wxapp/ReservationInfo",
            cachetime: "0",
            data: {
                id: i
            },
            success: function(o) {
                console.log(o), e.setData({
                    yyinfo: o.data,
                    imglink: a,
                    infoactive: o.data.state
                });
            }
        });
    },
    call_phone: function() {
        wx.makePhoneCall({
            phoneNumber: this.data.yyinfo.tel
        });
    },
    cancel: function(o) {
        this.setData({
            modalHidden: !1
        });
    },
    modalChange: function() {
        this.setData({
            modalHidden: !0
        });
    },
    modalcancel: function() {
        this.setData({
            modalHidden: !0
        });
    },
    infoactive1: function(o) {
        this.setData({
            infoactive1: !1,
            infoactive2: !0,
            infoactive3: !0
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