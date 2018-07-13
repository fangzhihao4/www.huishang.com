var app = getApp(), siteinfo = require("../../../../siteinfo.js");

Page({
    data: {
        in1: !1,
        in2: !1,
        in3: !1,
        logg: !1,
        log: !1,
        lo: !1,
        fwxy: !0,
        yyzz: "",
        yyzz1: "",
        yyzz2: "",
        yyzz3: ""
    },
    onLoad: function(o) {
        var e = this;
        app.util.request({
            url: "entry/wxapp/system",
            cachetime: "0",
            success: function(o) {
                console.log(o), e.setData({
                    rzxy: o.data.rzxy,
                    xtxx: o.data
                });
            }
        });
    },
    dingwei: function(o) {
        console.log(o);
        var e = this;
        wx.chooseLocation({
            success: function(o) {
                console.log(o), e.setData({
                    sjdz: o.address + o.name
                });
            }
        });
    },
    onReady: function() {},
    lookFwxy: function() {
        this.setData({
            fwxy: !1
        });
    },
    queren: function() {
        this.setData({
            fwxy: !0
        });
    },
    onShow: function() {},
    choose: function(o) {
        var t = this;
        console.log(siteinfo), wx.chooseImage({
            count: 1,
            sizeType: [ "original", "compressed" ],
            sourceType: [ "album", "camera" ],
            success: function(o) {
                console.log(o.tempFilePaths);
                var e = o.tempFilePaths;
                wx.showToast({
                    icon: "loading",
                    title: "正在上传"
                }), wx.uploadFile({
                    url: siteinfo.siteroot + "?i=" + siteinfo.uniacid + "&c=entry&a=wxapp&do=upload&m=zh_dianc",
                    filePath: o.tempFilePaths[0],
                    name: "upfile",
                    success: function(o) {
                        console.log(o), t.setData({
                            yyzz: o.data
                        }), 200 == o.statusCode ? t.setData({
                            files: e
                        }) : wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    fail: function(o) {
                        console.log(o), wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    complete: function() {
                        wx.hideToast();
                    }
                });
            }
        });
    },
    choose1: function(o) {
        var t = this;
        console.log(siteinfo), wx.chooseImage({
            count: 1,
            sizeType: [ "original", "compressed" ],
            sourceType: [ "album", "camera" ],
            success: function(o) {
                console.log(o.tempFilePaths);
                var e = o.tempFilePaths;
                wx.showToast({
                    icon: "loading",
                    title: "正在上传"
                }), wx.uploadFile({
                    url: siteinfo.siteroot + "?i=" + siteinfo.uniacid + "&c=entry&a=wxapp&do=upload&m=zh_dianc",
                    filePath: o.tempFilePaths[0],
                    name: "upfile",
                    success: function(o) {
                        console.log(o), t.setData({
                            yyzz1: o.data
                        }), 200 == o.statusCode ? t.setData({
                            files1: e
                        }) : wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    fail: function(o) {
                        console.log(o), wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    complete: function() {
                        wx.hideToast();
                    }
                });
            }
        });
    },
    choose2: function(o) {
        var t = this;
        console.log(siteinfo), wx.chooseImage({
            count: 1,
            sizeType: [ "original", "compressed" ],
            sourceType: [ "album", "camera" ],
            success: function(o) {
                console.log(o.tempFilePaths);
                var e = o.tempFilePaths;
                wx.showToast({
                    icon: "loading",
                    title: "正在上传"
                }), wx.uploadFile({
                    url: siteinfo.siteroot + "?i=" + siteinfo.uniacid + "&c=entry&a=wxapp&do=upload&m=zh_dianc",
                    filePath: o.tempFilePaths[0],
                    name: "upfile",
                    success: function(o) {
                        console.log(o), t.setData({
                            yyzz2: o.data
                        }), 200 == o.statusCode ? t.setData({
                            files2: e
                        }) : wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    fail: function(o) {
                        console.log(o), wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    complete: function() {
                        wx.hideToast();
                    }
                });
            }
        });
    },
    choose3: function(o) {
        var t = this;
        console.log(siteinfo), wx.chooseImage({
            count: 1,
            sizeType: [ "original", "compressed" ],
            sourceType: [ "album", "camera" ],
            success: function(o) {
                console.log(o.tempFilePaths);
                var e = o.tempFilePaths;
                wx.showToast({
                    icon: "loading",
                    title: "正在上传"
                }), wx.uploadFile({
                    url: siteinfo.siteroot + "?i=" + siteinfo.uniacid + "&c=entry&a=wxapp&do=upload&m=zh_dianc",
                    filePath: o.tempFilePaths[0],
                    name: "upfile",
                    success: function(o) {
                        console.log(o), t.setData({
                            yyzz3: o.data
                        }), 200 == o.statusCode ? t.setData({
                            files3: e
                        }) : wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    fail: function(o) {
                        console.log(o), wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    complete: function() {
                        wx.hideToast();
                    }
                });
            }
        });
    },
    formSubmit: function(o) {
        console.log("form发生了submit事件，携带数据为：", o.detail.value);
        var e = wx.getStorageSync("users").id, t = o.detail.value.sjname, s = o.detail.value.sjdz, a = o.detail.value.lxtel, i = o.detail.value.faname, n = this.data.yyzz, l = this.data.yyzz1, c = this.data.yyzz2, u = this.data.yyzz3;
        console.log(e, t, s, a, i, n, l, c, u);
        var d = "", h = !0;
        "" == t ? d = "请填写商家名称！" : "" == a ? d = "请填写联系电话！" : /^0?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/.test(a) && 11 == a.length ? "" == i ? d = "请填写法定代表人姓名！" : "" == n ? d = "请上传营业执照图片！" : "1" == this.data.xtxx.is_img && "" == l ? d = "请上传食品安全许可证图片！" : "1" == this.data.xtxx.is_img && "" == c ? d = "请上传法人身份证正面图片！" : "1" == this.data.xtxx.is_img && "" == u ? d = "请上传法人身份证反面图片！" : (h = !1, 
        app.util.request({
            url: "entry/wxapp/ruzhu",
            cachetime: "0",
            data: {
                user_id: e,
                store_name: t,
                tel: a,
                user_name: i,
                img: n,
                sp_img: l,
                sfz_img: c,
                sfz_img2: u,
                address: s
            },
            success: function(o) {
                console.log(o), 1 == o.data ? (wx.showToast({
                    title: "提交成功"
                }), setTimeout(function() {
                    wx.navigateBack({});
                }, 1e3)) : wx.showToast({
                    title: "请重试！",
                    icon: "loading"
                });
            }
        })) : d = "手机号错误！", 1 == h && wx.showModal({
            title: "提示",
            content: d
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function() {}
});