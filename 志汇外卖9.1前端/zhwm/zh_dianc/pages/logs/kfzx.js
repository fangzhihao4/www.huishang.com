var app = getApp();

Page({
    data: {},
    tel: function() {
        wx.makePhoneCall({
            phoneNumber: this.data.tel
        });
    },
    onLoad: function(n) {
        var t = this;
        console.log(this), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(n) {
                console.log(n), t.setData({
                    bqxx: n.data,
                    tel: n.data.tel
                });
            }
        });
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {}
});