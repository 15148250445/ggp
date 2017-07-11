//获取价格间隔时间。
con_rmb_ajax = 10;

coin = {name:'btc', sign:'', to:'cny'};

var coinpricemsg = '此出价为1个币的价格';
var ybycoinpricemsg  = '此出价为1个币的价格';
var inchange = false;

var cointrustwidth =  {'whc':0.011,'btc': 5, 'ltc': 0.026, 'ybc': 0.026, 'doge': 0.00001, 'yby': 0.00001, 'fct': 0.08, 'vap': 0.08, 'axf': 0.008, 'irc': 0.01, 'vpn': 0.0001, 'trmb': 0.0016, 'abc': 0.008, 'cic': 0.0001, 'smc': 0.00008, 'mc': 0.0001, 'xsi': 0.001, 'rhc': 0.0008, 'gooc': 0.0002, 'tmc': 0.0032, 'ozc': 0.016, 'gp': 0.0001, 'ytd': 0.0008, 'mryc': 0.0006, 'shc': 0.02, 'lec': 0.0005, 'jc': 0.0005, 'wtc': 0.0026, 'mxi': 0.0001, 'lsk': 0.004, 'maid': 0.0026, 'hxi': 0.008, 'lmc': 0.0012, 'tzc': 0.008, 'a0101': 0.02, 'xkc':0.0032, 'bte':0.004, 'ans':0.004,'udb':0.00004,'game':0.004,'dct':0.01,'zec':1,'mcc':0.00004,'arc':0.0004};
//买入总价
function sumbuy(rate,point){
    var fee = 0;
    var point_cny = point;
    if(coin.to == 'cny'){
        point_cny = 2;
    }
    var sumprice = parseFloat(accMul(parseFloat($('#coinpricein').val()), parseFloat($('#numberin').val())));
    sumprice = formatfloat(sumprice, point_cny, 0);
    if(rate > 0){
        fee = formatfloat(accMul($('#numberin').val(), rate), 6, 0);
        $('#feebuy').html(fee);
    }
    var cointo = $('.cointo').val();
    $('#coinin_sumprice').val(sumprice+cointo);
}
//卖出总价
function sumsale(rate,point){
    var fee = 0;
    var point_cny = point;
    if(coin.to == 'cny'){
        point_cny = 2;
    }
    if(rate != 0){
        fee = formatfloat(accMul(accMul($('#coinpriceout').val(),$('#numberout').val()), rate), point, 0);
        $('#fee').html(fee);
    }
    var sumprice = parseFloat(accSub(parseFloat(accMul(parseFloat($('#coinpriceout').val()), parseFloat($('#numberout').val()))),fee));
    sumprice = formatfloat(sumprice, point_cny, 0);
    var cointo = $('.cointo').val();
    $('#coinout_sumprice').val(sumprice+cointo);
}

