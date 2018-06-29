var api = require("../../api.js"), app = getApp(), is_loading_more = !1, is_no_more = !1;

Page({
    data: {
        page: 1,
        video_list: [],
        url: "",
        hide: "hide",
        show: !1,
        animationData: {}
    },
    onLoad: function(a) {
        app.pageOnLoad(this);
        this.loadMoreGoodsList();
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    loadMoreGoodsList: function() {
        var o = this;
        if (!is_loading_more) {
            o.setData({
                show_loading_bar: !0
            }), is_loading_more = !0;
            var i = o.data.page;
            app.request({
                url: api.default.video_list,
                data: {
                    page: i
                },
                success: function(a) {
                    0 == a.data.list.length && (is_no_more = !0);
                    var t = o.data.video_list.concat(a.data.list);
                    o.setData({
                        video_list: t,
                        page: i + 1
                    });
                },
                complete: function() {
                    is_loading_more = !1, o.setData({
                        show_loading_bar: !1
                    });
                }
            });
        }
    },
    play: function(a) {
        var t = a.currentTarget.dataset.index;
        wx.createVideoContext("video_" + this.data.show_video).pause(), this.setData({
            show_video: t,
            show: !0
        });
    },
    onReachBottom: function() {
        is_no_more || this.loadMoreGoodsList();
    },
    more: function(a) {
        var t = this, o = a.target.dataset.index, i = t.data.video_list, e = wx.createAnimation({
            duration: 1e3,
            timingFunction: "ease"
        });
        this.animation = e, -1 != i[o].show ? (e.rotate(0).step(), i[o].show = -1) : (e.rotate(0).step(), 
        i[o].show = 0), t.setData({
            video_list: i,
            animationData: this.animation.export()
        });
    }
});