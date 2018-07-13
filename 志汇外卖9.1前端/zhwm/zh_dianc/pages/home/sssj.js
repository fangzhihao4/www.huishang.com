var qqmapsdk, app = getApp(), QQMapWX = require("../../utils/qqmap-wx-jssdk.js"), util = require("../../utils/util.js"), pageNum = 1, searchTitle = "", msgListKey = "";

Page({
    data: {
        qqsj: !0,
        msgList: [],
        searchLogList: [],
        hidden: !0,
        scrollTop: 0,
        inputShowed: !1,
        inputVal: "",
        searchLogShowed: !0
    },
    onLoad: function(t) {
        var e = this, o = wx.getStorageSync("imglink");
        wx.getSystemInfo({
            success: function(t) {
                e.setData({
                    windowHeight: t.windowHeight,
                    windowWidth: t.windowWidth,
                    searchLogList: wx.getStorageSync("searchLog") || [],
                    url: o
                });
            }
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(t) {
                console.log(t), qqmapsdk = new QQMapWX({
                    key: t.data.map_key
                }), e.setData({
                    mdxx: t.data
                });
            }
        });
    },
    reLoad: function(s) {
        this.setData({
            qqsj: !1
        });
        var n = this;
        wx.getLocation({
            type: "wgs84",
            success: function(t) {
                var e = t.latitude, o = t.longitude, a = e + "," + o;
                console.log(a), qqmapsdk.reverseGeocoder({
                    location: {
                        latitude: e,
                        longitude: o
                    },
                    coord_type: 1,
                    success: function(t) {
                        var i = t.result.ad_info.location;
                        console.log(t), console.log(t.result.formatted_addresses.recommend), console.log("坐标转地址后的经纬度：", t.result.ad_info.location), 
                        n.setData({
                            weizhi: t.result.formatted_addresses.recommend
                        }), app.util.request({
                            url: "entry/wxapp/SearchStore",
                            cachetime: "0",
                            data: {
                                key: s
                            },
                            success: function(t) {
                                console.log(t.data), n.setData({
                                    qqsj: !0
                                }), 0 == t.data.length && n.setData({
                                    tjstorelist: []
                                });
                                for (var e = t.data, o = 0; o < e.length; o++) {
                                    var a = e[o].coordinates.split(",");
                                    console.log(a, i);
                                    var s = util.getDistance(i.lat, i.lng, a[0], a[1]).toFixed(1);
                                    console.log(s), e[o].aa = s < 1e3 ? s + "m" : (s / 1e3).toFixed(2) + "km", e[o].aa1 = s, 
                                    n.setData({
                                        tjstorelist: e
                                    });
                                }
                                console.log(e);
                            }
                        });
                    },
                    fail: function(t) {
                        console.log(t);
                    },
                    complete: function(t) {
                        console.log(t);
                    }
                });
            }
        });
    },
    changejwd: function(t, e, o) {
        var a;
        qqmapsdk.reverseGeocoder({
            location: {
                latitude: t,
                longitude: e
            },
            coord_type: 3,
            success: function(t) {
                console.log(t), console.log("坐标转地址后的经纬度：", t.result.ad_info.location), a = t.result.ad_info.location, 
                o(a);
            },
            fail: function(t) {
                console.log(t);
            },
            complete: function(t) {
                console.log(t);
            }
        });
    },
    tzsj: function(t) {
        console.log(t.currentTarget.dataset.sjid);
        var e = t.currentTarget.dataset.sjid;
        getApp().sjid = t.currentTarget.dataset.sjid.id, "0" == e.is_dn && "0" == e.is_pd && "0" == e.is_yy && "1" == e.is_wm && "0" == e.is_sy ? wx.navigateTo({
            url: "../index/index?type=2"
        }) : wx.navigateTo({
            url: "../info/info"
        });
    },
    onReady: function() {},
    onShow: function() {},
    scroll: function(t) {
        this.setData({
            scrollTop: t.detail.scrollTop
        });
    },
    showInput: function() {
        "" != wx.getStorageSync("searchLog") ? this.setData({
            inputShowed: !0,
            searchLogShowed: !0,
            searchLogList: wx.getStorageSync("searchLog")
        }) : this.setData({
            inputShowed: !0,
            searchLogShowed: !0
        });
    },
    searchData: function() {
        console.log(searchTitle);
        var t = this;
        if (t.setData({
            msgList: [],
            scrollTop: 0
        }), "" != searchTitle) {
            var e = t.data.searchLogList;
            -1 === e.indexOf(searchTitle) && (e.unshift(searchTitle), wx.setStorageSync("searchLog", e), 
            t.setData({
                searchLogList: wx.getStorageSync("searchLog")
            })), t.reLoad(searchTitle);
        } else wx.showToast({
            title: "搜索内容为空",
            icon: "loading",
            duration: 1e3
        });
    },
    clearInput: function() {
        this.setData({
            msgList: [],
            scrollTop: 0,
            inputVal: ""
        }), searchTitle = "";
    },
    inputTyping: function(t) {
        "" != wx.getStorageSync("searchLog") ? this.setData({
            inputVal: t.detail.value,
            searchLogList: wx.getStorageSync("searchLog")
        }) : this.setData({
            inputVal: t.detail.value,
            searchLogShowed: !0
        }), searchTitle = t.detail.value;
    },
    searchDataByLog: function(t) {
        searchTitle = t.target.dataset.log, console.log(t.target.dataset.log);
        this.setData({
            msgList: [],
            scrollTop: 0,
            inputShowed: !0,
            inputVal: searchTitle
        }), this.searchData();
    },
    clearSearchLog: function() {
        this.setData({
            hidden: !1
        }), wx.removeStorageSync("searchLog"), this.setData({
            scrollTop: 0,
            hidden: !0,
            searchLogList: []
        });
    },
    onHide: function() {},
    onUnload: function() {}
});