//委托
function coinsum(limit){
    //触屏版显示5调挂单数据
    if(limit >=30){
        limit = 5;
    }
    $.get('/json/'+coin.name+'_sum?t=' + Math.random(), function(data){
        if(!data || "fail" == data.msg){
            return false;
        }
        coininfo = coin.name.split("2");
        b4width =  cointrustwidth[coininfo[0]];

        // get area price
        var area_price;
        if ('cny' != coininfo[1]) {
            var returnJson = $.ajax({
                type: "post",
                url: "/json/" + coininfo[1] + '2cny_order?t=' + Math.random(),
                cache:false,
                async:false,
                dataType: "json",
                success: function(order) {
                    area_price = order['d'][0]['p'];
                }
            });
        }

        // rmbprice = coininfo[1]=='ybc'?ybcprice:btcprice;
        rmbprice = area_price;
        var buy_niceprice = (data['sale'].length==0)?((data['buy'].length==0)?0:data['buy'][0].p):data['sale'][0].p;
        var sale_niceprice = (data['buy'].length==0)?((data['sale'].length==0)?0:data['sale'][0].p):data['buy'][0].p;
        $('#24h_buy').html(buy_niceprice);
        $('#24h_sell').html(sale_niceprice);
        $('#coinsale_nice').html(sale_niceprice);
        $('#rmbsale_nice').html(getNum(accMul(sale_niceprice*rmbprice,1)));
        $('#coinbuy_nice').html(buy_niceprice);
        $('#rmbbuy_nice').html(getNum(accMul(buy_niceprice*rmbprice,1)));
        //触屏交易买卖页面的挂单显示
        if(limit == 5) {
            var colorhtmlbuy = '';
            var colorhtmlsale = '';
            for (var type in data) {
                var d = data[type];
                var html = '';
                var idhtml = '';
                if (type == 'sale') {
                    var dsort = [];
                    var dmax = d.length > limit ? limit : d.length;
                    for (var j = dmax; j > 0; j--) dsort[limit - j] = d[j - 1];
                    d = dsort;
                }
                for (var i in d) {
                    //if(limit && i == limit) break;
                    if (i == 5) break;
                    var num = parseFloat(d[i].n), width = num * b4width > 80 ? 80 : num * b4width;      //挂单进度
                    i = parseInt(i);
                    if (type == 'buy') {
                        idhtml = '<td class="j-colorR" >买(' + (i + 1) + ')</td>';
                    } else {
                        idhtml = '<td class="j-colorG">卖(' + (dmax--) + ')</td>';
                    }

                    //挂单数量转换
                   if(d[i].n < 10000){
                       var nums = d[i].n;
                   }
                    if(d[i].n >= 10000 &&d[i].n < 100000000){
                        var nums = d[i].n/10000;    //转换为万结尾
                        var nums = parseFloat(nums.toFixed(2))+'万';
                    }
                    if(d[i].n >= 100000000 ){
                        var nums = d[i].n/100000000;    //转换为亿结尾
                        var nums = parseFloat(nums.toFixed(2))+'亿';
                    }
                    //因为走手机模式，sign被type替换，所以下面用coin.type
                    html += '<tr>' + idhtml + '<td>' + d[i].p + '</td><td>' + coin.sign + nums + '</td>';
                    html += '</tr>';
                    var cls = (type == 'buy') ? 'j-bg-R' : 'j-bg-G';
                    //添加颜色,注意顺序啊，先买后卖，所以分开了
                    if (type == 'buy') {
                        colorhtmlbuy += '<tr class=' + cls + ' style="width:' + width + 'px"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>';
                    } else {
                        colorhtmlsale += '<tr class=' + cls + ' style="width:' + width + 'px"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>';
                    }
                }
                //若无数据则提示暂无挂单
                if(html == '' && type == 'sale'){
                    html = '<tr><td colspan="3" style="text-align:center">暂无卖单</td></tr>'
                }
                if(html == '' && type == 'buy'){
                    html = '<tr><td colspan="3" style="text-align:center">暂无买单</td></tr>'
                }

                $('#coin' + type + 'list').html(html);
                $('#coin_' + type + 'one').html(typeof d[0] == 'undefined' ? 0 : parseFloat(d[0].p));
            }
            $('#colorhtml').html(colorhtmlsale + '<tr class="j-bg-c"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>' + colorhtmlbuy);   //挂单进度条
            if(colorhtmlsale != ''){
                $('.moretrust').css('display','block');
            }
            msg = (coininfo[0] == 'yby')?ybycoinpricemsg:coinpricemsg;
            if($('#coinpricein').val() == msg) {
                $('#coinpricein').val(buy_niceprice);
                coinbuy_max(buy_niceprice,0,coininfo[1]);
            }
            if($('#coinpriceout').val()== msg)
            $('#coinpriceout').val(sale_niceprice);
        }
        //更多委托信息显示
        if(limit !=5) {
         var colorhtmlbuy = '';  //买进度条显示
         var colorhtmlsale = ''; //卖进度条显示
         for (var type in data) {
         var d = data[type];
         var html = '';
         var idhtml = '';
         if (type == 'sale') {
         var dsort = [];
         var dmax = d.length > limit ? limit : d.length;
         for (var j = dmax; j > 0; j--) dsort[limit - j] = d[j - 1];
         d = dsort;
         }
         for (var i in d) {
         if(limit && i == limit) break;
         var num = parseFloat(d[i].n), width = num * b4width > 80 ? 80 : num * b4width;      //挂单进度
         i = parseInt(i);
         //数据加载中隐藏
         //$('.Wf-div3 span').css('display','none');
         if (type == 'buy') {
         idhtml = '<tr class="smallH"></tr><tr><td class="color_r" >买(' + (i + 1) + ')</td>';
         } else {
         idhtml = '<tr class="smallH"></tr><tr><td class="color_g">卖(' + (dmax--) + ')</td>';
         }
         //挂单数量转换
         if(d[i].n < 10000){
             var nums = d[i].n;
         }
         if(d[i].n >= 10000 &&d[i].n < 100000000){
             var nums = d[i].n/10000;    //转换为万结尾
             var nums = parseFloat(nums.toFixed(2))+'万';
         }
         if(d[i].n >= 100000000 ){
             var nums = d[i].n/100000000;    //转换为亿结尾
             var nums = parseFloat(nums.toFixed(2))+'亿';
         }
         //因为走手机模式，sign被type替换，所以下面用coin.type
         html += idhtml + '<td style="width: 1.3rem">' + d[i].p + '</td><td>' +coin.sign+ nums + '</td>';
         html += '</tr>';
         //添加颜色,注意顺序啊，先买后卖，所以分开了
         if (type == 'buy') {
         colorhtmlbuy += '<tr class="smallH"></tr><tr style="width:' + width + 'px"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>';
         } else {
         colorhtmlsale += '<tr class="smallH"></tr><tr style="width:'+ width + 'px"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>';
         }
         }
         $('#coin' + type + 'list').html(html);
         }
         $('#colorsalelist').html(colorhtmlsale);   //卖挂单进度条
         $('#colorbuylist').html(colorhtmlbuy );   //买挂单进度条
         }

    }, 'json');
    setTimeout("coinsum(" + limit + ")", 4800);
}
//改
//个人委单
//function mycointrust(circ) {
//  $.get('/ajax/querycointrust/coinname/'+coin.name, function(d){
//      var html = "";
//      //console.log(d.data.length);
//      for (var i = 0; i < d.data.length; i++) {
//          if (d.data[i].flag == 'buy') {
//              html += "<tr><td class='color_wtr'>买</td>";
//          } else {
//              html += "<tr><td class='color_wtg'>卖</td>";
//          }
//          html += "<td  id=\"t_s_"+d.data[i].id+"\">" + accMul(d.data[i].price, 1)+"</td>";
//          html += "<td id=\"t_n_o_" + d.data[i].id +"\">" + d.data[i].number + "</td>";
//          html += "<td >"+d.data[i].diff+"</td>";
//          if (d.data[i].status == 0 || d.data[i].status == 1) {
//              html += "<td id=\"t_opt_" + d.data[i].id + "\"><a class=\"remove\" href=\"javascript:void(0);\" onclick=\"trustcoincancel(" + d.data[i].id + ",'"+coin.name+"')\">撤销</a>";
//          }
//          html += "</td></tr>";
//      }
//      $('#mycointrustlist').html(html);
//      if(d.data.length < 1){
//          $('.much').css('display','block');
//      }else{
//          $('.much').css('display','none');
//      }
//  }, 'json');
//
//  if(circ)
//      setTimeout('mycointrust(true)', 5000);
//}
//取消委托
function trustcoincancel(id,coinname){
    $('#t_opt_' + id).html('撤销中');
    $.get('/ajax/cointrustcancel/id/' + id+'/coin/'+coinname, function(d){
        if(d.status){
            coininfo = coinname.split("2");
            $('#t_n_o_' + id).html('0.000');
            $('#t_s_' + id).html('已撤消');
            //$('#t_s_' + id).attr('class', 'buy cancel');
            $('#t_opt_' + id).html('');
            //更新用户的最大可买可卖
            /*$('#coinsale_max').html(formatfloat(d.data[coininfo[0]+'_over'],4,0));
            $('#coinsale_max').html(coinsale_max(formatfloat(d.data[coininfo[0]+'_over'],4,0), coininfo[0]));*/
            $('#numberout').attr('placeholder',formatfloat(d.data[coininfo[0]+'_over'],4,0));
            $('#numberout').attr('placeholder',coinsale_max(formatfloat(d.data[coininfo[0]+'_over'],4,0), coininfo[0]));
            $('#from_over').html(formatfloat(d.data[coininfo[0]+'_over'],4,0));
            $('#from_lock').html(formatfloat(d.data[coininfo[0]+'_lock'],4,0));
            $('#to_over').html(formatfloat(d.data[coininfo[1]+'_over'],4,0));
            $('#to_lock').html(formatfloat(d.data[coininfo[1]+'_lock'],4,0));
            nice_price = $('#coinpricein').val();
            var bcoinum = d.data[coininfo[1]+'_over'];
            if(bcoinum > 0 && nice_price > 0){
                //$('#coinbuy_max').html(formatfloat(bcoinum / nice_price, 4, 0));
                $('#numberin').attr('placeholder',formatfloat(bcoinum / nice_price, 4, 0));
            }
        }
    }, 'json');
}
//最大可买
function coinbuy_max(price,fcoin,bcoin){
    price = formatfloat(price, 8, 0);
    for(var i in user){
        if(i == bcoin+'_over')
            var bcoinum = user[i];
    }
    if(bcoinum > 0 && price > 0){
        if(fcoin == 'btc'){
            bcoinum = formatfloat(bcoinum*0.999, 4, 0);
        }
        var buy_max = formatfloat(bcoinum / price, 2, 0);
        //$('#coinbuy_max').html(buy_max);
        $('#numberin').attr('placeholder',buy_max);
    }
}
//最大可卖
function coinsale_max(number, coin)
{
    return number;
}


