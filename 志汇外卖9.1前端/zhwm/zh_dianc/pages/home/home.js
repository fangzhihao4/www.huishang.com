var qqmapsdk, app = getApp(), QQMapWX = require("../../utils/qqmap-wx-jssdk.js"), amapFile = require("../../utils/amap-wx.js"), util = require("../../utils/util.js");

Page({
    data: {
        huise: !1,
        huangse: !0,
        hdnum: 0,
        kpgg: !0,
        slider: [],
        currentTab: 0,
        swiperCurrent: 0,
        listarr: [ "距离", "推荐", "销量", "评分" ],
        activeIndex: 0,
        qqsj: !1,
        scrollHeight: 0,
        pagenum: 1,
        storelist: [],
        mygd: !1,
        jzgd: !0,
        jzwb: !1,
        bjyylb: "laba"
    },
    onLoad: function(t) {
        console.log(t);
        var e = decodeURIComponent(t.scene);
        if (console.log("scene", e), "undefined" != e) var a = e;
        if (null != t.userid) {
            console.log("转发获取到的userid:", t.userid);
            a = t.userid;
        }
        console.log("fxzuid", a);
        var o = util.formatTime(new Date()).slice(11, 16);
        console.log(o), this.setData({
            current_time: o
        });
        var s = this;
        new amapFile.AMapWX({
            key: "d03d1ecd781de95397abc7c9f60273e2"
        }).getWeather({
            success: function(t) {
                console.log(t), s.setData({
                    tianqi: t
                });
            },
            fail: function(t) {
                console.log(t);
            }
        }), wx.getSystemInfo({
            success: function(t) {
                s.setData({
                    scrollHeight: t.windowHeight
                });
            }
        }), app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(t) {
                console.log(t), qqmapsdk = new QQMapWX({
                    key: t.data.map_key
                }), s.setData({
                    mdxx: t.data
                }), "1" == t.data.more && (s.dwreLoad(), wx.setNavigationBarTitle({
                    title: t.data.pt_name
                })), "2" == t.data.more && s.danreLoad(), wx.setStorageSync("bqxx", t.data);
            }
        }), app.util.request({
            url: "entry/wxapp/Url",
            cachetime: "0",
            success: function(t) {
                wx.setStorageSync("imglink", t.data), s.setData({
                    url: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Url2",
            cachetime: "0",
            success: function(t) {
                console.log(t.data), s.setData({
                    url2: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/ad2",
            cachetime: "0",
            success: function(t) {
                console.log(t);
                for (var e = [], a = [], o = 0; o < t.data.length; o++) "1" == t.data[o].type && e.push(t.data[o]), 
                "2" == t.data[o].type && a.push(t.data[o]);
                console.log(e, a), s.setData({
                    slider: e
                }), 0 != a.length && s.setData({
                    kpgg: !1,
                    kpggimg: a
                });
            }
        }), app.util.request({
            url: "entry/wxapp/storetype",
            cachetime: "0",
            success: function(t) {
                console.log(t.data);
                for (var e = [], a = 0, o = t.data.length; a < o; a += 8) e.push(t.data.slice(a, a + 8));
                console.log(e), s.setData({
                    navs: e
                });
            }
        }), wx.login({
            success: function(t) {
                var e = t.code;
                wx.setStorageSync("code", t.code), app.util.request({
                    url: "entry/wxapp/openid",
                    cachetime: "0",
                    data: {
                        code: e
                    },
                    success: function(t) {
                        console.log(t), wx.setStorageSync("key", t.data.session_key), wx.setStorageSync("openid", t.data.openid);
                        var e = t.data.openid;
                        console.log(e), "" == e ? wx.showToast({
                            title: "没有获取到openid",
                            icon: "",
                            image: "",
                            duration: 1e3,
                            mask: !0,
                            success: function(t) {},
                            fail: function(t) {},
                            complete: function(t) {}
                        }) : app.util.request({
                            url: "entry/wxapp/Login",
                            cachetime: "0",
                            data: {
                                openid: e
                            },
                            success: function(t) {
                                console.log(t), wx.setStorageSync("users", t.data), app.util.request({
                                    url: "entry/wxapp/New",
                                    cachetime: "0",
                                    data: {
                                        user_id: t.data.id,
                                        store_id: s.data.mdxx.default_store
                                    },
                                    success: function(t) {
                                        console.log(t), wx.setStorageSync("new_user", t.data);
                                    }
                                }), null != a && app.util.request({
                                    url: "entry/wxapp/Binding",
                                    cachetime: "0",
                                    data: {
                                        fx_user: t.data.id,
                                        user_id: a
                                    },
                                    success: function(t) {
                                        console.log(t);
                                    }
                                });
                            }
                        });
                    }
                });
            }
        });
    },
    dwreLoad: function() {
        var s = this;
        wx.getLocation({
            type: "wgs84",
            success: function(t) {
                var e = t.latitude, a = t.longitude, o = e + "," + a;
                console.log(o), qqmapsdk.reverseGeocoder({
                    location: {
                        latitude: e,
                        longitude: a
                    },
                    coord_type: 1,
                    success: function(t) {
                        var e = t.result.ad_info.location;
                        console.log(t), console.log(t.result.formatted_addresses.recommend), console.log("坐标转地址后的经纬度：", t.result.ad_info.location), 
                        s.setData({
                            weizhi: t.result.formatted_addresses.recommend,
                            startjwd: e
                        }), s.duoreLoad(e);
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
                                t.authSetting["scope.userLocation"] ? wx.getLocation({
                                    type: "wgs84",
                                    success: function(t) {
                                        var e = t.latitude, a = t.longitude, o = e + "," + a;
                                        console.log(o), qqmapsdk.reverseGeocoder({
                                            location: {
                                                latitude: e,
                                                longitude: a
                                            },
                                            coord_type: 1,
                                            success: function(t) {
                                                var e = t.result.ad_info.location;
                                                console.log(t), console.log(t.result.formatted_addresses.recommend), console.log("坐标转地址后的经纬度：", t.result.ad_info.location), 
                                                s.setData({
                                                    weizhi: t.result.formatted_addresses.recommend,
                                                    startjwd: e
                                                }), s.duoreLoad(e);
                                            },
                                            fail: function(t) {
                                                console.log(t);
                                            },
                                            complete: function(t) {
                                                console.log(t);
                                            }
                                        });
                                    }
                                }) : s.dwreLoad();
                            },
                            fail: function(t) {}
                        });
                    }
                });
            },
            complete: function(t) {}
        });
    },
    closekpgg: function() {
        this.setData({
            kpgg: !0
        });
    },
    duoreLoad: function(t) {
        console.log(t);
        var s = this;
        app.util.request({
            url: "entry/wxapp/StoreList",
            cachetime: "0",
            data: {
                lat: t.lat,
                lng: t.lng,
                page: s.data.pagenum,
                pagesize: 10
            },
            success: function(t) {
                console.log("分页返回的商家列表数据", t.data), t.data.length < 10 ? s.setData({
                    mygd: !0,
                    jzgd: !0,
                    jzwb: !0
                }) : s.setData({
                    jzgd: !0,
                    pagenum: s.data.pagenum + 1
                });
                var e = s.data.storelist;
                e = function(t) {
                    for (var e = [], a = 0; a < t.length; a++) -1 == e.indexOf(t[a]) && e.push(t[a]);
                    return e;
                }(e = e.concat(t.data));
                for (var a = 0; a < t.data.length; a++) {
                    "0.0" == t.data[a].score && (t.data[a].score = "5.0");
                    var o = parseFloat(t.data[a].juli);
                    console.log(o), console.log(), t.data[a].aa = o < 1e3 ? o + "m" : (o / 1e3).toFixed(2) + "km", 
                    t.data[a].aa1 = o, s.setData({
                        jlstorelist: e,
                        tjpx: e,
                        xlpx: e,
                        pfpx: e,
                        storelist: e,
                        qqsj: !0
                    }), s.setData({
                        tjstorelist: s.data.tjpx.sort(s.comparesx("number")),
                        xlstorelist: s.data.xlpx.sort(s.comparejx("sales")),
                        pfstorelist: s.data.pfpx.sort(s.comparejx("score"))
                    });
                }
                console.log(e);
            }
        });
    },
    tabClick: function(t) {
        var e = this, a = t.currentTarget.id;
        console.log(a), this.setData({
            activeIndex: t.currentTarget.id
        }), "1" == a && e.setData({
            tjstorelist: e.data.tjpx.sort(e.comparesx("number")),
            qqsj: !0
        }), "2" == a && (console.log(e.data.xlpx), e.setData({
            xlstorelist: e.data.xlpx.sort(e.comparejx("sales")),
            qqsj: !0
        })), "3" == a && (console.log(e.data.pfpx), e.setData({
            pfstorelist: e.data.pfpx.sort(e.comparejx("score")),
            qqsj: !0
        })), "0" == a && e.setData({
            qqsj: !0
        });
    },
    bindChange: function(t) {
        this.setData({
            currentTab: t.detail.current
        });
    },
    comparesx: function(s) {
        return function(t, e) {
            var a = t[s], o = e[s];
            return isNaN(Number(a)) || isNaN(Number(o)) || (a = Number(a), o = Number(o)), a < o ? -1 : o < a ? 1 : 0;
        };
    },
    comparejx: function(s) {
        return function(t, e) {
            var a = t[s], o = e[s];
            return isNaN(Number(a)) || isNaN(Number(o)) || (a = Number(a), o = Number(o)), a < o ? 1 : o < a ? -1 : 0;
        };
    },
    distance: function(t, e, a) {
        var o;
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
                console.log(t), 0 == t.status && (o = Math.round(t.result.elements[0].distance), 
                a(o));
            },
            fail: function(t) {
                console.log(t), 373 == t.status && (o = 15e3, a(o));
            },
            complete: function(t) {
                console.log(t);
            }
        });
    },
    changejwd: function(t, e, a) {
        var o;
        qqmapsdk.reverseGeocoder({
            location: {
                latitude: t,
                longitude: e
            },
            coord_type: 3,
            success: function(t) {
                console.log(t), console.log("坐标转地址后的经纬度：", t.result.ad_info.location), o = t.result.ad_info.location, 
                a(o);
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
    tzfl: function(t) {
        console.log(t.currentTarget.dataset.flinfo), wx.navigateTo({
            url: "sjfl?flid=" + t.currentTarget.dataset.flinfo.id + "&flname=" + t.currentTarget.dataset.flinfo.type_name
        });
    },
    danreLoad: function() {
        this.setData({
            hdnum: 0
        });
        var c = this, t = util.formatTime(new Date()).slice(11, 16);
        console.log(t), console.log(c.data);
        var l = c.data.current_time;
        app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: c.data.mdxx.default_store,
                user_id: wx.getStorageSync("users").id
            },
            success: function(e) {
                console.log(e), "" != e.data.store_mp3 && "1" == e.data.is_mp3 && (wx.playBackgroundAudio({
                    dataUrl: e.data.store_mp3
                }), wx.getBackgroundAudioPlayerState({
                    success: function(t) {
                        console.log(t);
                        t.status, t.dataUrl, t.currentPosition, t.duration, t.downloadPercent;
                    },
                    fail: function(t) {
                        console.log(t);
                    },
                    complete: function(t) {
                        console.log(t);
                    }
                })), wx.setStorageSync("nbcolor", e.data.color), getApp().sjid = e.data.id, wx.setNavigationBarTitle({
                    title: e.data.name
                }), wx.setNavigationBarColor({
                    frontColor: "#ffffff",
                    backgroundColor: e.data.color
                }), c.setData({
                    color: e.data.color
                }), app.util.request({
                    url: "entry/wxapp/Reduction",
                    cachetime: "0",
                    data: {
                        id: getApp().sjid
                    },
                    success: function(t) {
                        console.log(t), c.setData({
                            mj: t.data
                        }), 0 != t.data.length && "1" == e.data.xyh_open ? c.setData({
                            hdnum: 2
                        }) : 0 != t.data.length && "1" != e.data.xyh_open || 0 == t.data.length && "1" == e.data.xyh_open ? c.setData({
                            hdnum: 1
                        }) : c.setData({
                            hdnum: 0
                        });
                    }
                });
                var t = e.data.time, a = e.data.time2, o = e.data.time3, s = e.data.time4, n = e.data.is_rest;
                console.log("当前的系统时间为" + l), console.log("商家的营业时间从" + t + "至" + a, o + "至" + s), 
                c.setData({
                    rest: e.data.is_rest
                }), 1 == n ? console.log("商家正在休息") : (console.log("商家没有休息"), t < s ? t < l && l < a || o < l && l < s ? (console.log("商家正常营业"), 
                c.setData({
                    time: 1
                })) : l < t || a < l && l < o ? (console.log("商家还没开店呐，稍等一会儿可以吗？"), c.setData({
                    time: 2
                })) : s < l && (console.log("商家以及关店啦，明天再来吧"), c.setData({
                    time: 3
                })) : s < t && (t < l && l < a || o < l && s < l || l < o && l < s ? (console.log("商家正常营业"), 
                c.setData({
                    time: 1
                })) : l < t || a < l && l < o ? (console.log("商家还没开店呐，稍等一会儿可以吗？"), c.setData({
                    time: 2
                })) : s < l && (console.log("商家以及关店啦，明天再来吧"), c.setData({
                    time: 3
                }))));
                var i = Number(e.data.distance);
                c.setData({
                    store: e.data,
                    distance: i
                }), c.setData({
                    sjdzlat: Number(e.data.coordinates.split(",")[0]),
                    sjdzlng: Number(e.data.coordinates.split(",")[1])
                });
            }
        });
    },
    facing: function(t) {
        wx.navigateTo({
            url: "../fukuan/fukuan"
        });
    },
    breakout: function(t) {
        wx.scanCode({
            success: function(t) {
                console.log(t);
                var e = "../" + t.path.substring(15);
                wx.navigateTo({
                    url: e
                });
            },
            fail: function(t) {
                console.log("扫码fail");
            }
        });
    },
    takeOut: function(t) {
        wx.navigateTo({
            url: "../index/index?type=2"
        });
    },
    call_phone: function() {
        wx.makePhoneCall({
            phoneNumber: this.data.store.tel
        });
    },
    tomap: function(t) {
        wx.openLocation({
            latitude: this.data.sjdzlat,
            longitude: this.data.sjdzlng,
            name: this.data.store.name,
            address: this.data.store.address
        });
    },
    tzsjhj: function(t) {
        console.log(t.currentTarget.dataset.sjid), wx.navigateTo({
            url: "../info/sjhj"
        });
    },
    tzxcx: function(t) {
        console.log(t.currentTarget.dataset.appid), wx.navigateToMiniProgram({
            appId: t.currentTarget.dataset.appid,
            success: function(t) {
                console.log(t);
            }
        });
    },
    tzweb: function(t) {
        console.log(t.currentTarget.dataset.index, this.data.slider);
        var e = this.data.slider[t.currentTarget.dataset.index];
        console.log(e), "1" == e.item && wx.navigateTo({
            url: e.src
        }), "2" == e.item && wx.navigateTo({
            url: "webhtml?weburl=" + e.id
        }), "3" == e.item && wx.navigateToMiniProgram({
            appId: e.tz_appid,
            success: function(t) {
                console.log(t);
            }
        });
    },
    ggtzweb: function(t) {
        console.log(t.currentTarget.dataset.index, this.data.kpggimg);
        var e = this.data.kpggimg[t.currentTarget.dataset.index];
        console.log(e), "1" == e.item && wx.navigateTo({
            url: e.src
        }), "2" == e.item && wx.navigateTo({
            url: "webhtml?weburl=" + e.id
        }), "3" == e.item && wx.navigateToMiniProgram({
            appId: e.tz_appid,
            success: function(t) {
                console.log(t);
            }
        });
    },
    showShareModal: function() {
        this.setData({
            share_modal_active: "active",
            no_scroll: !0
        });
    },
    shareModalClose: function() {
        this.setData({
            share_modal_active: "",
            no_scroll: !1
        });
    },
    getGoodsQrcode: function() {
        var e = this;
        e.setData({
            goods_qrcode_active: "active",
            share_modal_active: ""
        }), app.util.request({
            url: "entry/wxapp/StoreCode",
            cachetime: "0",
            data: {
                store_id: getApp().sjid
            },
            success: function(t) {
                e.setData({
                    goods_qrcode: e.data.url2 + t.data
                });
            }
        });
    },
    goodsQrcodeClose: function() {
        this.setData({
            goods_qrcode_active: "",
            no_scroll: !1
        });
    },
    goodsQrcodeClick: function(t) {
        var e = t.currentTarget.dataset.src;
        wx.previewImage({
            urls: [ e ]
        });
    },
    saveGoodsQrcode: function() {
        var a = this;
        wx.saveImageToPhotosAlbum ? (wx.showLoading({
            title: "正在保存图片",
            mask: !1
        }), console.log(a.data.goods_qrcode), wx.downloadFile({
            url: a.data.goods_qrcode,
            success: function(t) {
                console.log(t), wx.showLoading({
                    title: "正在保存图片",
                    mask: !1
                }), wx.saveImageToPhotosAlbum({
                    filePath: t.tempFilePath,
                    success: function() {
                        a.goodsQrcodeClose(), wx.showModal({
                            title: "提示",
                            content: "商家海报保存成功",
                            showCancel: !1
                        });
                    },
                    fail: function(e) {
                        wx.showModal({
                            title: "警告",
                            content: "您点击了拒绝授权,无法正常保存图片,点击确定重新获取授权。",
                            showCancel: !1,
                            success: function(t) {
                                t.confirm ? wx.openSetting({
                                    success: function(t) {
                                        t.authSetting["scope.writePhotosAlbum"] && a.saveGoodsQrcode();
                                    },
                                    fail: function(t) {}
                                }) : wx.showModal({
                                    title: "图片保存失败",
                                    content: e.errMsg,
                                    showCancel: !1
                                });
                            }
                        });
                    },
                    complete: function(t) {
                        console.log(t), wx.hideLoading();
                    }
                });
            },
            fail: function(t) {
                wx.showModal({
                    title: "图片下载失败",
                    content: t.errMsg + ";" + a.data.goods_qrcode,
                    showCancel: !1
                });
            },
            complete: function(t) {
                console.log(t), wx.hideLoading();
            }
        })) : wx.showModal({
            title: "提示",
            content: "当前微信版本过低，无法使用该功能，请升级到最新微信版本后重试。",
            showCancel: !1
        });
    },
    onReady: function() {},
    onShow: function() {
        var t = wx.getStorageSync("bqxx");
        if ("1" == t.more) var e = wx.getStorageSync("bqxx").color;
        if ("2" == t.more) e = wx.getStorageSync("nbcolor");
        wx.setNavigationBarColor({
            frontColor: "#ffffff",
            backgroundColor: e
        }), this.setData({
            color: e
        });
    },
    onHide: function() {
        this.setData({
            kpgg: !0
        }), wx.stopBackgroundAudio();
    },
    gbbjyy: function() {
        var t = this.data.bjyylb;
        "laba" == t && (wx.stopBackgroundAudio(), this.setData({
            bjyylb: "laba1"
        }), wx.showToast({
            title: "音乐已关闭"
        })), "laba1" == t && (wx.playBackgroundAudio({
            dataUrl: this.data.store.store_mp3
        }), this.setData({
            bjyylb: "laba"
        }), wx.showToast({
            title: "音乐已开启"
        }));
    },
    onUnload: function() {},
    onPullDownRefresh: function() {
        "1" == this.data.mdxx.more && (this.setData({
            activeIndex: 0,
            pagenum: 1,
            storelist: [],
            qqsj: !1,
            jzgd: !0,
            jzwb: !1,
            mygd: !1
        }), console.log("下拉刷新", this.data.pagenum), this.data.jzgd && (this.setData({
            jzgd: !1
        }), this.dwreLoad())), "2" == this.data.mdxx.more && this.danreLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {
        console.log("上拉加载", this.data.pagenum);
        !this.data.mygd && this.data.jzgd && (this.setData({
            jzgd: !1
        }), this.duoreLoad(this.data.startjwd));
    },
    onShareAppMessage: function() {}
});