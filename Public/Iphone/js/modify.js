"use strict";

function Modify() {
    this.name = 'Modify';
    this.flag = 0;  // 个人认证0， 企业认证1
}

Modify.prototype.choice = function(flag) {
    if (flag == 0) {
        $('#selectModify').val(0);
        $("#gerenmo a").addClass('current');
        $("#qiyemo a").removeClass('current');
        $('.selectCom').hide();
        $('#namemsg').html('真实姓名设置后不能修改，并且与提现账户名相同');
        $('#senior').hide();
        $('.noqiye').hide();
        this.flag = 0;
    } else {
        $('#selectModify').val(1);
        $("#gerenmo a").removeClass('current');
        $("#qiyemo a").addClass('current');
        $('.selectCom').show();
        $('#namemsg').html('真实姓名设置后不能修改');
        $('#senior').show();
        $('.noqiye').show();
        this.flag = 1;
    }
};

Modify.prototype.auth = function(msg, id) {
    console.log(id);
    if ($('#' + id).val().length < 2) {
        $('#' + id + 'msg').html("<font style='color:red'>"+ msg +"</font>");
        $('#' + id + 'msg').prev().html("×");
        return false;
    } else {
        if (id == 'nick') {
			var nick_result = $.ajax({
				url: '/ajax_user/nickexist/nick/' + encodeURIComponent($('#' + id).val()),
				data: {},
				cache : false,
                async : false,
                type : 'GET',
                dataType : "json",
				success : function(d){
				    if (d.status == 1) {
				        $('#' + id + 'msg').html("");
				        $('#' + id + 'msg').prev().html("√");
				    } else {
				        $('#' + id + 'msg').html("<font style='color:red'>"+ d.msg +"</font>");
				        $('#' + id + 'msg').prev().html("×");
				    }
				}
			});
			nick_result = JSON.parse(nick_result.responseText);
			if (nick_result.status != 1) {
				return false;
			}
        } else if(id == 'idcard') {
        	if($('#cardtype').val() == 1){
        		if ($('#' + id).val().length < 15) {
        			$('#' + id + 'msg').html("<font style='color:red'>"+ d.msg +"</font>");
			    	$('#' + id + 'msg').prev().html("×");
			    	return false;
			    } else {
					var mo_result = $.ajax({
						url : '/ajax_user/idcardExist/idcard/' + encodeURIComponent($('#' + id).val()),
						data: {},
						cache : false,
						async : false,
						type : 'GET',
						dataType : "json",
						success : function(d){
							if (d.status == 1) {
								$('#' + id + 'msg').html("");
								$('#' + id + 'msg').prev().html("√");
							} else {
								$('#' + id + 'msg').html("<font style='color:red'>"+ d.msg +"</font>");
								$('#' + id + 'msg').prev().html("×");
								return false;
							}
						}
					});
			    }
				mo_result = JSON.parse(mo_result.responseText);
				if (mo_result.status != 1) {
					return false;
				}
        	} else {
        		if ($('#' + id).val().length < 7) {
        			$('#' + id + 'msg').html("<font style='color:red'>"+ d.msg +"</font>");
			    	$('#' + id + 'msg').prev().html("×");
			    	return false;
			    } else {
			    	$('#' + id + 'msg').html("");
			        $('#' + id + 'msg').prev().html("√");
			    }
        	}
        } else if (id == 'mo') {
        	if ($('#' + id).val().length != 11) {
    			$('#' + id + 'msg').html("<font style='color:red'>"+ msg +"</font>");
		    	$('#' + id + 'msg').prev().html("×");
				$("#msgpcode a.one").removeClass('none');
				$("#msgpcode a.two").addClass('none');
        		return false;
        	}
        	var mo_result = $.ajax({
        		url : '/ajax_user/moexist/mo/' + encodeURIComponent($('#' + id).val()),
				data: {},
				cache : false,
                async : false,
                type : 'GET',
                dataType : "json",
        		success : function(d){
	        		if (d.status == 1) {
	        			$('#' + id + 'msg').html("");
	        			$('#' + id + 'msg').prev().html("√");
						$("#msgpcode a.two").removeClass('none');
						$("#msgpcode a.one").addClass('none');
	        		} else {
	        			$('#' + id + 'msg').html("<font style='color:red'>"+ d.msg +"</font>");
	        			$('#' + id + 'msg').prev().html("×");
						$("#msgpcode a.one").removeClass('none');
						$("#msgpcode a.two").addClass('none');
						return false;
	        		}
        		}
        	});
        	mo_result = JSON.parse(mo_result.responseText);
        	if (mo_result.status != 1) {
        		return false;
        	}
        }else if(id == 'code'){
			if($('#code').val()==""){
				$('#' + id + 'msg').html("<font style='color:red'>"+ msg +"</font>");
				$('#' + id + 'msg').prev().html("×");
				return false;
			}else{
				$('#' + id + 'msg').html("");
				$('#' + id + 'msg').prev().html("√");
			}
		} else {
        	$('#' + id + 'msg').html("");
        	$('#' + id + 'msg').prev().html("√");
        }
    }
    return true;
};

Modify.prototype.confirm = function() {

	var isset_mo = $('#isset_mo').val();
	if (this.flag == 1) {
		if (!Modify.auth('请输入正确的企业名称', 'qiye')) {
			return false;
		} else if (!Modify.auth('请输入真实有效的企业营业执照编号', 'zhizhao')) {

		} else if (!Modify.auth('请输入企业的详细地址', 'qiyeaddress')) {
			return false;
		} else if (!Modify.auth('请输入法人姓名', 'faren')) {
			return false;
		}
	}

	if (isset_mo == 0) {
		// if (!Modify.auth('请输入您的昵称', 'nick')) {
		// 	return false;
		// } else
        if (!Modify.auth('请输入真实姓名', 'name')) {
			return false;
		} else if (!Modify.auth('请输入正确的证件号', 'idcard')) {
			return false;
		} else if (!Modify.auth('请输入正确的手机号', 'mo')) {
			return false;
		} else if (Modify.checkedcapture()){
            return false;
        } else if (!Modify.auth('验证码不能为空', 'code')) {
			return false;
		}

	} else {
		if (!Modify.auth('请输入您的昵称', 'nick')) {
			return false;
		} else if (!Modify.auth('请输入真实姓名', 'name')) {
			return false;
		} else if (!Modify.auth('请输入正确的证件号', 'idcard')) {
			return false;
		}
	}
	return true;
};

Modify.prototype.reflush = function(){
    $('a.flush').html("点击刷新");
    $('span.capture').removeClass("none");
    $('img.capture').attr('src','/user_assets/getcapture?v='+Math.random());
}

Modify.prototype.checkedcapture=function(){
    $.ajax({
        url:'/ajax/checkCaptcha',
        type:'post',
        data:{captcha:$('#img_captcha').val()},
        success:function(res){
            var res=eval('(' + res + ')');
            if(res.status==-1){
                $("#capturemsg").addClass("msg_i");
                $("#capturemsg").html("i");
                $("#msgpcode a.one").removeClass('none');
                $("#msgpcode a.two").addClass('none');
                return false;
            }else{
                $("#capturemsg").addClass("msg_i");
                $("#capturemsg").html("√");
                $("#msgpcode a.two").removeClass('none');
                $("#msgpcode a.one").addClass('none');
                return true;
            }
        }
    });
}

var Modify = new Modify();

$("#img_captcha").on('blur',function(){
    Modify.checkedcapture();
});