var ii=0;
var tc;
var timecount=60;
function countTime(time){
    ii = time;
    ii--;
    if(ii==-1){
        $("span.retry-send").html('<a href="javascript:"  onclick="sendPhoneCode();" >重新发送</a>');
        //$("#getcode").html('重新发送');
        window.clearTimeout(tc);
    }else{
        $("span.count-time").html(ii);
        tc=setTimeout(function() {
            countTime(ii)
        },1000);
    }
}
function sendPhoneCode(){
    $.post("/ajax/sendmsg2",{type:108,voice:1},function(data){
        var data = eval('('+data+')');
        if(data.err == 0){
            alert(data.msg);
        }else{
            countTime(timecount);
            $("span.retry-send").html('<a href="javascript:"  onclick="sendPhoneCode();" style="background: #ccc;" ><span class="count-time" >'+timecount+'</span>秒后重新发送</a>');
        }
    });
}
function Close(){
    $('.Black').css('display','none');
}

function checks(){
    //$('#pwdtrade'+type).val("");
    var phone_code=$("#phone_code_trade").val();
    if(phone_code == ''){
        alert("请输入正确的短信验证码！");
        return false;
    }
    $.post('/ajax/tradepwdcheck',{phone_code:phone_code},function(res){
        var res = eval('('+res+')');
        if(res.status==2){
            alert("短信验证码错误！");
        }
        if(res.status == 3){
            Close();
        }
    })
}

