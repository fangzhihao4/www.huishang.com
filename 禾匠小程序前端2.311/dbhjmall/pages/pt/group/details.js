var _Page;

function _defineProperty(t, o, a) {
    return o in t ? Object.defineProperty(t, o, {
        value: a,
        enumerable: !0,
        configurable: !0,
        writable: !0
    }) : t[o] = a, t;
}

var api = require("../../../api.js"), utils = require("../../../utils.js"), app = getApp();

Page((_defineProperty(_Page = {
    data: {
        groupFail: 0,
        show_attr_picker: !1,
        form: {
            number: 1
        }
    },
    onLoad: function(t) {
        app.pageOnLoad(this);
        var o = 0, a = t.user_id;
        console.log("options=>" + JSON.stringify(t));
        var e = decodeURIComponent(t.scene);
        if (null != a) o = a; else if (null != e) {
            console.log("scene string=>" + e);
            var i = utils.scene_decode(e);
            console.log("scene obj=>" + JSON.stringify(i)), i.uid && i.oid ? (o = i.uid, t.oid = i.oid) : o = e;
        }
        app.loginBindParent({
            parent_id: o
        }), this.setData({
            oid: t.oid
        }), this.getInfo(t);
    },
    onReady: function() {},
    onShow: function() {
        app.pageOnShow(this);
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {},
    onShareAppMessage: function(t) {
        var o = this, a = wx.getStorageSync("user_info"), e = "/pages/pt/group/details?oid=" + o.data.oid + "&user_id=" + a.id;
        return {
            title: "快来" + o.data.goods.price + "元拼  " + o.data.goods.name,
            path: e,
            success: function(t) {
                console.log(e), console.log(t);
            }
        };
    },
    getInfo: function(t) {
        var o = t.oid, a = this;
        wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.group.group_info,
            method: "get",
            data: {
                oid: o
            },
            success: function(t) {
                if (0 == t.code) {
                    0 == t.data.groupFail && a.countDownRun(t.data.limit_time_ms);
                    var o = (t.data.goods.original_price - t.data.goods.price).toFixed(2);
                    a.setData({
                        goods: t.data.goods,
                        groupList: t.data.groupList,
                        surplus: t.data.surplus,
                        limit_time_ms: t.data.limit_time_ms,
                        goods_list: t.data.goodsList,
                        group_fail: t.data.groupFail,
                        oid: t.data.oid,
                        in_group: t.data.inGroup,
                        attr_group_list: t.data.attr_group_list,
                        group_rule_id: t.data.groupRuleId,
                        reduce_price: o < 0 ? 0 : o
                    }), a.selectDefaultAttr();
                } else wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    success: function(t) {
                        t.confirm && wx.redirectTo({
                            url: "/pages/pt/index/index"
                        });
                    }
                });
            },
            complete: function(t) {
                setTimeout(function() {
                    wx.hideLoading();
                }, 1e3);
            }
        });
    },
    selectDefaultAttr: function() {
        var t = this;
        if (!t.data.goods || 0 === t.data.goods.use_attr) for (var o in t.data.attr_group_list) for (var a in t.data.attr_group_list[o].attr_list) 0 == o && 0 == a && (t.data.attr_group_list[o].attr_list[a].checked = !0);
        t.setData({
            attr_group_list: t.data.attr_group_list
        });
    },
    countDownRun: function(r) {
        var s = this;
        setInterval(function() {
            var t = new Date(r[0], r[1] - 1, r[2], r[3], r[4], r[5]) - new Date(), o = parseInt(t / 1e3 / 60 / 60 / 24, 10), a = parseInt(t / 1e3 / 60 / 60 % 24, 10), e = parseInt(t / 1e3 / 60 % 60, 10), i = parseInt(t / 1e3 % 60, 10);
            o = s.checkTime(o), a = s.checkTime(a), e = s.checkTime(e), i = s.checkTime(i), 
            s.setData({
                limit_time: {
                    days: o,
                    hours: a,
                    mins: e,
                    secs: i
                }
            });
        }, 1e3);
    },
    checkTime: function(t) {
        return (t = 0 < t ? t : 0) < 10 && (t = "0" + t), t;
    },
    goToHome: function() {
        wx.redirectTo({
            url: "/pages/pt/index/index"
        });
    },
    goToGoodsDetails: function(t) {
        wx.redirectTo({
            url: "/pages/pt/details/details?gid=" + this.data.goods.id
        });
    },
    hideAttrPicker: function() {
        this.setData({
            show_attr_picker: !1
        });
    },
    showAttrPicker: function() {
        this.setData({
            show_attr_picker: !0
        });
    },
    attrClick: function(t) {
        var a = this, o = t.target.dataset.groupId, e = t.target.dataset.id, i = a.data.attr_group_list;
        for (var r in i) if (i[r].attr_group_id == o) for (var s in i[r].attr_list) i[r].attr_list[s].attr_id == e ? i[r].attr_list[s].checked = !0 : i[r].attr_list[s].checked = !1;
        a.setData({
            attr_group_list: i
        });
        var n = [], d = !0;
        for (var r in i) {
            var c = !1;
            for (var s in i[r].attr_list) if (i[r].attr_list[s].checked) {
                n.push(i[r].attr_list[s].attr_id), c = !0;
                break;
            }
            if (!c) {
                d = !1;
                break;
            }
        }
        d && (wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.group.goods_attr_info,
            data: {
                goods_id: a.data.goods.id,
                group_id: a.data.goods.class_group,
                attr_list: JSON.stringify(n)
            },
            success: function(t) {
                if (wx.hideLoading(), 0 == t.code) {
                    var o = a.data.goods;
                    o.price = t.data.price, o.num = t.data.num, o.attr_pic = t.data.pic, a.setData({
                        goods: o
                    });
                }
            }
        }));
    },
    buyNow: function() {
        this.submit("GROUP_BUY_C");
    },
    submit: function(t) {
        var o = this;
        if (console.log(o.data.show_attr_picker), !o.data.show_attr_picker) return o.setData({
            show_attr_picker: !0
        }), !0;
        if (o.data.form.number > o.data.goods.num) return wx.showToast({
            title: "商品库存不足，请选择其它规格或数量",
            image: "/images/icon-warning.png"
        }), !0;
        var a = o.data.attr_group_list, e = [];
        for (var i in a) {
            var r = !1;
            for (var s in a[i].attr_list) if (a[i].attr_list[s].checked) {
                r = {
                    attr_id: a[i].attr_list[s].attr_id,
                    attr_name: a[i].attr_list[s].attr_name
                };
                break;
            }
            if (!r) return wx.showToast({
                title: "请选择" + a[i].attr_group_name,
                image: "/images/icon-warning.png"
            }), !0;
            e.push({
                attr_group_id: a[i].attr_group_id,
                attr_group_name: a[i].attr_group_name,
                attr_id: r.attr_id,
                attr_name: r.attr_name
            });
        }
        o.setData({
            show_attr_picker: !1
        }), wx.redirectTo({
            url: "/pages/pt/order-submit/order-submit?goods_info=" + JSON.stringify({
                goods_id: o.data.goods.id,
                attr: e,
                num: o.data.form.number,
                type: t,
                parent_id: o.data.oid,
                deliver_type: o.data.goods.type,
                group_id: o.data.goods.class_group
            })
        });
    },
    numberSub: function() {
        var t = this.data.form.number;
        if (t <= 1) return !0;
        t--, this.setData({
            form: {
                number: t
            }
        });
    },
    numberAdd: function() {
        var t = this, o = t.data.form.number;
        ++o > t.data.goods.one_buy_limit && 0 != t.data.goods.one_buy_limit ? wx.showModal({
            title: "提示",
            content: "最多只允许购买" + t.data.goods.one_buy_limit + "件",
            showCancel: !1
        }) : t.setData({
            form: {
                number: o
            }
        });
    },
    numberBlur: function(t) {
        var o = this, a = t.detail.value;
        if (a = parseInt(a), isNaN(a) && (a = 1), a <= 0 && (a = 1), a > o.data.goods.one_buy_limit && 0 != o.data.goods.one_buy_limit) return wx.showModal({
            title: "提示",
            content: "最多只允许购买" + o.data.goods.one_buy_limit + "件",
            showCancel: !1
        }), void o.setData({
            form: {
                number: a
            }
        });
        o.setData({
            form: {
                number: a
            }
        });
    },
    goArticle: function(t) {
        this.data.group_rule_id && wx.navigateTo({
            url: "/pages/article-detail/article-detail?id=" + this.data.group_rule_id
        });
    },
    showShareModal: function(t) {
        console.log(t);
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
        if (o.setData({
            goods_qrcode_active: "active",
            share_modal_active: ""
        }), o.data.goods_qrcode) return !0;
        app.request({
            url: api.group.order.goods_qrcode,
            data: {
                order_id: o.data.oid
            },
            success: function(t) {
                0 == t.code && o.setData({
                    goods_qrcode: t.data.pic_url
                }), 1 == t.code && (o.goodsQrcodeClose(), wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    success: function(t) {
                        t.confirm;
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
    var o = this;
    wx.saveImageToPhotosAlbum ? (wx.showLoading({
        title: "正在保存图片",
        mask: !1
    }), wx.downloadFile({
        url: o.data.goods_qrcode,
        success: function(t) {
            wx.showLoading({
                title: "正在保存图片",
                mask: !1
            }), wx.saveImageToPhotosAlbum({
                filePath: t.tempFilePath,
                success: function() {
                    wx.showModal({
                        title: "提示",
                        content: "商品海报保存成功",
                        showCancel: !1
                    });
                },
                fail: function(t) {
                    wx.showModal({
                        title: "图片保存失败",
                        content: t.errMsg,
                        showCancel: !1
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
                content: t.errMsg + ";" + o.data.goods_qrcode,
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
}), _defineProperty(_Page, "goodsQrcodeClick", function(t) {
    var o = t.currentTarget.dataset.src;
    wx.previewImage({
        urls: [ o ]
    });
}), _Page));