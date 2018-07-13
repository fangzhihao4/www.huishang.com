var app = getApp(), util = require("../../../utils/util.js"), siteinfo = require("../../../../siteinfo.js");

Page({
    data: {
        isbj: !1,
        url1: "",
        logo: "../../images/splogo.png",
        spfl: [],
        spflIndex: 0,
        spxx: [ "外卖菜品", "店内菜品", "店内+外卖" ],
        spxxIndex: 0,
        sjxj: [ "是", "否" ],
        sjxjIndex: 0,
        disabled: !1,
        sppx: "",
        spmc: "",
        cpkc: "",
        yxsl: "",
        dnjg: "",
        wmjg: "",
        bzfy: "",
        cpid: ""
    },
    spflChange: function(e) {
        console.log("spflChange 发生选择改变，携带值为", e.detail.value, this.data.spfl[e.detail.value].id), 
        this.setData({
            spflIndex: e.detail.value
        });
    },
    spxxChange: function(e) {
        console.log("spxxChange 发生选择改变，携带值为", e.detail.value, this.data.spxx[e.detail.value]), 
        this.setData({
            spxxIndex: e.detail.value
        });
    },
    sjxjChange: function(e) {
        console.log("sjxjChange 发生选择改变，携带值为", e.detail.value, this.data.sjxj[e.detail.value]), 
        this.setData({
            sjxjIndex: e.detail.value
        });
    },
    onLoad: function(e) {
        if (console.log(e, this.data.cpid), null != e.cpid) {
            var t = wx.getStorageSync("imglink");
            this.setData({
                cpid: e.cpid,
                isbj: !0
            }), app.util.request({
                url: "entry/wxapp/AppDishesInfo",
                cachetime: "0",
                data: {
                    id: e.cpid
                },
                success: function(a) {
                    console.log("菜品信息", a);
                    var e = wx.getStorageSync("sjdsjid");
                    app.util.request({
                        url: "entry/wxapp/AppDishesType",
                        cachetime: "0",
                        data: {
                            store_id: e
                        },
                        success: function(e) {
                            console.log(a);
                            e.data;
                            for (var t = 0; t < e.data.length; t++) e.data[t].id == a.data.type_id && s.setData({
                                spflIndex: t
                            });
                        }
                    }), s.setData({
                        url1: t,
                        logo: a.data.img,
                        splogo: a.data.img,
                        sppx: a.data.sorting,
                        spmc: a.data.name,
                        cpkc: a.data.num,
                        yxsl: a.data.sit_ys_num,
                        dnjg: a.data.money,
                        wmjg: a.data.wm_money,
                        bzfy: a.data.box_fee,
                        sjxjIndex: Number(a.data.is_shelves) - 1,
                        spxxIndex: Number(a.data.dishes_type) - 1
                    });
                }
            });
        }
        var a = wx.getStorageSync("sjdsjid");
        console.log(a);
        var s = this;
        app.util.request({
            url: "entry/wxapp/AppDishesType",
            cachetime: "0",
            data: {
                store_id: a
            },
            success: function(e) {
                console.log(e), s.setData({
                    spfl: e.data
                });
            }
        });
    },
    choose: function(e) {
        var a = this;
        console.log(siteinfo), wx.chooseImage({
            count: 1,
            sizeType: [ "original", "compressed" ],
            sourceType: [ "album", "camera" ],
            success: function(e) {
                console.log(e.tempFilePaths);
                var t = e.tempFilePaths;
                wx.showToast({
                    icon: "loading",
                    title: "正在上传"
                }), wx.uploadFile({
                    url: siteinfo.siteroot + "?i=" + siteinfo.uniacid + "&c=entry&a=wxapp&do=upload&m=zh_dianc",
                    filePath: e.tempFilePaths[0],
                    name: "upfile",
                    success: function(e) {
                        console.log(e), a.setData({
                            splogo: e.data
                        }), 200 == e.statusCode ? a.setData({
                            url1: "",
                            logo: t
                        }) : wx.showModal({
                            title: "提示",
                            content: "上传失败",
                            showCancel: !1
                        });
                    },
                    fail: function(e) {
                        console.log(e), wx.showModal({
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
    formSubmit: function(e) {
        console.log("form发生了submit事件，携带数据为：", e.detail.value);
        var t = this, a = this.data.cpid, s = wx.getStorageSync("sjdsjid"), o = e.detail.value.sppx, i = e.detail.value.spmc, l = e.detail.value.cpkc, n = e.detail.value.yxsl, d = e.detail.value.dnjg, c = e.detail.value.wmjg, u = e.detail.value.bzfy, p = this.data.splogo, x = this.data.spfl[this.data.spflIndex].id, g = Number(this.data.spxxIndex) + 1, r = Number(this.data.sjxjIndex) + 1;
        console.log(a, s, o, i, l, n, d, c, u, p, x, g, r);
        var h = "", f = !0;
        null == p ? h = "请上传商品图片！" : "" == i ? h = "请填写商品名称！" : "" == l ? h = "请填写商品库存！" : "" == d ? h = "请填写商品店内价格！" : "" == c ? h = "请填写商品外卖价格！" : (t.setData({
            disabled: !0
        }), f = !1, app.util.request({
            url: "entry/wxapp/AddDishes",
            cachetime: "0",
            data: {
                money: d,
                wm_money: c,
                name: i,
                num: l,
                img: p,
                sorting: o,
                type_id: x,
                sit_ys_num: n,
                is_shelves: r,
                dishes_type: g,
                box_fee: u,
                store_id: s,
                id: a
            },
            success: function(e) {
                console.log(e), 1 == e.data ? (wx.showToast({
                    title: "提交成功"
                }), setTimeout(function() {
                    wx.redirectTo({
                        url: "cplb"
                    });
                }, 1e3)) : (t.setData({
                    disabled: !1
                }), wx.showToast({
                    title: "请修改后提交！",
                    icon: "loading"
                }));
            }
        })), 1 == f && wx.showModal({
            title: "提示",
            content: h
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