//委托提交
function tcoinSubmit(coinname, type){
    $('#trustbtn'+type).attr('class', 'submit').attr('onclick', '');
    $.post("/ajax/trustcoin/",{type:type, coin: coinname, price:$('#coinprice'+type).val(), number: $('#number'+type).val(), pwdtrade: encodeURIComponent($('#pwdtrade'+type).val()), hotp: encodeURIComponent($('#hotp'+type).val())},
        function(d){
            $('#trustbtn'+type).attr('class', 'submit').attr('onclick', 'tcoinSubmit("'+coinname+'","'+type+'")');
            if(d.status) for(var i in d.data) user[i] = d.data[i];
            coininfo = coinname.split("2");
            //$('#coinsale_max').html(coinsale_max(user[coininfo[0]+'_over'], coininfo[0]));
            $('#numberout').attr('placeholder',coinsale_max(user[coininfo[0]+'_over'], coininfo[0]));
            $('#from_over').html(formatfloat(user[coininfo[0]+'_over'],4,0));
            $('#from_lock').html(formatfloat(user[coininfo[0]+'_lock'],4,0));
            $('#to_over').html(formatfloat(user[coininfo[1]+'_over'],4,0));
            $('#to_lock').html(formatfloat(user[coininfo[1]+'_lock'],4,0));
            coin_price = $('#coinprice'+type).val();
            var bcoinum = user[coininfo[1]+'_over'];
            if(bcoinum > 0 && coin_price > 0){
                //$('#coinbuy_max').html(formatfloat(bcoinum / coin_price, 4, 0));
                $('#numberin').attr('placeholder',formatfloat(bcoinum / coin_price, 4, 0));
            }

            //2-14新添加代码
            if(d.status=='passwd_error'){
                $('#pwdtrade'+type).val("");
                //显示弹框
                //将提示内容添加到html中
                $('footer').after(d.msg);
            }else if(d.status=='trade_passwd_error'){
                $('#pwdtrade'+type).val("");
                $('.msgnotice').remove();
                $('.msg').after("<div class='msgnotice' style='position: fixed;top: 0;left: 0;height: 0.5rem;background: red;width: 100%;line-height: 0.5rem'><span style='font-size: 0.24rem;color: #fff;display: block;text-align: center;'>"+d.msg+"</span></div>");
                $('.msgnotice').fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500);
            }else{
                $('.msgnotice').remove();
                $('.msg').after("<div class='msgnotice' style='position: fixed;top: 0;left: 0;height: 0.5rem;background: red;width: 100%;line-height: 0.5rem'><span style='font-size: 0.24rem;color: #fff;display: block;text-align: center;'>"+d.msg+"</span></div>");
                $('.msgnotice').fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500);
            }
            /*$('.msgnotice').remove();
            $('.msg').after("<div class='msgnotice' style='position: fixed;top: 0;left: 0;height: 0.5rem;background: red;width: 100%;line-height: 0.5rem'><span style='font-size: 0.24rem;color: #fff;display: block;text-align: center;'>"+d.msg+"</span></div>");
            //暂时隐藏啦，避免闪
            $('.msgnotice').fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500);*/
        }, 'json');
}
function badFloat(num, size){
    if(isNaN(num)) return true;
    num += '';
    if(-1 == num.indexOf('.')) return false;
    var f_arr = num.split('.');
    if(f_arr[1].length > size){
        return true;
    }
    return false;
}
function accSub(arg1,arg2){
    var r1,r2,m,n;
    try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0}
    try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0}
    m=Math.pow(10,Math.max(r1,r2));
    //last modify by deeka
    //动态控制精度长度
    n=(r1>=r2)?r1:r2;
    return ((arg1*m-arg2*m)/m).toFixed(n);
}
function accMul(arg1,arg2) {
    var m=0,s1=arg1.toString(),s2=arg2.toString();
    try{m+=s1.split(".")[1].length}catch(e){}
    try{m+=s2.split(".")[1].length}catch(e){}
    return Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m)
}
function getNum(s)
{
    var str = Math.round(s*10000)/10000;
    return str;
}
//格式化小数
//@f float 传入小数: 123; 1.1234; 1.000001;
//@size int 保留位数
//@add bool 进位: 0舍 1进
function formatfloat(f, size, add){
    f = parseFloat(f);
    if(size == 2) conf = [100,0.01];
    if(size == 3) conf = [1000,0.001];
    if(size == 4) conf = [10000,0.0001];
    if(size == 5) conf = [100000,0.00001];
    if(size == 6) conf = [1000000,0.000001];
    if(size == 7) conf = [10000000,0.0000001];
    if(size == 8) conf = [100000000,0.00000001];
    var ff = Math.floor(f * conf[0]) / conf[0];
    if(add && f > ff) ff += conf[1];
    return isNaN(ff)? 0: ff;
}

function FormatAfterDotNumber( ValueString, nAfterDotNum )
{
    var ValueString,nAfterDotNum ;
    var resultStr,nTen;
    ValueString = ""+ValueString+"";
    strLen = ValueString.length;
    dotPos = ValueString.indexOf(".",0);
    if (dotPos == -1)
    {
        resultStr = ValueString+".";
        for (i=0;i<nAfterDotNum ;i++)
        {
            resultStr = resultStr+"0";
        }
        return resultStr;
    }
    else
    {
        if ((strLen - dotPos - 1) >= nAfterDotNum ){
            nAfter = dotPos + nAfterDotNum  + 1;
            nTen =1;
            for(j=0;j<nAfterDotNum ;j++){
                nTen = nTen*10;
            }
            resultStr = Math.round(parseFloat(ValueString)*nTen)/nTen;
            return resultStr;
        }
        else{
            resultStr = ValueString;
            for (i=0;i<(nAfterDotNum  - strLen + dotPos + 1);i++){
                resultStr = resultStr+"0";
            }
            return resultStr;
        }
    }
}
function forceDecimal(x, point)
{
    var s_x = x.toString();
    var pos_decimal = s_x.indexOf('.');
    if (pos_decimal < 0) {
        pos_decimal = s_x.length;
        s_x += '.';
    }
    while (s_x.length <= pos_decimal + point) {
        s_x += '0';
    }
    return s_x;
}

//Dom
function Dom(o){
    return document.getElementById(o);
}
//验证价格
function vNum(o, len){
    if(badFloat(o.value, len)){
        o.value=formatfloat(o.value, len, 0);
    }
}

function vNum1(o,len)
{
    if(o.value <1)
        o.value = 1;
}
//SHOW GA PW
function showGA(v){
    $.get('/ajax_user/gaExist/email/'+v, function(d){
        $('#ga_pwd').attr('style', 'display:'+(d.status==1?'block':'none'));
        if(d.msg) alert(d.msg)
    }, 'json')
}

//返回时间戳
function gettime(nS)
{
    return new Date(parseInt(nS) * 1000).toLocaleString().substr(0,17);
}

//更新币交易页的挂单
function allcoinorder(limit){
    $.get('/json/allcoin_orders?t=' + Math.random(), function(d){
        $('#cny_sum').html(d.cny + ' CNY');
        $('#btc_sum').html(d.btc + ' BTC');
        $('#ybc_sum').html(d.ybc + ' YBC');
        $('#coin_sum').html(d.sum);
    }, 'json');
    setTimeout("allcoinorder(" + limit + ")",60000);
}
function getLocalTime(nS) {
    return new Date(parseInt(nS) * 1000).toLocaleString().replace(/:\d{1,2}$/,' ');
}
/**
 * 成交记录
 */
