refreshImgVerifyCode = function (imgId) {
    var src = $("#" + imgId).attr("src");
    var idx = src.indexOf("&");

    if (idx > 0)
        src = src.substring(0, idx);

    $("#" + imgId).attr("src", src + "&r=" + Math.random());
}