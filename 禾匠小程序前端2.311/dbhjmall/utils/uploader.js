module.exports = {
    upload: function(t) {
        console.log("user args:", t);
        var o = getApp();
        function a(e) {
            "function" == typeof t.start && t.start(e), console.log("submit args:", t), wx.uploadFile({
                url: t.url || o.api.default.upload_image,
                filePath: e.path,
                name: t.name || "image",
                formData: t.data || {},
                success: function(e) {
                    console.log("--uploadFile--"), console.log(e), 200 == e.statusCode ? "function" == typeof t.success && (e.data = JSON.parse(e.data), 
                    t.success(e.data)) : "function" == typeof t.error && t.error("上传错误：" + e.statusCode + "；" + e.data), 
                    t.complete();
                },
                fail: function(e) {
                    "function" == typeof t.error && t.error(e.errMsg), t.complete();
                }
            });
        }
        (t = t || {}).complete = t.complete || function() {}, t.data = t.data || {}, t.data._uniacid = t.data._uniacid || o.siteInfo.uniacid, 
        t.data._acid = t.data._acid || o.siteInfo.acid, wx.chooseImage({
            count: 1,
            success: function(e) {
                if (console.log("--chooseImage--"), console.log(e), e.tempFiles && 0 < e.tempFiles.length) {
                    var o = e.tempFiles[0];
                    a(o);
                } else "function" == typeof t.error && t.error("请选择文件"), t.complete();
            },
            fail: function(e) {
                "function" == typeof t.error && (t.error("请选择文件"), t.complete());
            }
        });
    }
};