function currentcoinorder(limit, point, display) {
    coinsum(limit);
    if(coin.to == 'cny'){
        point = 2;
    }
    $.get('/json/'+coin.name+'_order?t=' + Math.random(), function(d){
        if(!d || "fail" == d.msg){
            return false;
        }
        var html = '';
        //注意sign在手机端转换为type了
        for(var i in d.d){
            var cls = (i%2==0)?'list_con1':'list_con2';
            if(limit && i >= limit) break;
            if(50 == limit){
                html += '<tr><td class='+cls+'>' + d.d[i].t + '</td><td class="' + cls + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + (d.d[i].s == 'buy'? '买入': '卖出') +

                    '</font></td><td class="' + cls + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + d.d[i].p + '</font></td><td class='+cls+'>' + coin.sign + d.d[i].n + '</td>' +
                    '<td class='+cls+'>' + forceDecimal(Math.floor(d.d[i].n * d.d[i].p * Math.pow(10,point))/Math.pow(10,point), 2) + '</td></tr>';
            }else{
                var str = d.d[i].t.split(' ');
                html += '<tr><td class="' + d.d[i].s + '" style="color:'+(d.d[i].s=='buy'?'#e00':'#690')+'">'+(d.d[i].s == 'buy'? '买入': '卖出') +'<span>'+str[0]+'</span><br><span>'+str[1]+'</span></td>'+
                    '<td class="' + d.d[i].s + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + d.d[i].p + '</font></td><td class="tableEnd">' + coin.sign + d.d[i].n+ '</td>' +
                    '<td class="tableEnd">' + Math.round(d.d[i].n * d.d[i].p*10000)/10000+ '</td></tr>';
            }
        }
        $('#coinorderlist').html(html);
        // 更新价格
        if(typeof d.d[0] == 'undefined'){
            d.d[0] = {"p": '0.0'}
        }
        d.d[0].p = d.d[0].p + '';
        var price = d.d[0].p.split('.');
        btc_rmb = d.d[0].p;
        if(price.length == 1)price[1] = '000';
        //if(price[0]<=0) price[0]=btc_rmb;
        //$('#nowprice').val(formatfloat(price[0],3));
        //var ups = d.price>0?(d.d[0].p-d.price)/d.price:0;
        $('#24h_ups').html(Math.round(d.up24*100*100)/100+'%');
        $('#new_price').html(d.d[0].p);
        $('#24h_max').html(d.max);
        $('#24h_min').html(d.min);
        $('#24h_count').html(d.count);
        $('#24h_sum').html(d.sum);
        //document.title = "元宝网｜第一数字货币众筹交易平台";
        document.title = display+d.d[0].p+" | 元宝网｜第一数字资产交易平台";
    }, 'json');
    setTimeout("currentcoinorder(" + limit + "," + point + ",'" + display + "')", 3800);
}
function ua_refresh(coinname){
    coininfo = coinname.split("2");
    coinfrom = coininfo[0];
    cointo = coininfo[1];
    $.get('/ajax/getUserinfo', function(d){
        userinfo = eval(d.data);
        from_over.innerHTML = formatfloat(userinfo[coinfrom+'_over'],5, 0);
        from_lock.innerHTML = formatfloat(userinfo[coinfrom+'_lock'],5, 0);
        //from_total.innerHTML = formatfloat(parseFloat(userinfo[coinfrom+'_over'])+parseFloat(userinfo[coinfrom+'_lock']),5,0);
        to_over.innerHTML = formatfloat(userinfo[cointo+'_over'], 4, 0);
        to_lock.innerHTML = formatfloat(userinfo[cointo+'_lock'], 4, 0);
        //to_total.innerHTML = formatfloat(parseFloat(userinfo[cointo+'_over'])+parseFloat(userinfo[cointo+'_lock']),5,0);
    }, 'json');
    setTimeout("ua_refresh('" + coinname + "')", 5000);
}

//委托历史
function history(coinname,page){
    var status = $('#status option:selected').val();
    $.post("/User_exchange/mtrustcoin",{coinname:coinname,status:status,page:page},function(d){
        //添加委托历史元素
        var datas = d['data'];
        var html = '';
        var sta = '';
        var last = '';
        if(page > 0){
            //追加元素
            for(var i=0;i<datas.length;i++){
                if(datas[i].status == 0){
                    sta = '未成交';
                    last = "<td class='maichu' style='color:#f60'>"+sta+"</td>";
                }else if(datas[i].status == 1){
                    sta = '部分成交';
                    last = "<td class='maichu' style='color:black'>"+sta+"</td>";
                }else if(datas[i].status == 2){
                    sta = '已成交';
                    last = "<td class='maichu'>"+sta+"</td>";
                }else if(datas[i].status == 3){
                    sta = '撤销';
                    last = "<td class='maichu' style='color:#f60'>"+sta+"</td>";
                }
                if(datas[i].flag == 'buy'){
                    html = "<tr><td class='mairu'>买<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='mairu' style='color:black'>"+datas[i].price+"</td><td>"+datas[i].number+"</td>"+last+"</tr>";
                }else{
                    html = "<tr><td class='maichu'>卖<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='maichu' style='color:black'>"+datas[i].price+"</td><td>"+datas[i].number+"</td>"+last+"</tr>";
                }
                //append是追加
                $('#trust_history').append(html);
            }
        }else{
            for(var i=0;i<datas.length;i++){
                if(datas[i].status == 0){
                    sta = '未成交';
                    last = "<td class='maichu' style='color:#f60'>"+sta+"</td>";
                }else if(datas[i].status == 1){
                    sta = '部分成交';
                    last = "<td class='maichu' style='color:black'>"+sta+"</td>";
                }else if(datas[i].status == 2){
                    sta = '已成交';
                    last = "<td class='maichu'>"+sta+"</td>";
                }else if(datas[i].status == 3){
                    sta = '撤销';
                    last = "<td class='maichu' style='color:#f60'>"+sta+"</td>";
                }
                if(datas[i].flag == 'buy'){
                    html += "<tr><td class='mairu'>买<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='mairu' style='color:black'>"+datas[i].price+"</td><td>"+datas[i].number+"</td>"+last+"</tr>";
                }else{
                    html += "<tr><td class='maichu'>卖<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='maichu' style='color:black'>"+datas[i].price+"</td><td>"+datas[i].number+"</td>"+last+"</tr>";
                }
            }
            $('#trust_history').html(html);
        }

        if(datas.length < 10){
            //先移除再添加
            if(page==0){
                $('#trust_history').html('');
            }
            $('#more_history').html('无更多内容');
        }else{
            $('#more_history').html('↓  显示更多');
        }
        $('#historynum').attr('value',d['msg']);  //分页值
    }, 'json');
}

