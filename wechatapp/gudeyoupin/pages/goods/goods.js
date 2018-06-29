var api = require("../../api.js"), utils = require("../../utils.js"), app = getApp(), WxParse = require("../../wxParse/wxParse.js"), p = 1, is_loading_comment = !1, is_more_comment = !0, share_count = 0;

Page({
    data: {
        id: null,
        goods: {},
        show_attr_picker: !1,
        form: {
            number: 1
        },
        tab_detail: "active",
        tab_comment: "",
        comment_list: [],
        comment_count: {
            score_all: 0,
            score_3: 0,
            score_2: 0,
            score_1: 0
        },
        autoplay: !1,
        hide: "hide",
        show: !1,
        x: wx.getSystemInfoSync().windowWidth,
        y: wx.getSystemInfoSync().windowHeight - 20,
        miaosha_end_time_over: {
            h: "--",
            m: "--",
            s: "--"
        },
        page: 1,
        drop: !1,
        goodsModel: !1
    },
    onLoad: function(t) {
        var a = this;
        app.pageOnLoad(this), console.log(wx.getSystemInfoSync()), share_count = 0, is_more_comment = !(is_loading_comment = !(p = 1));
        var o = t.quick;
        if (o) {
            var i = wx.getStorageSync("item");
            if (i) var e = i.total, r = i.carGoods; else e = {
                total_price: 0,
                total_num: 0
            }, r = [];
            a.setData({
                quick: o,
                quick_list: i.quick_list,
                total: e,
                carGoods: r,
                quick_hot_goods_lists: i.quick_hot_goods_lists
            });
        }
        this.setData({
            store: wx.getStorageSync("store")
        });
        var s = 0, d = t.user_id;
        console.log("options=>" + JSON.stringify(t));
        var n = decodeURIComponent(t.scene);
        if (null != d) s = d; else if (null != n) {
            console.log("scene string=>" + n);
            var c = utils.scene_decode(n);
            console.log("scene obj=>" + JSON.stringify(c)), c.uid && c.gid ? (s = c.uid, t.id = c.gid) : s = n;
        }
        app.loginBindParent({
            parent_id: s
        }), a.setData({
            id: t.id
        }), a.getGoods(), a.getCommentList();
    },
    getGoods: function() {
        var o = this;
        if (o.data.quick) {
            var t = o.data.carGoods;
            if (t) {
                for (var a = t.length, i = 0, e = 0; e < a; e++) t[e].goods_id == o.data.id && (i += parseInt(t[e].num));
                o.setData({
                    goods_num: i
                });
            }
        }
        app.request({
            url: api.default.goods,
            data: {
                id: o.data.id
            },
            success: function(t) {
                if (0 == t.code) {
                    var a = t.data.detail;
                    WxParse.wxParse("detail", "html", a, o), o.setData({
                        goods: t.data,
                        attr_group_list: t.data.attr_group_list
                    }), o.goods_recommend({
                        goods_id: t.data.id,
                        reload: !0
                    }), o.data.goods.miaosha && o.setMiaoshaTimeOver(), o.selectDefaultAttr();
                }
                1 == t.code && wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    success: function(t) {
                        t.confirm && wx.switchTab({
                            url: "/pages/index/index"
                        });
                    }
                });
            }
        });
    },
    goodsModel: function(t) {
        var a = this, o = (a.data.carGoods, a.data.goodsModel);
        o ? a.setData({
            goodsModel: !1
        }) : a.setData({
            goodsModel: !0
        });
    },
    hideGoodsModel: function() {
        this.setData({
            goodsModel: !1
        });
    },
    close_box: function(t) {
        this.setData({
            showModal: !1
        });
    },
    showDialogBtn: function(t) {
        this.setData({
            showModal: !0
        });
    },
    hideModal: function() {
        this.setData({
            showModal: !1
        });
    },
    onConfirm: function(t) {
        var a = this, o = a.data.attr_group_list, i = [], e = [], r = a.data.goods;
        for (var s in o) {
            var d = !1;
            for (var n in o[s].attr_list) if (o[s].attr_list[n].checked) {
                d = {
                    attr_id: o[s].attr_list[n].attr_id,
                    attr_name: o[s].attr_list[n].attr_name
                };
                break;
            }
            if (!d) return wx.showToast({
                title: "请选择" + o[s].attr_group_name,
                image: "/images/icon-warning.png"
            }), !0;
            i.push({
                attr_id: d.attr_id,
                attr_name: d.attr_name
            }), e.push({
                attr_group_id: o[s].attr_group_id,
                attr_group_name: o[s].attr_group_name,
                attr_id: d.attr_id,
                attr_name: d.attr_name
            });
        }
        var c = a.data.carGoods, _ = JSON.parse(r.attr), l = _.length;
        for (s = 0; s < l; s++) {
            var u = _[s].attr_list;
            if (JSON.stringify(u) == JSON.stringify(i)) var g = _[s].price, m = _[s].num;
        }
        if (0 == g) var p = parseFloat(r.price); else p = parseFloat(g);
        var f = {
            goods_id: r.id,
            num: 1,
            goods_name: r.name,
            attr: e,
            goods_price: p,
            price: p
        }, h = c.length, v = !0, w = 0;
        if (h <= 0) w = 1, c.push(f); else {
            for (var x = 0; x < h; x++) c[x].goods_id == r.id && JSON.stringify(c[x].attr) == JSON.stringify(e) && (c[x].num += 1, 
            w = c[x].num, c[x].goods_price = w * p, c[x].goods_price = c[x].goods_price.toFixed(2), 
            v = !1);
            v && (c.push(f), w = 1);
        }
        if (m < w) {
            wx.showToast({
                title: "商品库存不足",
                image: "/images/icon-warning.png"
            }), w = m;
            for (x = 0; x < h; x++) c[x].goods_id == r.id && JSON.stringify(c[x].attr) == JSON.stringify(e) && (c[x].num = m, 
            c[x].goods_price -= p, c[x].goods_price = c[x].goods_price.toFixed(2));
        } else {
            var k = a.data.goods_num;
            k += 1;
            var D = a.data.total;
            D.total_num += 1, D.total_price = parseFloat(D.total_price), p = parseFloat(p), 
            D.total_price += p, D.total_price = D.total_price.toFixed(2);
            var S = a.data.quick_hot_goods_lists;
            if (S) {
                var q = S.find(function(t) {
                    return t.id == a.data.id;
                });
                q && (q.num += 1);
            }
            var b = a.data.quick_list;
            if (b) {
                var y = b.length, F = [];
                for (s = 0; s < y; s++) {
                    var G = b[s].goods, N = G.length;
                    for (x = 0; x < N; x++) F.push(G[x]);
                }
                for (var O = F.length, M = [], T = 0; T < O; T++) F[T].id == a.data.id && M.push(F[T]);
                N = M.length;
                for (var C = 0; C < N; C++) M[C].num += 1;
            }
            a.setData({
                carGoods: c,
                check_num: w,
                total: D,
                goods_num: k
            });
            var J = {
                quick_list: b,
                quick_hot_goods_lists: S,
                carGoods: c,
                total: D
            };
            wx.setStorageSync("item", J);
        }
    },
    guigejian: function(t) {
        var a = this, o = a.data.attr_group_list, i = [], e = [];
        for (var r in o) {
            var s = !1;
            for (var d in o[r].attr_list) if (o[r].attr_list[d].checked) {
                s = {
                    attr_id: o[r].attr_list[d].attr_id,
                    attr_name: o[r].attr_list[d].attr_name
                };
                break;
            }
            if (!s) return wx.showToast({
                title: "请选择" + o[r].attr_group_name,
                image: "/images/icon-warning.png"
            }), !0;
            i.push({
                attr_id: s.attr_id,
                attr_name: s.attr_name
            }), e.push({
                attr_group_id: o[r].attr_group_id,
                attr_group_name: o[r].attr_group_name,
                attr_id: s.attr_id,
                attr_name: s.attr_name
            });
        }
        var n = a.data.goods, c = JSON.parse(n.attr), _ = c.length;
        for (r = 0; r < _; r++) {
            var l = c[r].attr_list;
            if (JSON.stringify(l) == JSON.stringify(i)) {
                var u = c[r].price;
                c[r].num;
            }
        }
        if (0 == u) var g = parseFloat(n.price); else g = parseFloat(u);
        for (var m = a.data.carGoods, p = m.length, f = 0; f < p; f++) if (m[f].goods_id == n.id && JSON.stringify(m[f].attr) == JSON.stringify(e)) {
            m[f].num -= 1;
            var h = m[f].num;
            m[f].goods_price = h * g;
        }
        var v = a.data.goods_num;
        v -= 1;
        var w = a.data.total;
        w.total_num -= 1, w.total_price = parseFloat(w.total_price), u = parseFloat(u), 
        w.total_price -= u, w.total_price = w.total_price.toFixed(2);
        var x = a.data.quick_hot_goods_lists;
        if (x) {
            var k = x.find(function(t) {
                return t.id == a.data.id;
            });
            k && (k.num -= 1);
        }
        var D = a.data.quick_list;
        if (D) {
            var S = D.length, q = [];
            for (r = 0; r < S; r++) {
                var b = D[r].goods, y = b.length;
                for (f = 0; f < y; f++) q.push(b[f]);
            }
            for (var F = q.length, G = [], N = 0; N < F; N++) q[N].id == a.data.id && G.push(q[N]);
            y = G.length;
            for (var O = 0; O < y; O++) G[O].num -= 1;
        }
        a.setData({
            carGoods: m,
            check_num: h,
            total: w,
            goods_num: v
        });
        var M = {
            quick_list: D,
            quick_hot_goods_lists: x,
            carGoods: m,
            total: w
        };
        wx.setStorageSync("item", M);
    },
    jia: function(t) {
        var a = this, o = a.data.goods, i = a.data.goods_num;
        if ((i += 1) > JSON.parse(o.attr)[0].num) return wx.showToast({
            title: "商品库存不足",
            image: "/images/icon-warning.png"
        }), void (i -= 1);
        var e = a.data.total;
        e.total_num += 1, o.price = parseFloat(o.price), e.total_price = parseFloat(e.total_price), 
        e.total_price += o.price, e.total_price = e.total_price.toFixed(2);
        var r = parseFloat(o.price * i), s = {
            goods_id: o.id,
            num: 1,
            goods_name: o.name,
            attr: "",
            goods_price: r.toFixed(2),
            price: o.price.toFixed(2)
        }, d = a.data.carGoods, n = !0;
        if ((g = d.length) <= 0) d.push(s); else {
            for (var c = 0; c < g; c++) d[c].goods_id == o.id && (d[c].num += 1, d[c].goods_price = r.toFixed(2), 
            n = !1);
            n && d.push(s);
        }
        var _ = a.data.quick_hot_goods_lists;
        if (_) {
            var l = _.find(function(t) {
                return t.id == a.data.id;
            });
            l && (l.num += 1);
        }
        var u = a.data.quick_list;
        if (u) {
            for (var g = u.length, m = [], p = 0; p < g; p++) {
                var f = u[p].goods, h = f.length;
                for (c = 0; c < h; c++) m.push(f[c]);
            }
            for (var v = m.length, w = [], x = 0; x < v; x++) m[x].id == a.data.id && w.push(m[x]);
            h = w.length;
            for (var k = 0; k < h; k++) w[k].num += 1;
        }
        a.setData({
            goods_num: i,
            carGoods: d,
            total: e
        });
        var D = {
            quick_list: u,
            quick_hot_goods_lists: _,
            carGoods: d,
            total: e
        };
        wx.setStorageSync("item", D);
    },
    jian: function() {
        var a = this, t = a.data.goods, o = a.data.goods_num;
        o -= 1;
        var i = a.data.total;
        i.total_num -= 1, t.price = parseFloat(t.price), i.total_price = parseFloat(i.total_price), 
        i.total_price -= t.price, i.total_price = i.total_price.toFixed(2);
        for (var e = a.data.carGoods, r = e.length, s = 0; s < r; s++) e[s].goods_id == t.id && (e[s].num -= 1, 
        e[s].goods_price = parseFloat(e[s].goods_price), e[s].goods_price -= t.price, e[s].goods_price = e[s].goods_price.toFixed(2));
        var d = a.data.quick_hot_goods_lists;
        if (d) {
            var n = d.find(function(t) {
                return t.id == a.data.id;
            });
            n && (n.num -= 1);
        }
        var c = a.data.quick_list;
        if (c) {
            r = c.length;
            for (var _ = [], l = 0; l < r; l++) {
                var u = c[l].goods, g = u.length;
                for (s = 0; s < g; s++) _.push(u[s]);
            }
            for (var m = _.length, p = [], f = 0; f < m; f++) _[f].id == a.data.id && p.push(_[f]);
            g = p.length;
            for (var h = 0; h < g; h++) p[h].num -= 1;
        }
        a.setData({
            goods_num: o,
            carGoods: e,
            total: i
        });
        var v = {
            quick_list: c,
            quick_hot_goods_lists: d,
            carGoods: e,
            total: i
        };
        wx.setStorageSync("item", v);
    },
    tianjia: function(t) {
        var a = this, o = t.currentTarget.dataset, i = a.data.quick_list, e = a.data.goods;
        if (i) {
            for (var r = i.length, s = [], d = 0; d < r; d++) for (var n = i[d].goods, c = n.length, _ = 0; _ < c; _++) s.push(n[_]);
            for (var l = s.length, u = [], g = 0; g < l; g++) s[g].id == o.id && u.push(s[g]);
            var m = JSON.parse(u[0].attr);
            if (1 == m.length) {
                var p = (F = a.data.carGoods).find(function(t) {
                    return t.goods_id == o.id;
                });
                if (p.num += 1, p.num > m[0].num) return wx.showToast({
                    title: "商品库存不足",
                    image: "/images/icon-warning.png"
                }), void (p.num -= 1);
                p.goods_price = parseFloat(p.goods_price), o.price = parseFloat(o.price), p.goods_price += o.price, 
                p.goods_price = p.goods_price.toFixed(2);
                for (var f = u.length, h = 0; h < f; h++) u[h].num += 1;
            } else {
                for (f = u.length, h = 0; h < f; h++) u[h].num += 1;
                var v = (F = a.data.carGoods).length, w = [];
                for (_ = 0; _ < v; _++) if (o.index == _) {
                    var x = F[_].attr, k = x.length;
                    for (d = 0; d < k; d++) {
                        var D = {
                            attr_id: x[d].attr_id,
                            attr_name: x[d].attr_name
                        };
                        w.push(D);
                    }
                }
                var S = m.length;
                for (d = 0; d < S; d++) if (JSON.stringify(m[d].attr_list) == JSON.stringify(w)) var q = m[d].num;
                for (_ = 0; _ < v; _++) if (o.index == _ && (F[_].num += 1, F[_].goods_price = parseFloat(F[_].goods_price), 
                o.price = parseFloat(o.price), F[_].goods_price += o.price, F[_].goods_price = F[_].goods_price.toFixed(2), 
                F[_].num > q)) {
                    wx.showToast({
                        title: "商品库存不足",
                        image: "/images/icon-warning.png"
                    }), F[_].num -= 1;
                    for (f = u.length, h = 0; h < f; h++) u[h].num -= 1;
                    return F[_].goods_price -= o.price, void (F[_].goods_price = F[_].goods_price.toFixed(2));
                }
            }
            var b = a.data.quick_hot_goods_lists;
            if (b) {
                var y = b.find(function(t) {
                    return t.id == o.id;
                });
                y && (y.num += 1);
            }
        } else {
            var F, G = (F = a.data.carGoods)[o.index].attr, N = [];
            if (G) {
                var O = G.length;
                for (_ = 0; _ < O; _++) N.push({
                    attr_id: G[_].attr_id,
                    attr_name: G[_].attr_name
                });
            }
            if (0 == e.use_attr) var M = (T = JSON.parse(e.attr))[0].num; else {
                var T, C = (T = JSON.parse(e.attr)).length;
                for (d = 0; d < C; d++) {
                    var J = T[d].attr_list;
                    if (JSON.stringify(J) == JSON.stringify(N)) M = T[d].num;
                }
            }
            if (F[o.index].num += 1, F[o.index].goods_price = parseFloat(F[o.index].goods_price), 
            o.price = parseFloat(o.price), F[o.index].goods_price += o.price, F[o.index].goods_price = F[o.index].goods_price.toFixed(2), 
            F[o.index].num > M) return wx.showToast({
                title: "商品库存不足",
                image: "/images/icon-warning.png"
            }), void (F[o.index].num = M);
        }
        var I = a.data.total;
        I.total_num += 1, I.total_price = parseFloat(I.total_price), o.price = parseFloat(o.price), 
        I.total_price += o.price, I.total_price = I.total_price.toFixed(2);
        var P = a.data.goods_num;
        P += 1, a.setData({
            carGoods: F,
            total: I,
            goods_num: P
        });
        var A = {
            quick_list: i,
            quick_hot_goods_lists: b,
            carGoods: F,
            total: I
        };
        wx.setStorageSync("item", A);
    },
    jianshao: function(t) {
        for (var a = this, o = t.currentTarget.dataset, i = a.data.carGoods, e = i.length, r = 0; r < e; r++) if (o.index == r) {
            if (i[r].num <= 0) return;
            i[r].num -= 1, o.price = parseFloat(o.price), i[r].goods_price = parseFloat(i[r].goods_price), 
            i[r].goods_price -= o.price, i[r].goods_price = i[r].goods_price.toFixed(2);
        }
        a.setData({
            carGoods: i
        });
        var s = a.data.quick_list;
        if (s) {
            e = s.length;
            for (var d = [], n = 0; n < e; n++) {
                var c = s[n].goods, _ = c.length;
                for (r = 0; r < _; r++) d.push(c[r]);
            }
            var l = [], u = d.length;
            for (r = 0; r < u; r++) o.id == d[r].id && l.push(d[r]);
            for (var g = l.length, m = 0; m < g; m++) l[m].id == o.id && (l[m].num -= 1);
            var p = a.data.quick_hot_goods_lists, f = p.find(function(t) {
                return t.id == o.id;
            });
            f && (f.num -= 1);
        }
        var h = a.data.total;
        h.total_num -= 1, h.total_price = parseFloat(h.total_price), h.total_price -= o.price, 
        h.total_price = h.total_price.toFixed(2);
        var v = a.data.goods_num;
        v -= 1;
        v = a.data.goods_num;
        v -= 1, a.setData({
            total: h,
            goods_num: v
        }), 0 == h.total_num && a.setData({
            goodsModel: !1
        });
        var w = {
            quick_list: s,
            quick_hot_goods_lists: p,
            carGoods: i,
            total: h
        };
        wx.setStorageSync("item", w);
    },
    clearCar: function() {
        var t = this;
        t.data.goods_num;
        var a = t.data.total;
        a.total_num = 0, a.total_price = 0;
        t.data.goodsModel;
        for (var o = t.data.carGoods, i = o.length, e = 0; e < i; e++) o[e].num = 0, o[e].goods_price = 0;
        var r = t.data.quick_list;
        for (i = r.length, e = 0; e < i; e++) for (var s = r[e].goods, d = s.length, n = 0; n < d; n++) s[n].num = 0;
        for (var c = t.data.quick_hot_goods_lists, _ = c.length, l = 0; l < _; l++) c[l].num = 0;
        t.setData({
            carGoods: o,
            total: a,
            goods_num: 0,
            goodsModel: !1,
            quick_list: r,
            quick_hot_goods_lists: c
        });
        var u = t.data.check_num;
        u && (u = 0, t.setData({
            check_num: u
        })), wx.getStorageSync("item") && wx.removeStorageSync("item");
    },
    buynow: function(t) {
        var a = this.data.carGoods;
        this.data.goodsModel;
        this.setData({
            goodsModel: !1
        });
        for (var o = a.length, i = [], e = [], r = 0; r < o; r++) 0 != a[r].num && (e = {
            id: a[r].goods_id,
            num: a[r].num,
            attr: a[r].attr
        }, i.push(e));
        wx.navigateTo({
            url: "/pages/order-submit/order-submit?cart_list=" + JSON.stringify(i)
        });
    },
    selectDefaultAttr: function() {
        var t = this;
        if (t.data.goods && 0 === t.data.goods.use_attr) {
            for (var a in t.data.attr_group_list) for (var o in t.data.attr_group_list[a].attr_list) 0 == a && 0 == o && (t.data.attr_group_list[a].attr_list[o].checked = !0);
            t.setData({
                attr_group_list: t.data.attr_group_list
            });
        }
    },
    getCommentList: function(a) {
        var o = this;
        a && "active" != o.data.tab_comment || is_loading_comment || is_more_comment && (is_loading_comment = !0, 
        app.request({
            url: api.default.comment_list,
            data: {
                goods_id: o.data.id,
                page: p
            },
            success: function(t) {
                0 == t.code && (is_loading_comment = !1, p++, o.setData({
                    comment_count: t.data.comment_count,
                    comment_list: a ? o.data.comment_list.concat(t.data.list) : t.data.list
                }), 0 == t.data.list.length && (is_more_comment = !1));
            }
        }));
    },
    onGoodsImageClick: function(t) {
        var a = [], o = t.currentTarget.dataset.index;
        for (var i in this.data.goods.pic_list) a.push(this.data.goods.pic_list[i].pic_url);
        wx.previewImage({
            urls: a,
            current: a[o]
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
        var t = this.data.form.number;
        t++, this.setData({
            form: {
                number: t
            }
        });
    },
    numberBlur: function(t) {
        var a = t.detail.value;
        a = parseInt(a), isNaN(a) && (a = 1), a <= 0 && (a = 1), this.setData({
            form: {
                number: a
            }
        });
    },
    addCart: function() {
        this.submit("ADD_CART");
    },
    buyNow: function() {
        this.submit("BUY_NOW");
    },
    submit: function(t) {
        var a = this;
        if (!a.data.show_attr_picker) return a.setData({
            show_attr_picker: !0
        }), !0;
        if (a.data.miaosha_data && 0 < a.data.miaosha_data.rest_num && a.data.form.number > a.data.miaosha_data.rest_num) return wx.showToast({
            title: "商品库存不足，请选择其它规格或数量",
            image: "/images/icon-warning.png"
        }), !0;
        if (a.data.form.number > a.data.goods.num) return wx.showToast({
            title: "商品库存不足，请选择其它规格或数量",
            image: "/images/icon-warning.png"
        }), !0;
        var o = a.data.attr_group_list, i = [];
        for (var e in o) {
            var r = !1;
            for (var s in o[e].attr_list) if (o[e].attr_list[s].checked) {
                r = {
                    attr_id: o[e].attr_list[s].attr_id,
                    attr_name: o[e].attr_list[s].attr_name
                };
                break;
            }
            if (!r) return wx.showToast({
                title: "请选择" + o[e].attr_group_name,
                image: "/images/icon-warning.png"
            }), !0;
            i.push({
                attr_group_id: o[e].attr_group_id,
                attr_group_name: o[e].attr_group_name,
                attr_id: r.attr_id,
                attr_name: r.attr_name
            });
        }
        "ADD_CART" == t && (wx.showLoading({
            title: "正在提交",
            mask: !0
        }), app.request({
            url: api.cart.add_cart,
            method: "POST",
            data: {
                goods_id: a.data.id,
                attr: JSON.stringify(i),
                num: a.data.form.number
            },
            success: function(t) {
                wx.showToast({
                    title: t.msg,
                    duration: 1500
                }), wx.hideLoading(), a.setData({
                    show_attr_picker: !1
                });
            }
        })), "BUY_NOW" == t && (a.setData({
            show_attr_picker: !1
        }), wx.redirectTo({
            url: "/pages/order-submit/order-submit?goods_info=" + JSON.stringify({
                goods_id: a.data.id,
                attr: i,
                num: a.data.form.number
            })
        }));
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
        var o = this, a = t.target.dataset.groupId, i = t.target.dataset.id, e = o.data.attr_group_list;
        for (var r in e) if (e[r].attr_group_id == a) for (var s in e[r].attr_list) e[r].attr_list[s].attr_id == i ? e[r].attr_list[s].checked = !0 : e[r].attr_list[s].checked = !1;
        o.setData({
            attr_group_list: e
        });
        var d = [], n = !0;
        for (var r in e) {
            var c = !1;
            for (var s in e[r].attr_list) if (e[r].attr_list[s].checked) {
                d.push(e[r].attr_list[s].attr_id), c = !0;
                break;
            }
            if (!c) {
                n = !1;
                break;
            }
        }
        var _ = o.data.carGoods;
        if (_) {
            var l = _.length, u = [];
            for (r = 0; r < l; r++) {
                if (_[r].goods_id == o.data.goods.id) var g = _[r].attr;
                if (g) {
                    for (var m = g.length, p = (u = [], 0); p < m; p++) u.push(g[p].attr_id);
                    var f = 0;
                    if (d.join(",") == u.join(",")) {
                        f = _[r].num;
                        break;
                    }
                } else f = 0;
            }
            o.setData({
                check_num: f || null
            });
        }
        n && app.request({
            url: api.default.goods_attr_info,
            data: {
                goods_id: o.data.goods.id,
                attr_list: JSON.stringify(d)
            },
            success: function(t) {
                if (0 == t.code) {
                    var a = o.data.goods;
                    a.price = t.data.price, a.num = t.data.num, a.attr_pic = t.data.pic, o.setData({
                        goods: a,
                        miaosha_data: t.data.miaosha
                    });
                }
            }
        });
    },
    favoriteAdd: function() {
        var o = this;
        app.request({
            url: api.user.favorite_add,
            method: "post",
            data: {
                goods_id: o.data.goods.id
            },
            success: function(t) {
                if (0 == t.code) {
                    var a = o.data.goods;
                    a.is_favorite = 1, o.setData({
                        goods: a
                    });
                }
            }
        });
    },
    favoriteRemove: function() {
        var o = this;
        app.request({
            url: api.user.favorite_remove,
            method: "post",
            data: {
                goods_id: o.data.goods.id
            },
            success: function(t) {
                if (0 == t.code) {
                    var a = o.data.goods;
                    a.is_favorite = 0, o.setData({
                        goods: a
                    });
                }
            }
        });
    },
    tabSwitch: function(t) {
        "detail" == t.currentTarget.dataset.tab ? this.setData({
            tab_detail: "active",
            tab_comment: ""
        }) : this.setData({
            tab_detail: "",
            tab_comment: "active"
        });
    },
    commentPicView: function(t) {
        console.log(t);
        var a = t.currentTarget.dataset.index, o = t.currentTarget.dataset.picIndex;
        wx.previewImage({
            current: this.data.comment_list[a].pic_list[o],
            urls: this.data.comment_list[a].pic_list
        });
    },
    onReady: function() {},
    onShow: function() {
        var t = wx.getStorageSync("item");
        if (t) var a = t.total, o = t.carGoods, i = this.data.goods_num; else a = {
            total_price: 0,
            total_num: 0
        }, o = [], i = 0;
        this.setData({
            total: a,
            carGoods: o,
            goods_num: i
        });
    },
    onHide: function() {},
    onUnload: function() {},
    onPullDownRefresh: function() {},
    onReachBottom: function() {
        var t = this;
        "active" == t.data.tab_detail && t.data.drop ? (t.data.drop = !1, t.goods_recommend({
            goods_id: t.data.goods.id,
            loadmore: !0
        })) : "active" == t.data.tab_comment && t.getCommentList(!0);
    },
    onShareAppMessage: function() {
        var a = this, t = wx.getStorageSync("user_info");
        return {
            path: "/pages/goods/goods?id=" + this.data.id + "&user_id=" + t.id,
            success: function(t) {
                console.log(t), 1 == ++share_count && app.shareSendCoupon(a);
            },
            title: a.data.goods.name,
            imageUrl: a.data.goods.pic_list[0].pic_url
        };
    },
    play: function(t) {
        var a = t.target.dataset.url;
        this.setData({
            url: a,
            hide: "",
            show: !0
        }), wx.createVideoContext("video").play();
    },
    close: function(t) {
        if ("video" == t.target.id) return !0;
        this.setData({
            hide: "hide",
            show: !1
        }), wx.createVideoContext("video").pause();
    },
    hide: function(t) {
        0 == t.detail.current ? this.setData({
            img_hide: ""
        }) : this.setData({
            img_hide: "hide"
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
        var a = this;
        if (a.setData({
            goods_qrcode_active: "active",
            share_modal_active: ""
        }), a.data.goods_qrcode) return !0;
        app.request({
            url: api.default.goods_qrcode,
            data: {
                goods_id: a.data.id
            },
            success: function(t) {
                0 == t.code && a.setData({
                    goods_qrcode: t.data.pic_url
                }), 1 == t.code && (a.goodsQrcodeClose(), wx.showModal({
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
    },
    saveGoodsQrcode: function() {
        var a = this;
        wx.saveImageToPhotosAlbum ? (wx.showLoading({
            title: "正在保存图片",
            mask: !1
        }), wx.downloadFile({
            url: a.data.goods_qrcode,
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
    goodsQrcodeClick: function(t) {
        var a = t.currentTarget.dataset.src;
        wx.previewImage({
            urls: [ a ]
        });
    },
    closeCouponBox: function(t) {
        this.setData({
            get_coupon_list: ""
        });
    },
    setMiaoshaTimeOver: function() {
        var r = this;
        function t() {
            var t, a, o, i, e = r.data.goods.miaosha.end_time - r.data.goods.miaosha.now_time;
            e = e < 0 ? 0 : e, r.data.goods.miaosha.now_time++, r.setData({
                goods: r.data.goods,
                miaosha_end_time_over: (t = e, a = parseInt(t / 3600), o = parseInt(t % 3600 / 60), 
                i = t % 60, {
                    h: a < 10 ? "0" + a : "" + a,
                    m: o < 10 ? "0" + o : "" + o,
                    s: i < 10 ? "0" + i : "" + i
                })
            });
        }
        t(), setInterval(function() {
            t();
        }, 1e3);
    },
    to_dial: function(t) {
        var a = this.data.store.contact_tel;
        wx.makePhoneCall({
            phoneNumber: a
        });
    },
    goods_recommend: function(o) {
        var i = this;
        i.setData({
            is_loading: !0
        });
        var e = i.data.page || 2;
        app.request({
            url: api.default.goods_recommend,
            data: {
                goods_id: o.goods_id,
                page: e
            },
            success: function(t) {
                if (0 == t.code) {
                    if (o.reload) var a = t.data.list;
                    if (o.loadmore) a = i.data.goods_list.concat(t.data.list);
                    i.data.drop = !0, i.setData({
                        goods_list: a
                    }), i.setData({
                        page: e + 1
                    });
                }
            },
            complete: function() {
                i.setData({
                    is_loading: !1
                });
            }
        });
    }
});