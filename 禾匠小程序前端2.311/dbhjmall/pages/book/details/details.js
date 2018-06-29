var _Page;

function _defineProperty(o, e, t) {
    return e in o ? Object.defineProperty(o, e, {
        value: t,
        enumerable: !0,
        configurable: !0,
        writable: !0
    }) : o[e] = t, o;
}

var api = require("../../../api.js"), utils = require("../../../utils.js"), app = getApp(), WxParse = require("../../../wxParse/wxParse.js"), p = 1, is_loading_comment = !1, is_more_comment = !0;

Page((_defineProperty(_Page = {
    data: {
        tab_detail: "active",
        tab_comment: "",
        comment_list: [],
        comment_count: {
            score_all: 0,
            score_3: 0,
            score_2: 0,
            score_1: 0
        }
    },
    onLoad: function(o) {
        app.pageOnLoad(this);
        var e = 0, t = o.user_id;
        console.log("options=>" + JSON.stringify(o));
        var a = decodeURIComponent(o.scene);
        if (null != t) e = t; else if (null != a) {
            console.log("scene string=>" + a);
            var i = utils.scene_decode(a);
            console.log("scene obj=>" + JSON.stringify(i)), i.uid && i.gid ? (e = i.uid, o.id = i.gid) : e = a;
        }
        app.loginBindParent({
            parent_id: e
        }), this.setData({
            id: o.id
        }), p = 1, this.getGoodsInfo(o), this.getCommentList(!1);
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {
        this.getCommentList(!0);
    },
    onShareAppMessage: function() {
        var o = this, e = wx.getStorageSync("user_info");
        return {
            title: o.data.goods.name,
            path: "/pages/book/details/details?id=" + o.data.goods.id + "&user_id=" + e.id,
            imageUrl: o.data.goods.cover_pic,
            success: function(o) {}
        };
    },
    getGoodsInfo: function(o) {
        var e = o.id, a = this;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.book.details,
            method: "get",
            data: {
                gid: e
            },
            success: function(o) {
                if (0 == o.code) {
                    var e = o.data.info.detail;
                    WxParse.wxParse("detail", "html", e, a);
                    var t = parseInt(o.data.info.virtual_sales) + parseInt(o.data.info.sales);
                    a.setData({
                        goods: o.data.info,
                        shop: o.data.shopList,
                        sales: t
                    });
                } else wx.showModal({
                    title: "提示",
                    content: o.msg,
                    showCancel: !1,
                    success: function(o) {
                        o.confirm && wx.redirectTo({
                            url: "/pages/book/index/index"
                        });
                    }
                });
            },
            complete: function(o) {
                setTimeout(function() {
                    wx.hideLoading();
                }, 1e3);
            }
        });
    },
    tabSwitch: function(o) {
        "detail" == o.currentTarget.dataset.tab ? this.setData({
            tab_detail: "active",
            tab_comment: ""
        }) : this.setData({
            tab_detail: "",
            tab_comment: "active"
        });
    },
    commentPicView: function(o) {
        console.log(o);
        var e = o.currentTarget.dataset.index, t = o.currentTarget.dataset.picIndex;
        wx.previewImage({
            current: this.data.comment_list[e].pic_list[t],
            urls: this.data.comment_list[e].pic_list
        });
    },
    bespeakNow: function(o) {
        wx.redirectTo({
            url: "/pages/book/submit/submit?id=" + this.data.goods.id
        });
    },
    goToShopList: function(o) {
        wx.navigateTo({
            url: "/pages/book/shop/shop?ids=" + this.data.goods.shop_id,
            success: function(o) {},
            fail: function(o) {},
            complete: function(o) {}
        });
    },
    getCommentList: function(e) {
        console.log(e);
        var t = this;
        e && "active" != t.data.tab_comment || is_loading_comment || is_more_comment && (is_loading_comment = !0, 
        app.request({
            url: api.book.goods_comment,
            data: {
                goods_id: t.data.id,
                page: p
            },
            success: function(o) {
                0 == o.code && (is_loading_comment = !1, p++, console.log(o.data.list), t.setData({
                    comment_count: o.data.comment_count,
                    comment_list: e ? t.data.comment_list.concat(o.data.list) : o.data.list
                }), 0 == o.data.list.length && (is_more_comment = !1));
            }
        }));
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
        if (e.setData({
            goods_qrcode_active: "active",
            share_modal_active: ""
        }), e.data.goods_qrcode) return !0;
        app.request({
            url: api.book.goods_qrcode,
            data: {
                goods_id: e.data.id
            },
            success: function(o) {
                0 == o.code && e.setData({
                    goods_qrcode: o.data.pic_url
                }), 1 == o.code && (e.goodsQrcodeClose(), wx.showModal({
                    title: "提示",
                    content: o.msg,
                    showCancel: !1,
                    success: function(o) {
                        o.confirm;
                    }
                }));
            }
        });
    },
    goodsQrcodeClose: function() {
        this.setData({
            goods_qrcode_active: "",
            no_scroll: !1
        });
    }
}, "goodsQrcodeClose", function() {
    this.setData({
        goods_qrcode_active: "",
        no_scroll: !1
    });
}), _defineProperty(_Page, "saveGoodsQrcode", function() {
    var e = this;
    wx.saveImageToPhotosAlbum ? (wx.showLoading({
        title: "正在保存图片",
        mask: !1
    }), wx.downloadFile({
        url: e.data.goods_qrcode,
        success: function(o) {
            wx.showLoading({
                title: "正在保存图片",
                mask: !1
            }), wx.saveImageToPhotosAlbum({
                filePath: o.tempFilePath,
                success: function() {
                    wx.showModal({
                        title: "提示",
                        content: "商品海报保存成功",
                        showCancel: !1
                    });
                },
                fail: function(o) {
                    wx.showModal({
                        title: "图片保存失败",
                        content: o.errMsg,
                        showCancel: !1
                    });
                },
                complete: function(o) {
                    console.log(o), wx.hideLoading();
                }
            });
        },
        fail: function(o) {
            wx.showModal({
                title: "图片下载失败",
                content: o.errMsg + ";" + e.data.goods_qrcode,
                showCancel: !1
            });
        },
        complete: function(o) {
            console.log(o), wx.hideLoading();
        }
    })) : wx.showModal({
        title: "提示",
        content: "当前微信版本过低，无法使用该功能，请升级到最新微信版本后重试。",
        showCancel: !1
    });
}), _defineProperty(_Page, "goodsQrcodeClick", function(o) {
    var e = o.currentTarget.dataset.src;
    wx.previewImage({
        urls: [ e ]
    });
}), _defineProperty(_Page, "goHome", function(o) {
    wx.redirectTo({
        url: "/pages/book/index/index",
        success: function(o) {},
        fail: function(o) {},
        complete: function(o) {}
    });
}), _Page));