//我的成交
function coinordersuccess(coinname,page){
    $.post('/user_exchange/mcoinorder',{coinname:coinname,page:page},function(msg){
        //添加成交元素
        var datas = msg['data'];
        var html = '';
        if(page > 0){
            //append追加元素
            for(var i=0;i<datas.length;i++){
                if(datas[i].types == 'buy'){
                    html = "<tr><td class='mairu'>买入<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='mairu'>"+datas[i].price+"</td><td>"+datas[i].number+"</td><td >"+'-'+datas[i].total+"</td></tr>";
                }else if(datas[i].types == 'buy_sale'){
                    html = "<tr><td class='mairu'>买入<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='mairu'>"+datas[i].price+"</td><td>"+datas[i].number+"</td><td >"+'-'+datas[i].total+"</td></tr>";
                    html += "<tr><td class='maichu'>卖出<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='maichu'>"+datas[i].price+"</td><td>"+datas[i].number+"</td><td >"+datas[i].total+"</td></tr>";
                }else{
                    html = "<tr><td class='maichu'>卖出<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='maichu'>"+datas[i].price+"</td><td>"+datas[i].number+"</td><td >"+datas[i].total+"</td></tr>";
                }
                $('#mysuccess').append(html);
            }
        }else{
            //直接添加
            for(var i=0;i<datas.length;i++){
                if(datas[i].types == 'buy'){
                    html += "<tr><td class='mairu'>买入<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='mairu'>"+datas[i].price+"</td><td>"+datas[i].number+"</td><td >"+'-'+datas[i].total+"</td></tr>";
                }else if(datas[i].types == 'buy_sale'){
                    html += "<tr><td class='mairu'>买入<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='mairu'>"+datas[i].price+"</td><td>"+datas[i].number+"</td><td >"+'-'+datas[i].total+"</td></tr>";
                    html += "<tr><td class='maichu'>卖出<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='maichu'>"+datas[i].price+"</td><td>"+datas[i].number+"</td><td >"+datas[i].total+"</td></tr>";
                }else{
                    html += "<tr><td class='maichu'>卖出<span>"+datas[i].year+"</span><br><span>"+datas[i].hour+"</span></td><td class='maichu'>"+datas[i].price+"</td><td>"+datas[i].number+"</td><td >"+datas[i].total+"</td></tr>";
                }
            }
            $('#mysuccess').html(html);
        }
        if(datas.length < 10){
            $('#more').html('无更多内容');
        }else{
            $('#more').html('↓  显示更多');
        }
        $('#pnumber').attr('value',msg['msg']);
    }, 'json');
}

/**
 * 连接推送信息
 */
