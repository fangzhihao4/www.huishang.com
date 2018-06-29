var api = require("../../api.js"), area_picker = require("../../area-picker/area-picker.js"), app = getApp();

Page({
    data: {
        name: "",
        mobile: "",
        detail: "",
        district: null
    },
    onLoad: function(t) {
        app.pageOnLoad(this);
        var a = this;
        a.getDistrictData(function(t) {
            area_picker.init({
                page: a,
                data: t
            });
        }), a.setData({
            address_id: t.id
        }), t.id && (wx.showLoading({
            title: "正在加载",
            mask: !0
        }), app.request({
            url: api.user.address_detail,
            data: {
                id: t.id
            },
            success: function(t) {
                wx.hideLoading(), 0 == t.code && a.setData(t.data);
            }
        }));
    },
    getDistrictData: function(a) {
        var i = wx.getStorageSync("district");
        if (!i) return wx.showLoading({
            title: "正在加载",
            mask: !0
        }), void app.request({
            url: api.default.district,
            success: function(t) {
                wx.hideLoading(), 0 == t.code && (i = t.data, wx.setStorageSync("district", i), 
                a(i));
            }
        });
        a(i);
    },
    onAreaPickerConfirm: function(t) {
        this.setData({
            district: {
                province: {
                    id: t[0].id,
                    name: t[0].name
                },
                city: {
                    id: t[1].id,
                    name: t[1].name
                },
                district: {
                    id: t[2].id,
                    name: t[2].name
                }
            }
        });
    },
    saveAddress: function() {
        var t = this, a = /^(\d{3,4}-\d{6,9})$/;
        if (console.log(a.test(t.data.mobile)), !/^([0-9]{6,12})$/.test(t.data.mobile) && !a.test(t.data.mobile)) return wx.showToast({
            title: "联系电话格式不正确",
            image: "/images/icon-warning.png"
        }), !1;
        wx.showLoading({
            title: "正在保存",
            mask: !0
        });
        var i = t.data.district;
        i || (i = {
            province: {
                id: ""
            },
            city: {
                id: ""
            },
            district: {
                id: ""
            }
        }), app.request({
            url: api.user.address_save,
            method: "post",
            data: {
                address_id: t.data.address_id || "",
                name: t.data.name,
                mobile: t.data.mobile,
                province_id: i.province.id,
                city_id: i.city.id,
                district_id: i.district.id,
                detail: t.data.detail
            },
            success: function(t) {
                wx.hideLoading(), 0 == t.code && wx.showModal({
                    title: "提示",
                    content: t.msg,
                    showCancel: !1,
                    success: function(t) {
                        t.confirm && wx.navigateBack();
                    }
                }), 1 == t.code && wx.showToast({
                    title: t.msg,
                    image: "/images/icon-warning.png"
                });
            }
        });
    },
    inputBlur: function(t) {
        var a = '{"' + t.currentTarget.dataset.name + '":"' + t.detail.value + '"}';
        this.setData(JSON.parse(a));
    },
    getWechatAddress: function(t) {
        var i = this;
        wx.chooseAddress({
            success: function(a) {
                "chooseAddress:ok" == a.errMsg && (wx.showLoading(), app.request({
                    url: api.user.wechat_district,
                    data: {
                        national_code: a.nationalCode,
                        province_name: a.provinceName,
                        city_name: a.cityName,
                        county_name: a.countyName
                    },
                    success: function(t) {
                        1 == t.code && wx.showModal({
                            title: "提示",
                            content: t.msg,
                            showCancel: !1
                        }), i.setData({
                            name: a.userName || "",
                            mobile: a.telNumber || "",
                            detail: a.detailInfo || "",
                            district: t.data.district
                        });
                    },
                    complete: function() {
                        wx.hideLoading();
                    }
                }));
            }
        });
    },
    onReady: function() {},
    onShow: function() {}
});