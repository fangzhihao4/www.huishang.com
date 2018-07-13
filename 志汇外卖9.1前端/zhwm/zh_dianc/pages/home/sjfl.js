var qqmapsdk, app = getApp(), QQMapWX = require("../../utils/qqmap-wx-jssdk.js"), util = require("../../utils/util.js");

Page({
    data: {
        listarr: [ "推荐排序", "销量", "评分", "距离" ],
        activeIndex: 0,
        qqsj: !1,
        scrollHeight: 0,
        pagenum: 1,
        storelist: [],
        mygd: !1,
        jzgd: !0,
        jzwb: !1
    },
    onLoad: function(t) {
        var e = wx.getStorageSync("bqxx");
        if ("1" == e.more) var o = wx.getStorageSync("bqxx").color;
        if ("2" == e.more) o = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: o
        }), console.log(t), wx.setNavigationBarTitle({
            title: t.flname
        });
        var a = wx.getStorageSync("imglink");
        this.setData({
            flid: t.flid,
            url: a
        }), console.log(this.data.flid);
        var s = this;
        qqmapsdk = new QQMapWX({
            key: e.map_key
        }), wx.getSystemInfo({
            success: function(t) {
                s.setData({
                    scrollHeight: t.windowHeight
                });
            }
        }), this.reLoad();
    },
    tabClick: function(t) {
        var e = this, o = t.currentTarget.id;
        console.log(o), this.setData({
            activeIndex: t.currentTarget.id,
            qqsj: !1
        }), "0" == o && e.setData({
            tjstorelist: e.data.tjpx.sort(e.comparesx("number")),
            qqsj: !0
        }), "1" == o && (console.log(e.data.xlpx), e.setData({
            xlstorelist: e.data.xlpx.sort(e.comparejx("sales")),
            qqsj: !0
        })), "2" == o && (console.log(e.data.pfpx), e.setData({
            pfstorelist: e.data.pfpx.sort(e.comparejx("score")),
            qqsj: !0
        })), "3" == o && e.setData({
            qqsj: !0
        });
    },
    comparesx: function(s) {
        return function(t, e) {
            var o = t[s], a = e[s];
            return isNaN(Number(o)) || isNaN(Number(a)) || (o = Number(o), a = Number(a)), o < a ? -1 : a < o ? 1 : 0;
        };
    },
    comparejx: function(s) {
        return function(t, e) {
            var o = t[s], a = e[s];
            return isNaN(Number(o)) || isNaN(Number(a)) || (o = Number(o), a = Number(a)), o < a ? 1 : a < o ? -1 : 0;
        };
    },
    sljz: function() {
        console.log("上拉加载", this.data.pagenum);
        !this.data.mygd && this.data.jzgd && (this.setData({
            jzgd: !1
        }), this.reLoad());
    },
    reLoad: function() {
        console.log(this.data.flid);
        var i = this;
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
                        var n = t.result.ad_info.location;
                        console.log(t), console.log(t.result.formatted_addresses.recommend), console.log("坐标转地址后的经纬度：", t.result.ad_info.location), 
                        i.setData({
                            weizhi: t.result.formatted_addresses.recommend
                        }), app.util.request({
                            url: "entry/wxapp/StoreList",
                            cachetime: "0",
                            data: {
                                lat: n.lat,
                                lng: n.lng,
                                type_id: i.data.flid,
                                page: i.data.pagenum,
                                pagesize: 10
                            },
                            success: function(t) {
                                console.log("分页返回的商家列表数据", t.data), t.data.length < 10 && (i.setData({
                                    mygd: !0,
                                    jzwb: !0
                                }), wx.showToast({
                                    title: "没有更多了",
                                    icon: "loading",
                                    duration: 1e3
                                })), i.setData({
                                    jzgd: !0,
                                    pagenum: i.data.pagenum + 1
                                });
                                var e = i.data.storelist;
                                if (e = e.concat(t.data), 0 == t.data.length) i.setData({
                                    tjstorelist: e,
                                    jlpx: e,
                                    xlpx: e,
                                    pfpx: e,
                                    qqsj: !0
                                }); else for (var o = 0; o < e.length; o++) {
                                    "0.0" == e[o].score && (e[o].score = "5.0");
                                    var a = e[o].coordinates.split(",");
                                    console.log(a, n);
                                    var s = util.getDistance(n.lat, n.lng, a[0], a[1]).toFixed(1);
                                    console.log(s), e[o].aa = s < 1e3 ? s + "m" : (s / 1e3).toFixed(2) + "km", e[o].aa1 = s, 
                                    i.setData({
                                        jlstorelist: e,
                                        tjpx: e,
                                        xlpx: e,
                                        pfpx: e,
                                        storelist: e,
                                        qqsj: !0
                                    }), i.setData({
                                        tjstorelist: i.data.tjpx.sort(i.comparesx("number")),
                                        xlstorelist: i.data.xlpx.sort(i.comparejx("sales")),
                                        pfstorelist: i.data.pfpx.sort(i.comparejx("score"))
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
            },
            fail: function() {
                wx.showModal({
                    title: "警告",
                    content: "您点击了拒绝授权,无法正常使用功能，点击确定重新获取授权。",
                    showCancel: !1,
                    success: function(t) {
                        t.confirm && wx.openSetting({
                            success: function(t) {
                                t.authSetting["scope.userLocation"], i.reLoad();
                            },
                            fail: function(t) {}
                        });
                    }
                });
            },
            complete: function(t) {}
        });
    },
    distance: function(t, e, o) {
        var a;
        qqmapsdk.calculateDistance({
            mode: "driving",
            from: {
                latitude: t.lat,
                longitude: t.lng
            },
            to: [ {
                latitude: e.lat,
                longitude: e.lng
            } ],
            success: function(t) {
                console.log(t), 0 == t.status && (a = Math.round(t.result.elements[0].distance), 
                o(a));
            },
            fail: function(t) {
                console.log(t), 373 == t.status && (a = 15e3, o(a));
            },
            complete: function(t) {
                console.log(t);
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
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.setData({
            activeIndex: 0,
            qqsj: !1,
            pagenum: 1,
            storelist: [],
            mygd: !1,
            jzgd: !0,
            jzwb: !1
        }), this.reLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});