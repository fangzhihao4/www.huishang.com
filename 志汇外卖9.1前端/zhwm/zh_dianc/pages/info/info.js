var app = getApp(), util = require("../../utils/util.js");

Page({
    data: {
        currentTab: 0,
        swiperCurrent: 0,
        huise: !1,
        huangse: !0,
        hdnum: 0,
        kpgg: !0,
        bjyylb: "laba"
    },
    onLoad: function(t) {
        console.log(t);
        var o = decodeURIComponent(t.scene);
        console.log("scene", o), "undefined" != o && (getApp().sjid = o), null != t.id && (console.log("转发获取到的sjid:", t.id), 
        getApp().sjid = t.id);
        var e = wx.getStorageSync("bqxx");
        console.log(e), this.setData({
            bqxx: e
        });
        var a = util.formatTime(new Date()).slice(11, 16);
        console.log(a), this.setData({
            current_time: a
        }), this.reLoad();
    },
    reLoad: function() {
        this.setData({
            hdnum: 0
        });
        var i = this, t = util.formatTime(new Date()).slice(11, 16);
        console.log(t), wx.login({
            success: function(t) {
                var o = t.code;
                wx.setStorageSync("code", t.code), app.util.request({
                    url: "entry/wxapp/openid",
                    cachetime: "0",
                    data: {
                        code: o
                    },
                    success: function(t) {
                        console.log(t), wx.setStorageSync("key", t.data.session_key), wx.setStorageSync("openid", t.data.openid);
                        var o = t.data.openid;
                        console.log(o), "" == o ? wx.showToast({
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
                                openid: o
                            },
                            success: function(t) {
                                console.log(t), wx.setStorageSync("users", t.data), app.util.request({
                                    url: "entry/wxapp/New",
                                    cachetime: "0",
                                    data: {
                                        user_id: t.data.id,
                                        store_id: getApp().sjid
                                    },
                                    success: function(t) {
                                        console.log(t), wx.setStorageSync("new_user", t.data);
                                    }
                                });
                            }
                        });
                    }
                });
            }
        }), console.log(i.data);
        var l = i.data.current_time;
        app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: getApp().sjid,
                user_id: wx.getStorageSync("users").id
            },
            success: function(o) {
                console.log(o), "" != o.data.store_mp3 && "1" == o.data.is_mp3 && (wx.playBackgroundAudio({
                    dataUrl: o.data.store_mp3
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
                })), wx.setStorageSync("nbcolor", o.data.color), wx.setNavigationBarColor({
                    frontColor: "#ffffff",
                    backgroundColor: o.data.color
                }), i.setData({
                    color: o.data.color
                }), app.util.request({
                    url: "entry/wxapp/Reduction",
                    cachetime: "0",
                    data: {
                        id: getApp().sjid
                    },
                    success: function(t) {
                        console.log(t), i.setData({
                            mj: t.data
                        }), 0 != t.data.length && "1" == o.data.xyh_open ? i.setData({
                            hdnum: 2
                        }) : 0 != t.data.length && "1" != o.data.xyh_open || 0 == t.data.length && "1" == o.data.xyh_open ? i.setData({
                            hdnum: 1
                        }) : i.setData({
                            hdnum: 0
                        });
                    }
                });
                var t = o.data.time, e = o.data.time2, a = o.data.time3, s = o.data.time4, n = o.data.is_rest;
                console.log("当前的系统时间为" + l), console.log("商家的营业时间从" + t + "至" + e, a + "至" + s), 
                i.setData({
                    rest: o.data.is_rest
                }), 1 == n ? console.log("商家正在休息") : (console.log("商家没有休息"), t < s ? t < l && l < e || a < l && l < s ? (console.log("商家正常营业"), 
                i.setData({
                    time: 1
                })) : l < t || e < l && l < a ? (console.log("商家还没开店呐，稍等一会儿可以吗？"), i.setData({
                    time: 2
                })) : s < l && (console.log("商家以及关店啦，明天再来吧"), i.setData({
                    time: 3
                })) : s < t && (t < l && l < e || a < l && s < l || l < a && l < s ? (console.log("商家正常营业"), 
                i.setData({
                    time: 1
                })) : l < t || e < l && l < a ? (console.log("商家还没开店呐，稍等一会儿可以吗？"), i.setData({
                    time: 2
                })) : s < l && (console.log("商家以及关店啦，明天再来吧"), i.setData({
                    time: 3
                }))));
                var c = Number(o.data.distance);
                i.setData({
                    store: o.data,
                    distance: c
                }), i.setData({
                    sjdzlat: Number(o.data.coordinates.split(",")[0]),
                    sjdzlng: Number(o.data.coordinates.split(",")[1])
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Url",
            cachetime: "0",
            success: function(t) {
                console.log(t.data), wx.setStorageSync("imglink", t.data), i.setData({
                    url: t.data
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Url2",
            cachetime: "0",
            success: function(t) {
                console.log(t.data), i.setData({
                    url2: t.data
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
                var o = "../" + t.path.substring(15);
                wx.navigateTo({
                    url: o
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
            url: "sjhj"
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
        var o = this;
        o.setData({
            goods_qrcode_active: "active",
            share_modal_active: ""
        }), app.util.request({
            url: "entry/wxapp/StoreCode",
            cachetime: "0",
            data: {
                store_id: getApp().sjid
            },
            success: function(t) {
                o.setData({
                    goods_qrcode: o.data.url2 + t.data
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
        var o = t.currentTarget.dataset.src;
        wx.previewImage({
            urls: [ o ]
        });
    },
    saveGoodsQrcode: function() {
        var e = this;
        wx.saveImageToPhotosAlbum ? (wx.showLoading({
            title: "正在保存图片",
            mask: !1
        }), console.log(e.data.goods_qrcode), wx.downloadFile({
            url: e.data.goods_qrcode,
            success: function(t) {
                console.log(t), wx.showLoading({
                    title: "正在保存图片",
                    mask: !1
                }), wx.saveImageToPhotosAlbum({
                    filePath: t.tempFilePath,
                    success: function() {
                        e.goodsQrcodeClose(), wx.showModal({
                            title: "提示",
                            content: "商家海报保存成功",
                            showCancel: !1
                        });
                    },
                    fail: function(o) {
                        wx.showModal({
                            title: "警告",
                            content: "您点击了拒绝授权,无法正常保存图片,点击确定重新获取授权。",
                            showCancel: !1,
                            success: function(t) {
                                t.confirm ? wx.openSetting({
                                    success: function(t) {
                                        t.authSetting["scope.writePhotosAlbum"] && e.saveGoodsQrcode();
                                    },
                                    fail: function(t) {}
                                }) : wx.showModal({
                                    title: "图片保存失败",
                                    content: o.errMsg,
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
                    content: t.errMsg + ";" + e.data.goods_qrcode,
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
    onShow: function() {},
    onHide: function() {},
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
    onUnload: function() {
        wx.stopBackgroundAudio();
    },
    onPullDownRefresh: function() {
        this.reLoad(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {
        var o = this;
        return o.setData({
            share_modal_active: "",
            no_scroll: !1
        }), {
            title: o.data.store.name,
            path: "/zh_dianc/pages/info/info?id=" + getApp().sjid,
            success: function(t) {
                o.setData({
                    share_modal_active: ""
                }), wx.showToast({
                    title: "转发成功"
                });
            },
            fail: function(t) {}
        };
    },
    closekpgg: function() {
        this.setData({
            kpgg: !0
        });
    }
});