function socketConnection(limit, point, display) {
    if(!window.WebSocket){//是否支持websocket
        currentcoinorder(limit, point, display);
        coinsum(limit);
        return false;
    }

    if ('offline' == isOnline) {
        var socket = io.connect('http://real.yuanbaobang.com:13442', {'reconnect': true});
    }  else {
        var rand_arr = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
        var rand_length=rand_arr.length;
        var rand = Math.floor(Math.random()*rand_length);
        var rand_number = rand_arr[rand];
        //var target = "https://sha" + (rand_number) + ".yuanbao.com:13442";
        var target = "https://sha.yuanbao.com:13442";
        var socket = io.connect(target, {transports: ['websocket'], 'reconnect': true});
        //console.info("socket connect times[" + rand_number + "]");
        console.info("socket connect sha");
    }
    var global = {reconnectFailCount: 0};
    socket.on('connect', function() {
        console.log("connected to server");
        global.reconnectFailCount = 0;
    });

    socket.on('message' + onlineUsers.type, function(result) {
        data = JSON.parse(result.sum);
        coininfo = coin.name.split("2");
        b4width =  cointrustwidth[coininfo[0]];
        // rmbprice = coininfo[1]=='ybc'?ybcprice:btcprice;
        rmbprice = result.area_price;
        var buy_niceprice = (data['sale'].length==0)?((data['buy'].length==0)?0:data['buy'][0].p):data['sale'][0].p;
        var sale_niceprice = (data['buy'].length==0)?((data['sale'].length==0)?0:data['sale'][0].p):data['buy'][0].p;
        $('#coinsale_nice').html(sale_niceprice);
        $('#coinbuy_nice').html(buy_niceprice);
        var colorhtmlbuy = '';
        var colorhtmlsale = '';
        if(limit !=30) {
            //更多委托信息显示
            for (var type in data) {
                var d = data[type];
                var html = '';
                var idhtml = '';
                /*if (type == 'sale') {
                    var dsort = [];
                    var dmax = d.length > limit ? limit : d.length;
                    for (var j = dmax; j > 0; j--)dsort[limit - j] = d[ j - 1 ];
                    d = dsort;
                }*/
                for (var i in d) {
                    if(limit && i == limit) break;
                    var num = parseFloat(d[i].n), width = num * b4width > 80 ? 80 : num * b4width;      //挂单进度
                    i = parseInt(i);
                    //数据加载中隐藏
                    //$('.Wf-div3 span').css('display','none');
                    if (type == 'buy') {
                        idhtml = '<tr class="smallH"></tr><tr><td class="color_r" >买(' + (i + 1) + ')</td>';
                    } else {
                        idhtml = '<tr class="smallH"></tr><tr><td class="color_g">卖(' + (i+1) + ')</td>';
                    }
                    //挂单数量转换
                    if(d[i].n < 10000){
                        var nums = d[i].n;
                    }
                    if(d[i].n >= 10000 &&d[i].n < 100000000){
                        var nums = d[i].n/10000;    //转换为万结尾
                        var nums = parseFloat(nums.toFixed(2))+'万';
                    }
                    if(d[i].n >= 100000000 ){
                        var nums = d[i].n/100000000;    //转换为亿结尾
                        var nums = parseFloat(nums.toFixed(2))+'亿';
                    }
                    //因为走手机模式，sign被type替换，所以下面用coin.type
                    html += idhtml + '<td style="width: 1.3rem">' + d[i].p + '</td><td>' +coin.sign+ nums + '</td>';
                    html += '</tr>';
                    //添加颜色,注意顺序啊，先买后卖，所以分开了
                    if (type == 'buy') {
                        colorhtmlbuy += '<tr class="smallH"></tr><tr style="width:' + width + 'px"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>';
                    } else {
                        colorhtmlsale += '<tr class="smallH"></tr><tr style="width:'+ width + 'px"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>';
                    }
                }
                $('#coin' + type + 'list').html(html);
            }
            $('#colorsalelist').html(colorhtmlsale);   //卖挂单进度条
            $('#colorbuylist').html(colorhtmlbuy );   //买挂单进度条
        }else{
            for(var type in data){
                var html = '';
                var idhtml = '';
                var d = data[type];
                if(type == 'sale'){
                    var dsort = [];
                    //手机端暂定5条
                    //var dmax = d.length > limit? limit: d.length;
                    var dmax = d.length > 5? 5: d.length;
                    for(var j = dmax; j > 0; j--) dsort[limit - j] = d[j - 1];
                    d = dsort;
                }
                for (var i in d) {
                    //if(limit && i == limit) break;
                    if (i == 5) break;
                    var num = parseFloat(d[i].n), width = num * b4width > 80 ? 80 : num * b4width;      //挂单进度
                    i = parseInt(i);
                    if (type == 'buy') {
                        idhtml = '<td class="j-colorR" >买(' + (i + 1) + ')</td>';
                    } else {
                        idhtml = '<td class="j-colorG">卖(' + (dmax--) + ')</td>';
                    }

                    //挂单数量转换
                    if(d[i].n < 10000){
                        var nums = d[i].n;
                    }
                    if(d[i].n >= 10000 &&d[i].n < 100000000){
                        var nums = d[i].n/10000;    //转换为万结尾
                        var nums = parseFloat(nums.toFixed(2))+'万';
                    }
                    if(d[i].n >= 100000000 ){
                        var nums = d[i].n/100000000;    //转换为亿结尾
                        var nums = parseFloat(nums.toFixed(2))+'亿';
                    }
                    //因为走手机模式，sign被type替换，所以下面用coin.type
                    html += '<tr>' + idhtml + '<td>' + d[i].p + '</td><td>' + coin.sign + nums + '</td>';
                    html += '</tr>';
                    var cls = (type == 'buy') ? 'j-bg-R' : 'j-bg-G';
                    //添加颜色,注意顺序啊，先买后卖，所以分开了
                    if (type == 'buy') {
                        colorhtmlbuy += '<tr class=' + cls + ' style="width:' + width + 'px"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>';
                    } else {
                        colorhtmlsale += '<tr class=' + cls + ' style="width:' + width + 'px"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>';
                    }
                }
                //若无数据则提示暂无挂单
                if(html == '' && type == 'sale'){
                    html = '<tr><td colspan="3" style="text-align:center">暂无卖单</td></tr>'
                }
                if(html == '' && type == 'buy'){
                    html = '<tr><td colspan="3" style="text-align:center">暂无买单</td></tr>'
                }

                $('#coin' + type + 'list').html(html);
                $('#coin_' + type + 'one').html(typeof d[0] == 'undefined'? 0: parseFloat(d[0].p));
            }
            //console.log(colorhtml);
            $('#colorhtml').html(colorhtmlsale+'<tr class="j-bg-c"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp</td></tr>'+colorhtmlbuy);
            if(colorhtmlsale != ''){
                $('.moretrust').css('display','block');
            }
        }

        msg = (coininfo[0] == 'yby')?ybycoinpricemsg:coinpricemsg;
        if($('#coinpricein').val() == msg) {
            $('#coinpricein').val(buy_niceprice);
            coinbuy_max(buy_niceprice,0,coininfo[1]);
        }
        if($('#coinpriceout').val()== msg)
            $('#coinpriceout').val(sale_niceprice);

        // order
        d = JSON.parse(result.order);
        if(coin.to == 'cny'){
            point = 2;
        }
        /*if(!d || "fail" == d.msg){
         return false;
         }*/
        var html = '';
        for(var i in d.d){
            var cls = (i%2==0)?'list_con1':'list_con2';
            if(limit && i >= limit) break;
            if(50 == limit){
                html += '<tr><td class='+cls+'>' + d.d[i].t + '</td><td class="' + cls + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + (d.d[i].s == 'buy'? '买入': '卖出') +

                    '</font></td><td class="' + cls + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + d.d[i].p + '</font></td><td class='+cls+'>' + coin.sign + d.d[i].n + '</td>' +
                    '<td class='+cls+'>' + forceDecimal(Math.floor(d.d[i].n * d.d[i].p * Math.pow(10,point))/Math.pow(10,point), 2) + '</td></tr>';
            }else{
                var str = d.d[i].t.split(' ');
                html += '<tr><td class="' + d.d[i].s + '" style="color:'+(d.d[i].s=='buy'?'#e00':'#690')+'">'+(d.d[i].s == 'buy'? '买入': '卖出') +'<span>'+str[0]+'</span><br><span>'+str[1]+'</span></td>'+
                    '<td class="' + d.d[i].s + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + d.d[i].p + '</font></td><td class="tableEnd">' + coin.sign + d.d[i].n+ '</td>' +
                    '<td class="tableEnd">' + Math.round(d.d[i].n * d.d[i].p*10000)/10000+ '</td></tr>';
            }
        }
        $('#coinorderlist').html(html);
        // 更新价格
        if(typeof d.d[0] == 'undefined'){
            d.d[0] = {"p": '0.0'}
        }
        d.d[0].p = d.d[0].p + '';
        var price = d.d[0].p.split('.');
        btc_rmb = d.d[0].p;
        if(price.length == 1)price[1] = '000';
        //if(price[0]<=0) price[0]=btc_rmb;
        //$('#nowprice').val(formatfloat(price[0],3));
        //var ups = d.price>0?(d.d[0].p-d.price)/d.price:0;
        $('#24h_ups').html(Math.round(d.up24*100*100)/100+'%');
        $('#new_price').html(d.d[0].p);
        $('#24h_max').html(d.max);
        $('#24h_min').html(d.min);
        $('#24h_count').html(d.count);
        $('#24h_sum').html(d.sum);
        //document.title = "元宝网｜第一数字货币众筹交易平台";
        document.title = display+d.d[0].p+" | 元宝网｜第一数字资产交易平台";
    });



    socket.on('connect_failed', function() {
        console.log("connect_failed to server");
    });

    socket.on('error', function() {
        console.log("error");
    });

    socket.on('reconnecting', function () {
        console.log("reconnecting");
        global.reconnectFailCount++;
        if (global.reconnectFailCount >= 6) {
            console.log('please check your network');
        }
    });

    socket.on('reconnect', function () {
        console.log("reconnect");
        global.reconnectFailCount--;
    });

    socket.on('disconnect', function () {
        console.log("disconnect");
    });

}

