var app = getApp(), util = require("../../utils/util.js"), APP_ID = "", APP_SECRET = "", OPEN_ID = "", SESSION_KEY = "";

Page({
    data: {
        xzggindex: "0",
        showModal: !1,
        boxfre: !0,
        changeHidden1: !0,
        changeHidden: !0,
        toastHidden: !0,
        selected1: !0,
        selected2: !1,
        selected3: !1,
        showview: !0,
        hidden1: !1,
        hidden2: !0,
        hidden3: !0,
        catalogSelect: 0,
        store: [],
        http: [],
        showView: !1,
        close: !1,
        login: [],
        rest: "",
        start_at: "",
        conditions: "",
        preferential: "",
        dishes: [],
        link: "",
        toView: "0",
        store_name: "",
        scrollTop: 100,
        totalPrice: 0,
        totalCount: 0,
        carArray: [],
        freight: 0,
        payDesc: 0,
        userInfo: {},
        parentIndex: 0,
        url: "",
        hidden: !1,
        curNav: 1,
        curIndex: 0,
        cart: [],
        cartTotal: 0,
        one: 1,
        ping: "",
        hdnum: 0,
        star1: [ {
            url: "../images/full-star.png"
        }, {
            url: "../images/no-star.png"
        }, {
            url: "../images/no-star.png"
        }, {
            url: "../images/no-star.png"
        }, {
            url: "../images/no-star.png"
        } ],
        star2: [ {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/no-star.png"
        }, {
            url: "../images/no-star.png"
        }, {
            url: "../images/no-star.png"
        } ],
        star3: [ {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/no-star.png"
        }, {
            url: "../images/no-star.png"
        } ],
        star4: [ {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/no-star.png"
        } ],
        star5: [ {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        }, {
            url: "../images/full-star.png"
        } ]
    },
    ycgg: function() {
        this.setData({
            showModal: !1
        });
    },
    onLoad: function(a) {
        var t = this, e = wx.getStorageSync("bqxx");
        console.log(e), this.setData({
            bqxx: e
        }), wx.getSystemInfo({
            success: function(a) {
                console.log(a.windowWidth), console.log(a.windowHeight), t.setData({
                    height: a.windowHeight / a.windowWidth * 750 - 500
                });
            }
        }), wx.login({
            success: function(a) {
                var t = a.code;
                wx.setStorageSync("code", a.code), app.util.request({
                    url: "entry/wxapp/openid",
                    cachetime: "0",
                    data: {
                        code: t
                    },
                    success: function(a) {
                        console.log(a), wx.setStorageSync("key", a.data.session_key), wx.setStorageSync("openid", a.data.openid);
                        var t = a.data.openid;
                        console.log(t), "" == t ? wx.showToast({
                            title: "没有获取到openid",
                            icon: "",
                            image: "",
                            duration: 1e3,
                            mask: !0,
                            success: function(a) {},
                            fail: function(a) {},
                            complete: function(a) {}
                        }) : app.util.request({
                            url: "entry/wxapp/Login",
                            cachetime: "0",
                            data: {
                                openid: t
                            },
                            success: function(a) {
                                console.log(a), wx.setStorageSync("users", a.data), app.util.request({
                                    url: "entry/wxapp/New",
                                    cachetime: "0",
                                    data: {
                                        user_id: a.data.id,
                                        store_id: getApp().sjid
                                    },
                                    success: function(a) {
                                        console.log(a), wx.setStorageSync("new_user", a.data);
                                    }
                                });
                            }
                        });
                    }
                });
            }
        }), console.log(a);
        var s = Number(a.type);
        1 == s ? console.log("用户选择的是店内点餐") : console.log("用户选择的是外卖点餐"), t.setData({
            types: s
        });
        var o = decodeURIComponent(a.scene).split(",");
        console.log(o), "undefined" != o && (getApp().sjid = o[1], this.setData({
            types: 1,
            tableid: o[0]
        }), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: getApp().sjid
            },
            success: function(a) {
                console.log(a), "1" == a.data.is_czztpd ? app.util.request({
                    url: "entry/wxapp/Zhuohao",
                    cachetime: "0",
                    data: {
                        id: o[0]
                    },
                    success: function(a) {
                        console.log(a), "0" == a.data.status ? (wx.showModal({
                            title: "提示",
                            content: "桌位信息：" + a.data.type_name + "--" + a.data.table_name,
                            showCancel: !1,
                            success: function(a) {},
                            fail: function(a) {},
                            complete: function(a) {}
                        }), t.setData({
                            kt: !1
                        })) : (wx.showModal({
                            title: "提示",
                            content: "此桌已开台暂不能点餐,请选择其他座位",
                            showCancel: !1,
                            success: function(a) {},
                            fail: function(a) {},
                            complete: function(a) {}
                        }), setTimeout(function() {
                            wx.navigateBack({});
                        }, 1e3), t.setData({
                            kt: !0
                        }));
                    }
                }) : app.util.request({
                    url: "entry/wxapp/Zhuohao",
                    cachetime: "0",
                    data: {
                        id: o[0]
                    },
                    success: function(a) {
                        console.log(a), wx.showModal({
                            title: "提示",
                            content: "桌位信息：" + a.data.type_name + "--" + a.data.table_name,
                            showCancel: !1,
                            success: function(a) {},
                            fail: function(a) {},
                            complete: function(a) {}
                        }), t.setData({
                            kt: !1
                        });
                    }
                });
            }
        })), a.showview, a.showView, t.reload();
    },
    reload: function(a) {
        var n = this, r = util.formatTime(new Date()).slice(11, 16);
        this.data.store_name;
        wx.showShareMenu({
            withShareTicket: !0
        }), app.util.request({
            url: "entry/wxapp/Store",
            cachetime: "0",
            data: {
                id: getApp().sjid
            },
            success: function(d) {
                "" != d.data.wm_name && 2 == n.data.types && wx.setNavigationBarTitle({
                    title: d.data.wm_name
                }), "" != d.data.dn_name && 1 == n.data.types && wx.setNavigationBarTitle({
                    title: d.data.dn_name
                }), wx.setNavigationBarColor({
                    frontColor: "#ffffff",
                    backgroundColor: d.data.color
                }), app.util.request({
                    url: "entry/wxapp/zhuanh",
                    cachetime: "0",
                    data: {
                        op: d.data.coordinates
                    },
                    success: function(a) {
                        console.log(a), console.log(a.data.locations[0].lat + "," + a.data.locations[0].lng), 
                        n.setData({
                            sjdzlat: a.data.locations[0].lat,
                            sjdzlng: a.data.locations[0].lng
                        });
                    }
                }), console.log(d), app.util.request({
                    url: "entry/wxapp/Reduction",
                    cachetime: "0",
                    data: {
                        id: getApp().sjid
                    },
                    success: function(a) {
                        console.log(a);
                        for (var t = [], e = [], s = 0; s < a.data.length; s++) "2" != a.data[s].type && "3" != a.data[s].type || t.push(a.data[s]), 
                        "1" != a.data[s].type && "3" != a.data[s].type || e.push(a.data[s]);
                        if (1 == n.data.types) {
                            var o = t;
                            n.setData({
                                mj: t
                            });
                        }
                        if (2 == n.data.types) {
                            o = e;
                            n.setData({
                                mj: e
                            });
                        }
                        0 != o.length && "1" == d.data.xyh_open ? n.setData({
                            hdnum: 2
                        }) : 0 != o.length && "1" != d.data.xyh_open || 0 == o.length && "1" == d.data.xyh_open ? n.setData({
                            hdnum: 1
                        }) : n.setData({
                            hdnum: 0
                        });
                    }
                });
                var a = d.data.id, t = d.data.time, e = d.data.time2, s = d.data.time3, o = d.data.time4, i = d.data.is_rest;
                console.log("当前的系统时间为" + r), console.log("商家的营业时间从" + t + "至" + e, s + "至" + o), 
                1 == i ? console.log("商家正在休息" + i) : console.log("商家正在营业" + i), t < o ? t < r && r < e || s < r && r < o ? (console.log("商家正常营业"), 
                n.setData({
                    time: 1
                })) : r < t || e < r && r < s ? (console.log("商家还没开店呐，稍等一会儿可以吗？"), n.setData({
                    time: 2
                })) : o < r && (console.log("商家以及关店啦，明天再来吧"), n.setData({
                    time: 3
                })) : o < t && (t < r && r < e || s < r && o < r || r < s && r < o ? (console.log("商家正常营业"), 
                n.setData({
                    time: 1
                })) : r < t || e < r && r < s ? (console.log("商家还没开店呐，稍等一会儿可以吗？"), n.setData({
                    time: 2
                })) : o < r && (console.log("商家以及关店啦，明天再来吧"), n.setData({
                    time: 3
                }))), console.log("商家的id为" + a), app.util.request({
                    url: "entry/wxapp/Score",
                    cachetime: "0",
                    data: {
                        seller_id: a
                    },
                    success: function(a) {
                        console.log(a);
                        var t = a.data;
                        t = t.toFixed(1), console.log(t), n.setData({
                            score: t
                        });
                    }
                }), app.util.request({
                    url: "entry/wxapp/StorePl",
                    headers: {
                        "Content-Type": "application/json"
                    },
                    cachetime: "0",
                    data: {
                        id: a
                    },
                    success: function(a) {
                        console.log(a.data);
                        var t = a.data.length;
                        console.log(t);
                        for (var e = 0; e < a.data.length; e++) a.data[e].score = a.data[e].score.slice(0, 2);
                        console.log(a.data), n.setData({
                            ping: a.data
                        });
                    }
                }), n.setData({
                    store: d.data,
                    rest: i,
                    color: d.data.color,
                    seller_id: a,
                    start_at: d.data.start_at
                });
            }
        }), app.util.request({
            url: "entry/wxapp/Url",
            cachetime: "0",
            success: function(a) {
                n.setData({
                    url: a.data
                });
            }
        });
        var t = (n = this).data.types;
        console.log(t), app.util.request({
            url: "entry/wxapp/Dishes",
            cachetime: "0",
            data: {
                id: getApp().sjid,
                dishes_type: t
            },
            success: function(a) {
                for (var t = 0; t < a.data.length; t++) for (var e = 0; e < a.data[t].goods.length; e++) a.data[t].goods[e].xs_num = Number(a.data[t].goods[e].xs_num), 
                a.data[t].goods[e].sit_ys_num = Number(a.data[t].goods[e].sit_ys_num);
                console.log(a.data), n.setData({
                    dishes: a.data
                });
            }
        });
    },
    selected1: function(a) {
        this.setData({
            selected2: !1,
            selected3: !1,
            selected1: !0,
            hidden1: !1,
            hidden2: !0,
            hidden3: !0
        });
    },
    selected2: function(a) {
        this.setData({
            selected1: !1,
            selected2: !0,
            selected3: !1,
            hidden1: !0,
            hidden2: !1,
            hidden3: !0
        });
    },
    selected3: function(a) {
        this.setData({
            selected1: !1,
            selected2: !1,
            selected3: !0,
            hidden1: !0,
            hidden2: !0,
            hidden3: !1
        });
    },
    onReady: function() {
        console.log(this.data.types);
    },
    onShow: function() {},
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {
        this.reload(), wx.stopPullDownRefresh();
    },
    onReachBottom: function() {},
    onShareAppMessage: function() {},
    call_phone: function() {
        wx.makePhoneCall({
            phoneNumber: this.data.store.tel
        });
    },
    tomap: function(a) {
        wx.openLocation({
            latitude: this.data.sjdzlat,
            longitude: this.data.sjdzlng,
            name: this.data.store.name,
            address: this.data.store.address
        });
    },
    tzsjhj: function(a) {
        console.log(a.currentTarget.dataset.sjid), wx.navigateTo({
            url: "../info/sjhj"
        });
    },
    selectMenu: function(a) {
        var t = a.currentTarget.dataset.itemIndex;
        this.setData({
            toView: "order" + t.toString(),
            catalogSelect: a.currentTarget.dataset.itemIndex
        }), console.log("order" + t.toString());
    },
    close: function() {
        this.setData({
            showView: !this.data.showView
        });
    },
    zwkc: function() {
        wx.showToast({
            title: "没有库存了"
        });
    },
    addShopCart: function(a) {
        var t = this;
        console.log(this.data.dishes), console.log(this.data.carArray), console.log(a.currentTarget.dataset);
        var e = a.currentTarget.dataset.itemIndex, s = a.currentTarget.dataset.parentindex, o = a.currentTarget.dataset.gwcindex, d = a.currentTarget.dataset.ggindex;
        if (null != d) {
            this.data.dishes[s].goods[e].one++, this.data.dishes[s].goods[e].gg[d].num++;
            var i = "a" + e + "b" + s + "c" + this.data.dishes[s].goods[e].gg[d].id;
            if (2 == this.data.types) var n = this.data.dishes[s].goods[e].gg[d].cost; else n = this.data.dishes[s].goods[e].gg[d].cost;
            var r = this.data.dishes[s].goods[e].box_fee;
            console.log("餐盒费是：" + r);
            var l = Number(t.data.dishes[s].goods[e].num), c = this.data.dishes[s].goods[e].gg[d].num, g = this.data.dishes[s].goods[e].name + this.data.dishes[s].goods[e].gg[d].name, h = this.data.dishes[s].goods[e].id, u = this.data.dishes[s].goods[e].img, p = this.data.store, m = {
                ggindex: d,
                money: n,
                num: c,
                kc: l,
                id: h,
                mark: i,
                name: g,
                index: e,
                parentIndex: s,
                icon: u,
                store: p,
                box_fee: r,
                allmoney: (n * c).toFixed(2)
            };
            (f = this.data.carArray.filter(function(a) {
                return a.mark != i;
            })).splice(o, 0, m), console.log(f), this.setData({
                shop_cart: f,
                carArray: f,
                dishes: this.data.dishes
            }), console.log(this.data.carArray), this.calTotalPrice(), this.setData({
                payDesc: this.payDesc()
            });
        } else {
            console.log(d), t.data.dishes[s].goods[e].one++;
            i = "a" + e + "b" + s;
            if (2 == t.data.types) n = t.data.dishes[s].goods[e].wm_money; else n = t.data.dishes[s].goods[e].money;
            r = t.data.dishes[s].goods[e].box_fee;
            console.log("餐盒费是：" + r);
            var f;
            l = Number(t.data.dishes[s].goods[e].num), c = t.data.dishes[s].goods[e].one, g = t.data.dishes[s].goods[e].name, 
            h = t.data.dishes[s].goods[e].id, u = t.data.dishes[s].goods[e].img, p = t.data.store, 
            m = {
                money: n,
                num: c,
                kc: l,
                id: h,
                mark: i,
                name: g,
                index: e,
                parentIndex: s,
                icon: u,
                store: p,
                box_fee: r,
                allmoney: (n * c).toFixed(2)
            };
            (f = t.data.carArray.filter(function(a) {
                return a.mark != i;
            })).splice(o, 0, m), console.log(f), t.setData({
                shop_cart: f,
                carArray: f,
                dishes: t.data.dishes
            }), console.log(t.data.dishes), t.calTotalPrice(), t.setData({
                payDesc: t.payDesc()
            });
        }
    },
    decreaseShopCart: function(a) {
        var t = this;
        console.log(this.data.dishes), console.log(this.data.carArray), console.log(a.currentTarget.dataset);
        var e = a.currentTarget.dataset.itemIndex, s = a.currentTarget.dataset.parentindex, o = a.currentTarget.dataset.gwcindex, d = a.currentTarget.dataset.ggindex;
        if (null != d) {
            this.data.dishes[s].goods[e].one--, this.data.dishes[s].goods[e].gg[d].num--;
            var i = "a" + e + "b" + s + "c" + this.data.dishes[s].goods[e].gg[d].id;
            if (2 == this.data.types) var n = this.data.dishes[s].goods[e].gg[d].cost; else n = this.data.dishes[s].goods[e].gg[d].cost;
            var r = this.data.dishes[s].goods[e].box_fee;
            console.log("餐盒费是：" + r);
            var l = Number(t.data.dishes[s].goods[e].num), c = this.data.dishes[s].goods[e].gg[d].num, g = this.data.dishes[s].goods[e].name + this.data.dishes[s].goods[e].gg[d].name, h = this.data.dishes[s].goods[e].id, u = this.data.dishes[s].goods[e].img, p = this.data.store, m = {
                ggindex: d,
                money: n,
                num: c,
                kc: l,
                id: h,
                mark: i,
                name: g,
                index: e,
                parentIndex: s,
                icon: u,
                store: p,
                box_fee: r,
                allmoney: (n * c).toFixed(2)
            };
            (f = this.data.carArray.filter(function(a) {
                return a.mark != i;
            })).splice(o, 0, m), console.log(f), this.setData({
                shop_cart: f,
                carArray: f,
                dishes: this.data.dishes
            }), console.log(this.data.carArray), this.calTotalPrice(), this.setData({
                payDesc: this.payDesc()
            });
        } else {
            console.log(d), t.data.dishes[s].goods[e].one--;
            i = "a" + e + "b" + s;
            if (2 == t.data.types) n = t.data.dishes[s].goods[e].wm_money; else n = t.data.dishes[s].goods[e].money;
            r = t.data.dishes[s].goods[e].box_fee;
            console.log("餐盒费是：" + r);
            var f;
            l = Number(t.data.dishes[s].goods[e].num), c = t.data.dishes[s].goods[e].one, g = t.data.dishes[s].goods[e].name, 
            h = t.data.dishes[s].goods[e].id, u = t.data.dishes[s].goods[e].img, p = t.data.store, 
            m = {
                money: n,
                num: c,
                kc: l,
                id: h,
                mark: i,
                name: g,
                index: e,
                parentIndex: s,
                icon: u,
                store: p,
                box_fee: r,
                allmoney: (n * c).toFixed(2)
            };
            (f = t.data.carArray.filter(function(a) {
                return a.mark != i;
            })).splice(o, 0, m), t.setData({
                shop_cart: f,
                carArray: f,
                dishes: t.data.dishes
            }), t.calTotalPrice(), t.setData({
                payDesc: t.payDesc()
            }), console.log(t.data.dishes);
        }
    },
    decreaseCart: function(a) {
        console.log("你点击了减号");
        var h = this;
        console.log(this.data);
        var u = a.currentTarget.dataset.itemIndex, p = a.currentTarget.dataset.parentindex;
        console.log(u, p), console.log(p, h.data.dishes[p].goods[u].id), app.util.request({
            url: "entry/wxapp/DishesGg",
            cachetime: "0",
            data: {
                dishes_id: h.data.dishes[p].goods[u].id
            },
            success: function(a) {
                if (console.log(a), 0 != a.data.length) wx.showModal({
                    title: "提示",
                    showCancel: !1,
                    content: "多规格商品只能在购物车删除哦"
                }); else {
                    h.data.dishes[p].goods[u].one--;
                    var t = "a" + u + "b" + p;
                    if (2 == h.data.types) var e = h.data.dishes[p].goods[u].wm_money; else e = h.data.dishes[p].goods[u].money;
                    var s = h.data.dishes[p].goods[u].box_fee;
                    console.log("餐盒费是：" + s);
                    var o = Number(h.data.dishes[p].goods[u].num), d = h.data.dishes[p].goods[u].one, i = h.data.dishes[p].goods[u].name, n = h.data.dishes[p].goods[u].id, r = h.data.dishes[p].goods[u].img, l = h.data.store, c = {
                        money: e,
                        num: d,
                        kc: o,
                        id: n,
                        mark: t,
                        name: i,
                        index: u,
                        parentIndex: p,
                        icon: r,
                        store: l,
                        box_fee: s,
                        allmoney: (e * d).toFixed(2)
                    }, g = h.data.carArray.filter(function(a) {
                        return a.mark != t;
                    });
                    g.splice(u, 0, c), h.setData({
                        shop_cart: g,
                        carArray: g,
                        dishes: h.data.dishes
                    }), h.calTotalPrice(), h.setData({
                        payDesc: h.payDesc()
                    }), console.log(h.data.dishes);
                }
            }
        });
    },
    xzggClick: function(a) {
        this.setData({
            xzggindex: a.currentTarget.id
        });
    },
    xhl: function() {
        var a = this.data.zindex, t = this.data.findex;
        console.log(this.data.zindex, this.data.findex), console.log(this.data.dishes), 
        this.data.dishes[t].goods[a].one++, this.data.dishes[t].goods[a].gg[this.data.xzggindex].num++;
        var e = "a" + a + "b" + t + "c" + this.data.gg[this.data.xzggindex].id, s = this.data.xzggindex;
        if (2 == this.data.types) var o = this.data.gg[this.data.xzggindex].cost; else o = this.data.gg[this.data.xzggindex].cost;
        var d = this.data.dishes[t].goods[a].box_fee;
        console.log("餐盒费是：" + d);
        var i = Number(this.data.dishes[t].goods[a].num), n = this.data.dishes[t].goods[a].gg[this.data.xzggindex].num, r = this.data.ggbt + this.data.gg[this.data.xzggindex].name, l = this.data.dishes[t].goods[a].id, c = this.data.dishes[t].goods[a].img, g = this.data.store, h = {
            ggindex: s,
            money: o,
            num: n,
            kc: i,
            id: l,
            mark: e,
            name: r,
            index: a,
            parentIndex: t,
            icon: c,
            store: g,
            box_fee: d,
            allmoney: (o * n).toFixed(2)
        }, u = this.data.carArray.filter(function(a) {
            return a.mark != e;
        });
        u.splice(a, 0, h), console.log(u), this.setData({
            shop_cart: u,
            carArray: u,
            dishes: this.data.dishes
        }), this.calTotalPrice(), this.setData({
            payDesc: this.payDesc()
        }), this.setData({
            showModal: !1,
            xzggindex: 0
        });
    },
    addCart: function(a) {
        console.log(this.data);
        var h = this, u = a.currentTarget.dataset.itemIndex, p = a.currentTarget.dataset.parentindex;
        this.setData({
            zindex: u,
            findex: p
        }), console.log(p, h.data.dishes[p].goods[u].id), app.util.request({
            url: "entry/wxapp/DishesGg",
            cachetime: "0",
            data: {
                dishes_id: h.data.dishes[p].goods[u].id
            },
            success: function(a) {
                if (console.log(a), 0 != a.data.length) null == h.data.dishes[p].goods[u].gg ? (h.setData({
                    showModal: !0,
                    gg: a.data,
                    ggbt: h.data.dishes[p].goods[u].name
                }), h.data.dishes[p].goods[u].gg = a.data, h.setData({
                    dishes: h.data.dishes
                })) : h.setData({
                    showModal: !0,
                    gg: a.data,
                    ggbt: h.data.dishes[p].goods[u].name
                }), console.log(h.data.dishes); else {
                    h.data.dishes[p].goods[u].one++;
                    var t = "a" + u + "b" + p;
                    if (2 == h.data.types) var e = h.data.dishes[p].goods[u].wm_money; else e = h.data.dishes[p].goods[u].money;
                    var s = h.data.dishes[p].goods[u].box_fee;
                    console.log("餐盒费是：" + s);
                    var o = Number(h.data.dishes[p].goods[u].num), d = h.data.dishes[p].goods[u].one, i = h.data.dishes[p].goods[u].name, n = h.data.dishes[p].goods[u].id, r = h.data.dishes[p].goods[u].img, l = h.data.store, c = {
                        money: e,
                        num: d,
                        kc: o,
                        id: n,
                        mark: t,
                        name: i,
                        index: u,
                        parentIndex: p,
                        icon: r,
                        store: l,
                        box_fee: s,
                        allmoney: (e * d).toFixed(2)
                    }, g = h.data.carArray.filter(function(a) {
                        return a.mark != t;
                    });
                    g.splice(u, 0, c), console.log(g), h.setData({
                        shop_cart: g,
                        carArray: g,
                        dishes: h.data.dishes
                    }), console.log(h.data.dishes), h.calTotalPrice(), h.setData({
                        payDesc: h.payDesc()
                    });
                }
            }
        });
    },
    calTotalPrice: function() {
        for (var a = this.data.carArray, t = 0, e = 0, s = 0, o = 0; o < a.length; o++) 2 == this.data.types ? (t += a[o].money * a[o].num + a[o].box_fee * a[o].num, 
        s += a[o].num, e += a[o].box_fee * a[o].num) : (t += a[o].money * a[o].num, s += a[o].num), 
        console.log(t);
        this.setData({
            shop_cart: a,
            totalPrice: t.toFixed(2),
            totalCount: s,
            totalbox: e
        });
    },
    payDesc: function() {
        console.log(this.data);
        var a = parseFloat(this.data.totalPrice), t = parseFloat(this.data.start_at);
        {
            if (2 == this.data.types) return 0 == this.data.totalPrice ? "￥" + this.data.start_at + "元起送" : this.data.totalPrice <= 0 ? "￥" + this.data.start_at + "元起送" : a < t ? (console.log(this.data.totalPrice), 
            "还差" + (t - a).toFixed(2) + "元起送") : (console.log(a), "去结算");
            if (0 <= this.data.totalPrice) return "去下单";
        }
    },
    clear: function(a) {
        this.setData({
            shop_cart: [],
            carArray: [],
            carArray1: [],
            changeHidden: !0
        }), this.calTotalPrice(), this.reload();
    },
    clickImage: function(a) {
        var t = this;
        console.log(a), console.log(t.data);
        t.data.url;
        var e = a.target.dataset.id;
        console.log(e);
        for (var s = [], o = 0; o < t.data.dishes.length; o++) for (var d = 0; d < t.data.dishes[o].goods.length; d++) if (console.log(t.data.dishes[o].goods[d].id), 
        t.data.dishes[o].goods[d].id == e) {
            s.splice(e, 0, t.data.dishes[o].goods[d].img);
            var i = t.data.dishes[o].goods[d];
            app.util.request({
                url: "entry/wxapp/DishesInfo",
                cachetime: "0",
                data: {
                    id: i.id
                },
                success: function(a) {
                    console.log(a.data), wx.navigateTo({
                        url: "../dishinfo/dishinfo?id=" + i.id + "&types=" + t.data.types
                    });
                }
            });
        }
    },
    bomb: function(a) {
        for (var t = a.currentTarget.id, e = this.data.dishes, s = 0, o = e.length; s < o; ++s) for (var d = e[s].goods, i = 0; i < d.length; i++) d[i].id == t ? d[i].open = !d[i].open : d[i].open = !1;
        this.setData({
            dishes: e,
            id: a.currentTarget.id
        });
    },
    jcgwc: function(a) {
        var t = 0;
        for (var e in a) 0 != a[e].num && t++;
        return t;
    },
    pay: function(a) {
        if (console.log(this.data.types), console.log(this.data.shop_cart), 2 == this.data.types) {
            e = this.data.shop_cart;
            if (console.log(this.data.shop_cart), console.log(this.jcgwc(e)), console.log(this.data), 
            wx.setStorageSync("store", this.data.store), wx.setStorageSync("order", this.data.shop_cart), 
            null == e || 0 == e.length) return void wx.showModal({
                title: "提示",
                showCancel: !1,
                content: "请选择菜品"
            });
            if (0 == this.jcgwc(e)) return void wx.showModal({
                title: "提示",
                showCancel: !1,
                content: "请选择菜品"
            });
            if (parseFloat(this.data.totalPrice) < parseFloat(this.data.start_at)) return;
            wx.navigateTo({
                url: "../pay/pay?types=" + this.data.types
            });
        } else {
            var t = this.data.tableid, e = this.data.shop_cart;
            console.log(this.data.shop_cart), console.log(this.data), wx.setStorageSync("store", this.data.store), 
            wx.setStorageSync("order", this.data.shop_cart);
            wx.navigateTo({
                url: "../order/order?types=" + this.data.types + "&tableid=" + t
            });
        }
    },
    navInfo: function(a) {
        wx.switchTab({
            url: "../info/info",
            success: function(a) {},
            fail: function(a) {},
            complete: function(a) {}
        });
    },
    change: function(a) {
        console.log("1111"), this.setData({
            changeHidden: !0
        });
    },
    toastChange: function(a) {
        this.setData({
            toastHidden: !0
        });
    },
    change1: function(a) {
        console.log("1111"), this.setData({
            changeHidden: !1
        });
    },
    ktpay: function() {
        wx.showModal({
            title: "提示",
            content: "此桌已开台不能点菜"
        });
    }
});