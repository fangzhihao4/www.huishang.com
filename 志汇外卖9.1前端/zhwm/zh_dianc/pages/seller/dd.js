var dsq, app = getApp();

Page({
    data: {},
    onLoad: function(a) {
        app.editTabBar();
        var t = this;
        a.activeIndex && this.setData({
            activeIndex: parseInt(a.activeIndex)
        });
        var e = wx.getStorageSync("sjdsjid");
        console.log(e);
        var n = wx.getStorageSync("imglink");
        console.log(n), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: e
            },
            success: function(a) {
                console.log("商家信息", a), t.setData({
                    store: a.data,
                    url: n
                });
            }
        }), wx.getStorageSync("yybb") && (dsq = setInterval(function() {
            app.util.request({
                url: "entry/wxapp/NewOrder",
                cachetime: "0",
                data: {
                    store_id: e
                },
                success: function(a) {
                    console.log(a), 1 == a.data && wx.playBackgroundAudio({
                        dataUrl: wx.getStorageSync("url2") + "addons/zh_dianc/template/images/wm.wav",
                        title: "语音播报"
                    }), 2 == a.data && wx.playBackgroundAudio({
                        dataUrl: wx.getStorageSync("url2") + "addons/zh_dianc/template/images/dn.wav",
                        title: "语音播报"
                    }), 3 == a.data && wx.playBackgroundAudio({
                        dataUrl: wx.getStorageSync("url2") + "addons/zh_dianc/template/images/yy.wav",
                        title: "语音播报"
                    });
                }
            });
        }, 1e4));
    },
    onReady: function() {},
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {
        clearInterval(dsq);
    },
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});