$(function(){
    //单币价格提示
    var coininfo = coin.name.split("2");
    if(coininfo.length > 1){
        var coin_from = coininfo[0];
        var coin_to   = coininfo[1];
    }
    function pricemsgfn(){
        if($(this).val()==coinpricemsg) {$(this).attr('style', 'color:#000');$(this).val('');}
    }
    $('#coinpricein').val(coinpricemsg); $('#coinpricein').attr('style', 'color:#333'); $('#coinpricein').bind('click', pricemsgfn);
    $('#coinpriceout').val(coinpricemsg);$('#coinpriceout').attr('style', 'color:#333');$('#coinpriceout').bind('click', pricemsgfn);

    //回到页面顶部
    $("#goTotop").click(function(){
        $('body,html').animate({scrollTop:0},1500); //点击按钮让其回到页面顶部
    });

    $(window).scroll(function() {
        var yheight1=window.pageYOffset; //滚动条距顶端的距离
        var yheight=getScrollTop(); //滚动条距顶端的距离
        var height =document.documentElement.clientHeight//浏览器可视化窗口的大小
        var top=parseInt(yheight)+parseInt(height);
        var tags=$("#tags");
        var fixed=$("thead.fixed tr");
        var fixedth=$("thead.fixed tr th");
        var selecttype=$('#tags li.selectTag a').attr('select-type');
        //var lentr=$("#"+selecttype+" table tbody tr").length;
        if(yheight>500){
            fixed.addClass("fixedth");
            tags.addClass("fixedth");
            fixedth.addClass("subfixedth");
            var tr='<tr class="selector">';
            tr+='<th width="17px">&nbsp;</th>';
            tr+='<th style="text-align:left;" width="122px">币名</th>';
            tr+='<th class="header" width="86px">最新价格(CNY)</th>';
            tr+='<th class="header" width="115px">24H成交量</th>';
            tr+='<th class="header" width="109px">24H成交额(CNY)</th>';
            tr+='<th class="header" width="128px">总市值(CNY)</th>';
            tr+='<th class="header" width="63px">24H涨跌</th>';
            tr+='<th class="header" width="63px">7D涨跌</th>';
            tr+='</tr>';
            var tagsul='<a name="map"></a><ul class="selectul for_coin">';
            tagsul+='<li class="selectTag"><a select-type="tagContent0" onmouseover="selectTag("tagContent0",this)">CNY交易区</a></li>';
            tagsul+='<li><a select-type="tagContent1" onmouseover="selectTag("tagContent1",this)">代币交易区</a></li>';
            tagsul+='<li><a select-type="tagContent2" onmouseover="selectTag("tagContent2",this)">YBC交易区</a></li>';
            tagsul+='<li><a select-type="tagContent3" onmouseover="selectTag("tagContent3",this)">积分交易区</a></li>';
            tagsul+='<li><a select-type="tagContent4" onmouseover="selectTag("tagContent4",this)">商品交易区</a></li>';
            tagsul+='<li><a select-type="tagContent5" onmouseover="selectTag("tagContent5",this)">文创交易区</a></li>';
            tagsul+='</ul>';
            if(!$('tr.selector').length>0 && !$('ul.selectul').length>0){
                tags.after(tagsul);
                fixed.parent().append(tr);
            }
            $('tr.selector').removeClass('none');
            $('ul.selectul').removeClass('none');
            $('tr.selector').removeClass('fixedth');
            $('ul.selectul').removeClass('fixedth');
            $('tr.selector th').removeClass('subfixedth');
            $('tr.selector th').css('z-index','-1');

        }else{
            fixed.removeClass('fixedth');
            tags.removeClass('fixedth');
            $('tr.selector').addClass('none');
            $('ul.selectul').addClass('none');
            fixedth.removeClass('subfixedth');
        }

    })

    /**
     * 获取滚动条距离顶端的距离
     * @return {}支持IE6
     */
    function getScrollTop() {
        var scrollPos;
        if (window.pageYOffset) {
            scrollPos = window.pageYOffset; }
        else if (document.compatMode && document.compatMode != 'BackCompat')
        { scrollPos = document.documentElement.scrollTop; }
        else if (document.body) { scrollPos = document.body.scrollTop; }
        return scrollPos;
    }
});

