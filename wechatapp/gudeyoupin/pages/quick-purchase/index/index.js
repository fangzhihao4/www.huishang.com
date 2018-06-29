var api = require("../../../api.js"), app = getApp();

Page({
    data: {
        quick_list: [],
        goods_list: [],
        carGoods: [],
        showModal: !1,
        checked: !1,
        cat_checked: !1,
        color: "",
        total: {
            total_price: 0,
            total_num: 0
        }
    },
    onLoad: function(t) {
        app.pageOnLoad(this), this.setData({
            store: wx.getStorageSync("store")
        });
    },
    onShow: function() {
        app.pageOnShow(this), this.loadData();
    },
    loadData: function(t) {
        var f = this, m = wx.getStorageSync("item"), v = Object.keys(m).length;
        if (4 <= v) m.total, m.carGoods; else ;
        4 <= v && f.setData({
            quick_hot_goods_lists: m.quick_hot_goods_lists,
            quick_list: m.quick_list,
            total: m.total,
            carGoods: m.carGoods
        }), app.request({
            url: api.quick.quick,
            success: function(t) {
                if (0 == t.code) {
                    for (var a = [], o = t.data.list, i = o.length, r = 0; r < i; r++) {
                        var e = o[r].goods;
                        if (e) 0 != e.length && a.push(o[r]);
                    }
                    for (var s = a.length, d = [], n = 0; n < s; n++) d.push(a[n].goods);
                    for (var c = [].concat.apply([], d), _ = c.length, l = [], g = 0; g < _; g++) 1 == c[g].hot_cakes && l.push(c[g]);
                    for (n = 0; n < l.length; n++) for (var u = n + 1; u < l.length; ) l[n].id == l[u].id ? l.splice(u, 1) : u++;
                    if (4 <= v) if (m.quick_hot_goods_lists.length != l.length || m.quick_list.length != a.length) {
                        var p = {
                            total_price: 0,
                            total_num: 0
                        }, h = [];
                        f.setData({
                            quick_hot_goods_lists: l,
                            quick_list: a,
                            total: p,
                            carGoods: h
                        });
                    } else f.setData({
                        quick_hot_goods_lists: m.quick_hot_goods_lists,
                        quick_list: m.quick_list,
                        total: m.total,
                        carGoods: m.carGoods
                    }); else {
                        p = {
                            total_price: 0,
                            total_num: 0
                        }, h = [];
                        f.setData({
                            quick_hot_goods_lists: l,
                            quick_list: a,
                            total: p,
                            carGoods: h
                        });
                    }
                }
            }
        });
    },
    get_goods_info: function(t) {
        var a = this, o = a.data.carGoods, i = a.data.total, r = a.data.quick_hot_goods_lists, e = a.data.quick_list, s = {
            carGoods: o,
            total: i,
            quick_hot_goods_lists: r,
            check_num: a.data.check_num,
            quick_list: e
        };
        wx.setStorageSync("item", s);
        var d = t.currentTarget.dataset.id;
        wx.navigateTo({
            url: "/pages/goods/goods?id=" + d + "&quick=1"
        });
    },
    selectMenu: function(t) {
        var a = t.currentTarget.dataset, o = this.data.quick_list;
        if ("hot_cakes" == a.tag) for (var i = !0, r = o.length, e = 0; e < r; e++) o[e].cat_checked = !1; else {
            var s = a.index;
            for (r = o.length, e = 0; e < r; e++) o[e].cat_checked = !1, o[e].id == o[s].id && (o[e].cat_checked = !0);
            i = !1;
        }
        this.setData({
            toView: a.tag,
            selectedMenuId: a.id,
            quick_list: o,
            cat_checked: i
        });
    },
    onShareAppMessage: function(t) {
        var a = this;
        return {
            path: "/pages/index/index?user_id=" + wx.getStorageSync("user_info").id,
            success: function(t) {
                share_count++, 1 == share_count && app.shareSendCoupon(a);
            }
        };
    },
    jia: function(t) {
        for (var a = this, o = t.currentTarget.dataset, i = a.data.quick_list, r = i.length, e = [], s = 0; s < r; s++) for (var d = i[s].goods, n = d.length, c = 0; c < n; c++) e.push(d[c]);
        for (var _ = e.length, l = [], g = 0; g < _; g++) e[g].id == o.id && l.push(e[g]);
        n = l.length;
        for (var u = 0; u < n; u++) l[u].num += 1;
        var p = parseFloat(l[0].price * l[0].num), h = a.data.carGoods, f = {
            goods_id: l[0].id,
            num: 1,
            goods_name: l[0].name,
            attr: "",
            goods_price: p.toFixed(2),
            price: l[0].price
        }, m = !0;
        if ((r = h.length) <= 0) h.push(f); else {
            for (c = 0; c < r; c++) h[c].goods_id == l[0].id && (h[c].num += 1, h[c].goods_price = p.toFixed(2), 
            m = !1);
            m && h.push(f);
        }
        var v = h.find(function(t) {
            return t.goods_id == o.id;
        }), k = JSON.parse(l[0].attr);
        if (v.num > k[0].num) {
            wx.showToast({
                title: "商品库存不足",
                image: "/images/icon-warning.png"
            }), v.num = k[0].num;
            for (var q = 0; q < n; q++) l[q].num -= 1;
        } else {
            var S = a.data.total;
            S.total_num += 1, l[0].price = parseFloat(l[0].price), S.total_price = parseFloat(S.total_price), 
            S.total_price += l[0].price, S.total_price = S.total_price.toFixed(2);
            var D = a.data.quick_hot_goods_lists, w = D.find(function(t) {
                return t.id == o.id;
            });
            w && (w.num += 1), a.setData({
                quick_list: i,
                total: S,
                carGoods: h,
                quick_hot_goods_lists: D
            });
        }
    },
    jian: function(t) {
        for (var a = this, o = t.currentTarget.dataset, i = a.data.quick_list, r = i.length, e = [], s = 0; s < r; s++) for (var d = i[s].goods, n = d.length, c = 0; c < n; c++) e.push(d[c]);
        for (var _ = e.length, l = [], g = 0; g < _; g++) e[g].id == o.id && l.push(e[g]);
        n = l.length;
        for (var u = 0; u < n; u++) l[u].num -= 1;
        var p = a.data.total;
        p.total_num -= 1, l[0].price = parseFloat(l[0].price), p.total_price = parseFloat(p.total_price), 
        p.total_price -= l[0].price, p.total_price = p.total_price.toFixed(2);
        var h = a.data.quick_hot_goods_lists, f = h.find(function(t) {
            return t.id == o.id;
        });
        f && (f.num -= 1), a.setData({
            quick_list: i,
            total: p,
            quick_hot_goods_lists: h
        });
        var m = a.data.carGoods, v = m.find(function(t) {
            return t.goods_id == o.id;
        });
        v.num -= 1, v.goods_price = parseFloat(v.goods_price), v.goods_price -= l[0].price, 
        v.goods_price = v.goods_price.toFixed(2), a.setData({
            carGoods: m
        });
    },
    showDialogBtn: function(t) {
        var a = this, o = t.currentTarget.dataset.id, i = t.currentTarget.dataset;
        if (app.request({
            url: api.default.goods,
            data: {
                id: o
            },
            success: function(t) {
                0 == t.code && a.setData({
                    data: i,
                    attr_group_list: t.data.attr_group_list,
                    showModal: !0
                });
            }
        }), i.cid) var r = a.data.quick_list.find(function(t) {
            return t.id == i.cid;
        }).goods.find(function(t) {
            return t.id == i.id;
        }); else r = a.data.quick_hot_goods_lists.find(function(t) {
            return t.id == i.id;
        });
        for (var e = JSON.parse(r.attr), s = e.length, d = 0; d < s; d++) e[d].check_num = 0;
        a.setData({
            goods: r,
            goods_name: r.name,
            attr: e,
            check_num: 0
        });
        var n = a.data.carGoods, c = n.length;
        if (1 <= c) for (d = 0; d < c; d++) JSON.stringify(r.name) != JSON.stringify(n[d].goods_name) && a.setData({
            check_num: !1,
            check_goods_price: !1
        });
    },
    close_box: function(t) {
        this.setData({
            showModal: !1
        });
    },
    attrClick: function(t) {
        var a = this, o = t.target.dataset.groupId, i = t.target.dataset.id, r = a.data.attr_group_list;
        for (var e in r) if (r[e].attr_group_id == o) for (var s in r[e].attr_list) r[e].attr_list[s].attr_id == i ? r[e].attr_list[s].checked = !0 : r[e].attr_list[s].checked = !1;
        for (var d = r.length, n = [], c = [], _ = 0; _ < d; _++) {
            var l = r[_].attr_list, g = l.length;
            for (e = 0; e < g; e++) if (1 == l[e].checked) {
                var u = {
                    attr_group_id: r[_].attr_group_id,
                    attr_group_name: r[_].attr_group_name,
                    attr_id: l[e].attr_id,
                    attr_name: l[e].attr_name
                };
                c.push(u);
                var p = {
                    attr_id: l[e].attr_id,
                    attr_name: l[e].attr_name
                };
                n.push(p);
            }
        }
        for (var h = a.data.attr, f = h.length, m = 0; m < f; m++) if (JSON.stringify(h[m].attr_list) == JSON.stringify(n)) var v = h[m].price;
        a.setData({
            attr_group_list: r,
            check_goods_price: v,
            check_attr_list: n
        });
        var k = a.data.carGoods, q = a.data.carGoods.length, S = a.data.goods, D = 0;
        for (_ = 0; _ < q; _++) if (k[_].goods_id == S.id && JSON.stringify(k[_].attr) == JSON.stringify(c)) {
            D = k[_].num;
            break;
        }
        a.setData({
            check_num: D
        });
    },
    onConfirm: function(t) {
        var a = this, o = (a.data.attr_group, a.data.attr_group_list), i = [];
        for (var r in o) {
            var e = !1;
            for (var s in o[r].attr_list) if (o[r].attr_list[s].checked) {
                e = {
                    attr_id: o[r].attr_list[s].attr_id,
                    attr_name: o[r].attr_list[s].attr_name
                };
                break;
            }
            if (!e) return wx.showToast({
                title: "请选择" + o[r].attr_group_name,
                image: "/images/icon-warning.png"
            }), !0;
            i.push({
                attr_group_id: o[r].attr_group_id,
                attr_group_name: o[r].attr_group_name,
                attr_id: e.attr_id,
                attr_name: e.attr_name
            });
        }
        a.setData({
            attr_group_list: o
        });
        e = a.data.attr;
        for (var d = a.data.check_attr_list, n = e.length, c = 0; c < n; c++) if (JSON.stringify(e[c].attr_list) == JSON.stringify(d)) var _ = e[c].num;
        var l = a.data.data, g = a.data.quick_list, u = g.length, p = [];
        for (r = 0; r < u; r++) for (var h = g[r].goods, f = h.length, m = 0; m < f; m++) p.push(h[m]);
        var v = p.length, k = [];
        for (c = 0; c < v; c++) p[c].id == l.id && k.push(p[c]);
        a.setData({
            checked_attr_list: i
        });
        n = i.length;
        var q = [];
        for (m = 0; m < n; m++) q.push(i[m].attr_id);
        var S = a.data.carGoods, D = a.data.check_goods_price;
        if (0 == D) var w = parseFloat(k[0].price); else w = parseFloat(D);
        var x = {
            goods_id: k[0].id,
            num: 1,
            goods_name: k[0].name,
            attr: i,
            goods_price: w,
            price: w
        }, F = !0, G = 0;
        if ((u = S.length) <= 0) G = 1, S.push(x); else {
            for (m = 0; m < u; m++) S[m].goods_id == k[0].id && JSON.stringify(S[m].attr) == JSON.stringify(i) && (S[m].num += 1, 
            G = S[m].num, F = !1);
            F && (S.push(x), G = 1);
        }
        if (_ < G) {
            wx.showToast({
                title: "商品库存不足",
                image: "/images/icon-warning.png"
            }), G = _;
            for (m = 0; m < u; m++) S[m].goods_id == k[0].id && JSON.stringify(S[m].attr) == JSON.stringify(i) && (S[m].num = _);
        } else {
            for (m = 0; m < u; m++) S[m].goods_id == k[0].id && JSON.stringify(S[m].attr) == JSON.stringify(i) && (S[m].goods_price = parseFloat(S[m].goods_price), 
            S[m].goods_price += w, S[m].goods_price = S[m].goods_price.toFixed(2));
            f = k.length;
            for (var y = 0; y < f; y++) k[y].num += 1;
            var O = a.data.total;
            O.total_num += 1, O.total_price = parseFloat(O.total_price), O.total_price += w, 
            O.total_price = O.total_price.toFixed(2);
            var J = a.data.quick_hot_goods_lists, N = J.find(function(t) {
                return t.id == l.id;
            });
            N && (N.num += 1), a.setData({
                quick_hot_goods_lists: J,
                quick_list: g,
                carGoods: S,
                total: O,
                check_num: G
            });
        }
    },
    preventTouchMove: function() {},
    hideModal: function() {
        this.setData({
            showModal: !1
        });
    },
    guigejian: function(t) {
        var a = this, o = a.data.data, i = a.data.goods, r = i.id, e = a.data.quick_list, s = e.length, d = [], n = a.data.attr_group_list, c = [];
        for (var _ in n) {
            var l = !1;
            for (var g in n[_].attr_list) if (n[_].attr_list[g].checked) {
                l = {
                    attr_id: n[_].attr_list[g].attr_id,
                    attr_name: n[_].attr_list[g].attr_name
                };
                break;
            }
            if (!l) return wx.showToast({
                title: "请选择" + n[_].attr_group_name,
                image: "/images/icon-warning.png"
            }), !0;
            c.push({
                attr_group_id: n[_].attr_group_id,
                attr_group_name: n[_].attr_group_name,
                attr_id: l.attr_id,
                attr_name: l.attr_name
            });
        }
        var u = a.data.check_num;
        for (_ = 0; _ < s; _++) for (var p = e[_].goods, h = p.length, f = 0; f < h; f++) d.push(p[f]);
        for (var m = d.length, v = [], k = 0; k < m; k++) i.id == d[k].id && v.push(d[k]);
        for (var q = v.length, S = 0; S < q; S++) v[S].num -= 1;
        var D = a.data.quick_hot_goods_lists, w = D.find(function(t) {
            return t.id == o.id;
        });
        w && (w.num -= 1), a.setData({
            quick_hot_goods_lists: D,
            quick_list: e
        });
        var x = a.data.carGoods;
        for (s = x.length, f = 0; f < s; f++) x[f].goods_id == r && JSON.stringify(x[f].attr) == JSON.stringify(c) && (x[f].num -= 1, 
        u = x[f].num);
        a.setData({
            check_num: u
        });
        var F = a.data.total;
        F.total_num -= 1;
        var G = a.data.check_goods_price;
        G = parseFloat(G), F.total_price = parseFloat(F.total_price), F.total_price -= G, 
        F.total_price = F.total_price.toFixed(2), a.setData({
            total: F
        }), 0 == F.total_num && a.setData({
            goodsModel: !1
        });
    },
    goodsModel: function(t) {
        this.data.carGoods;
        var a = this.data.goodsModel;
        a ? this.setData({
            goodsModel: !1
        }) : this.setData({
            goodsModel: !0
        });
    },
    hideGoodsModel: function() {
        this.setData({
            goodsModel: !1
        });
    },
    tianjia: function(t) {
        for (var a = this, o = t.currentTarget.dataset, i = a.data.quick_list, r = i.length, e = [], s = 0; s < r; s++) for (var d = i[s].goods, n = d.length, c = 0; c < n; c++) e.push(d[c]);
        for (var _ = e.length, l = [], g = 0; g < _; g++) e[g].id == o.id && l.push(e[g]);
        var u = JSON.parse(l[0].attr);
        if (1 == u.length) {
            var p = (m = a.data.carGoods).find(function(t) {
                return t.goods_id == o.id;
            });
            if (p.num += 1, p.num > u[0].num) return wx.showToast({
                title: "商品库存不足",
                image: "/images/icon-warning.png"
            }), void (p.num -= 1);
            p.goods_price = parseFloat(p.goods_price), o.price = parseFloat(o.price), p.goods_price += o.price, 
            p.goods_price = p.goods_price.toFixed(2);
            for (var h = l.length, f = 0; f < h; f++) l[f].num += 1;
        } else {
            for (h = l.length, f = 0; f < h; f++) l[f].num += 1;
            var m, v = (m = a.data.carGoods).length, k = [];
            for (c = 0; c < v; c++) if (o.index == c) {
                var q = m[c].attr, S = q.length;
                for (s = 0; s < S; s++) {
                    var D = {
                        attr_id: q[s].attr_id,
                        attr_name: q[s].attr_name
                    };
                    k.push(D);
                }
            }
            var w = u.length;
            for (s = 0; s < w; s++) if (JSON.stringify(u[s].attr_list) == JSON.stringify(k)) var x = u[s].num;
            for (c = 0; c < v; c++) if (o.index == c && (m[c].num += 1, m[c].goods_price = parseFloat(m[c].goods_price), 
            o.price = parseFloat(o.price), m[c].goods_price += o.price, m[c].goods_price = m[c].goods_price.toFixed(2), 
            m[c].num > x)) {
                wx.showToast({
                    title: "商品库存不足",
                    image: "/images/icon-warning.png"
                }), m[c].num -= 1;
                for (h = l.length, f = 0; f < h; f++) l[f].num -= 1;
                return m[c].goods_price -= o.price, void (m[c].goods_price = m[c].goods_price.toFixed(2));
            }
        }
        var F = a.data.total;
        F.total_num += 1, F.total_price = parseFloat(F.total_price), o.price = parseFloat(o.price), 
        F.total_price += o.price, F.total_price = F.total_price.toFixed(2);
        var G = a.data.quick_hot_goods_lists, y = G.find(function(t) {
            return t.id == o.id;
        });
        y && (y.num += 1), a.setData({
            quick_list: i,
            carGoods: m,
            total: F,
            quick_hot_goods_lists: G
        });
    },
    jianshao: function(t) {
        for (var a = this, o = t.currentTarget.dataset, i = a.data.carGoods, r = i.length, e = 0; e < r; e++) if (o.index == e) {
            if (i[e].num <= 0) return;
            i[e].num -= 1, o.price = parseFloat(o.price), i[e].goods_price = parseFloat(i[e].goods_price), 
            i[e].goods_price -= o.price, i[e].goods_price = i[e].goods_price.toFixed(2);
        }
        a.setData({
            carGoods: i
        });
        for (var s = a.data.quick_list, d = (r = s.length, []), n = 0; n < r; n++) {
            var c = s[n].goods, _ = c.length;
            for (e = 0; e < _; e++) d.push(c[e]);
        }
        var l = [], g = d.length;
        for (e = 0; e < g; e++) o.id == d[e].id && l.push(d[e]);
        for (var u = l.length, p = 0; p < u; p++) l[p].id == o.id && (l[p].num -= 1);
        a.setData({
            quick_list: s
        });
        var h = a.data.total;
        h.total_num -= 1, h.total_price = parseFloat(h.total_price), h.total_price -= o.price, 
        h.total_price = h.total_price.toFixed(2);
        var f = a.data.quick_hot_goods_lists, m = f.find(function(t) {
            return t.id == o.id;
        });
        m && (m.num -= 1), a.setData({
            total: h,
            quick_hot_goods_lists: f
        }), 0 == h.total_num && a.setData({
            goodsModel: !1
        });
    },
    clearCar: function(t) {
        for (var a = this, o = (t.currentTarget.dataset, a.data.carGoods), i = o.length, r = 0; r < i; r++) o[r].num = 0, 
        o[r].goods_price = 0;
        var e = a.data.total;
        e.total_num = 0, e.total_price = 0, a.setData({
            total: e,
            carGoods: o,
            goodsModel: !1
        });
        var s = a.data.quick_list;
        for (i = s.length, r = 0; r < i; r++) for (var d = s[r].goods, n = d.length, c = 0; c < n; c++) d[c].num = 0;
        a.data.check_num;
        for (var _ = a.data.quick_hot_goods_lists, l = _.length, g = 0; g < l; g++) _[g].num = 0;
        a.setData({
            quick_list: s,
            check_num: 0,
            quick_hot_goods_lists: _
        }), wx.getStorageSync("item") && wx.removeStorageSync("item");
    },
    buynow: function(t) {
        var a = this.data.carGoods;
        this.data.goodsModel;
        this.setData({
            goodsModel: !1
        });
        for (var o = a.length, i = [], r = [], e = 0; e < o; e++) 0 != a[e].num && (r = {
            id: a[e].goods_id,
            num: a[e].num,
            attr: a[e].attr
        }, i.push(r));
        wx.navigateTo({
            url: "/pages/order-submit/order-submit?cart_list=" + JSON.stringify(i)
        });
    }
});