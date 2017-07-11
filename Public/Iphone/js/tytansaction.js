function ty(){}
 
ty.prototype = {
    
    init: function(){
        var obj = this;
        $('.cny2trmb').bind('click', function(){
            obj.cny2yrmbSubmit();
        });
        
        $('.yrmb2cny').bind('click', function(){
            obj.yrmb2cnySubmit();
        });
        
        $('#ty_number').bind('keyup', function(){
            var k = $.trim($(this).val()); 
            var reg = /^\d+(\.\d+|\.)?$/;
            var flag = reg.test(k);
            if(!flag) {
                $(this).val('');
                return false;
            }
            if(k.indexOf('.') >= 0 && k.substr(k.indexOf('.')+1).length >= 3){
                var val = $(this).val();
                $(this).val(val.substring(0,val.indexOf(".") + 3));
                return false;
            }
            $("#yrmb2cny").text(k);
        });
        $('#yrmbNum').bind('keyup', function(){
            var k = $.trim($(this).val());
            var reg = /^\d+(\.\d+|\.)?$/;
            var flag = reg.test(k);
            if(!flag) {
                $(this).val('');
                return false;
            }
            if(k.indexOf('.') >= 0 && k.substr(k.indexOf('.')+1).length >= 3){
                var val = $(this).val();
                $(this).val(val.substring(0,val.indexOf(".") + 5)); 
                return false;
            }
            /*
            var n = String(k*0.9999);
            if(n.indexOf('.') < 0){
                n = n+'.00'; 
            }
            //$("#cny2yrmb").text(n.substring(0,n.indexOf(".") + 3));
           */
            $("#cny2yrmb").text(k);
        });
        
        $('.ali').bind('click', function(){
            $('.ali').css({
                'background':'#E1E1DF',
                'border-top':'2px solid #E1E1DF'
            });
            $(this).css({
                'background':'white',
                'border-top':'2px solid red'
            });
            if($(this).attr('name') == 'a'){
                $('#tagContent1').hide();
                $('#tagContent0').show();
            }else{
                $('#tagContent1').show();
                $('#tagContent0').hide();
            }
        });
  
        setInterval(function(){
            obj.ajaxRemind();
        },5000);
    },
    
    cny2yrmbSubmit:function(){
        
        var reg = /^\d+(\.\d{1,2})?$/;
        var number = $.trim($("#ty_number").val());
        var flag = reg.test(number);
        var pwdtrade = $("#pwdtrade").val();
        var nu = $("#yrmb2cny").text();
        if((!isNaN(number)) && number!='' && flag && nu > 0){
            this.ajaxRuquest('/user_tytransaction/transaction/flag/cny2yrmb/',{
                number:number,
                pwdtrade:pwdtrade
            });
        }else{
            Layer.alert('购买数量不正确或交易密码不正确', function(flag) {
                });
        }
        
    },
    
    yrmb2cnySubmit:function(){ 

        var number = $.trim($("#yrmbNum").val());
        var pwdtrade = $("#yrmbPwd").val();
        var reg = /^\d+(\.\d{1,4})?$/;
        var flag = reg.test(number);
        var nu = $("#cny2yrmb").text();

        if((!isNaN(number)) && pwdtrade!='' && flag && nu > 0){
            this.ajaxRuquest('/user_tytransaction/transaction/flag/yrmb2cny/',{
                number:number,
                pwdtrade:pwdtrade
            });
        }else{
            Layer.alert('兑换数量不正确或交易密码不正确', function(flag) {
                });
        }
        
    },
    
    ajaxRuquest:function(url,params) {
        $.post(url,params,function(data){
            var msg = eval('(' + data + ')');
            if(msg.flag == 0){
                Layer.alert(msg.msg, function(flag) {
                    });
                return false;
            }
            if(msg.flag == 1){
                Layer.alert(msg.msg, function(flag) {
                    if(flag == 1) window.location.reload();
                });
                return false;
            }
        }) 
    },
    
    ajaxRemind:function(){
        $.get('/user_tytransaction/ajaxEmail/', function(d){
        }, 'json');
    }
    
    
}

var ty = new ty();
ty.init();


