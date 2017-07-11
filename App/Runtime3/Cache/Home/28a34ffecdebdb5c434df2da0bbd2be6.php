<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html> 
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" >
<meta name="renderer" content="webkit">
<meta name="keywords" content=""/>
<meta name="description" content=""/>
<meta property="wb:webmaster" content="8af72a3a7309f0ee">
    <title><?php if(!empty($article)): echo ($article["title"]); ?>-<?php endif; echo ((isset($config["title"]) && ($config["title"] !== ""))?($config["title"]):"股票交易网站"); ?></title>
	<link rel="Shortcut Icon" type="image/x-icon" href="/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/base.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/subpage.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/user.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/coin.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/zcpc.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/iconfont/demo.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/iconfont/iconfont.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/jb_style.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/hb_index.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/fhb_trade.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/fhb_miao.css">

    <script src="/Public/Home/js/hm.js">
    <script type="text/javascript" src="/Public/Home/js/downList.js"></script>


    <script type="text/javascript" src="/Public/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="/Public/js/jquery-2.1.1.min.js"></script>
    <script src="/Public/js/bootstrap.min.js?v=3.4.0"></script>
    <script type="text/javascript" src="/Public/js/layer/layer.js"></script>
    <script src="/Public/js/jquery.validate.min.js"></script>
    <script src="/Public/js/messages_zh.min.js"></script>
    <script src="/Public/js/base.js"></script>
<style>
.user_boxsize{ width:400px !important;}
.balance_list{ margin-left:70px; width:180px; float:left;}
.mywallet_btn_box{ width:380px;}
.top_colorhover:hover{ color:#fff !important;}
.menubox_position{ right:0% !important; width:140px !important;}
.head_user_option{    position: relative;}
<!--头部公告-->
.head_notice_header {
    height: 35px;
    line-height: 35px;
    clear: both;
    background: #fffaf4;
    color: #999;
    position: relative;
}
.head_notice_header .notice_info {
    text-align: center;
}
.head_notice_header a {
    color: #ff6000;
    display: inline-block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 950px;
}	
.head_notice_header .close {
    position: absolute;
    right: 11px;
    top: 0;
}
.head_notice_header a:hover {
    color: #ec3523;
}

.qh_sub{
	position: relative;
	padding-left: 60px;
}
.qh_sub a{
	color: black !important;
}
.qh_sub a:hover{
	color: #F6A500 !important;
}
.qh_sub img{
	position: absolute;
	top: 9px;
	left: 22px;
	width: 28%;
	height: 76%;
	
}
<?php if(($_SESSION['is_phone']) == "1"): ?>.qh_fixed{
	position: fixed !important;
	/*top: 0;
	left: 0;*/
	z-index: 100;
	width: 100%;
}
.qh_kong{
	width: 100%;
	height: 155px;
}<?php endif; ?>
<!--头部公告结束-->
</style>
</head>
<body style="height:100%;">
<!--<div class="clearfix phone_top" id="phone_top_div" style="display:none;">
	<div class="left">
		<p class="left phone_logo"><img src="/images/phone_logo01.png"/></p>
		<p class="left phone_title">第一数字货币众筹交易平台</p>
	</div>
	<a href="javascript:hidephone();" class="phone_x">X</a>
</div>-->
<!--top start-->
<div class="qh_fixed">
<div id="doc_top_bar" style="display:none">
	<div class="section">
		<div class="float_left">
			<!-- <a class="t_weixin option icon_position">
            <i class="icon_f_weixin"></i><img style="width:120px;" src="<?php echo ($config['weixin']); ?>" alt="">
			</a> -->
            <!-- <i class="seg"></i>
            <a rel="nofollow" target="_blank" href="http://weibo.com/<?php echo ($config['weibo']); ?>" class="t_weibo option icon_position">
            <i class="icon_f_weibo"></i></a> -->
                    </div>
        <div class="float_right head_user_option" style="margin-right:40px">
  <?php if(!empty($member)): ?><style>
  #doc_top_bar{display:block !important}
  </style>
<a data-widget="#user_slide" href="<?php echo U('ModifyMember/modify');?>" class="option " id="user_slide">
	你好，<?php echo (session('USER_KEY')); ?> 
              
		<i class="icon_gray_arrows"></i>
</a>
<a data-widget="#message_slide" href="#" class="option top_msg top_msg_new top_colorhover" id="message_slide">(UID: <?php echo (session('USER_KEY_ID')); ?> )</a>
<a href="<?php echo U('Login/loginOut');?>" class="option">退出</a>
<i class="seg"></i>
<a  href="#" class="option last" id="menu_slide">我的账户</a><?php endif; ?>
<i class="seg sub_show"></i>

<div data-widget="#user_slide" class="slide_box user_slide_box user_boxsize" id="user_slide_box">
    <div class="clear"><ul class="balance_list"><h4>可用余额</h4><li><a href="javascript:void(0)"><em style="margin-top: 5px;" class="deal_list_pic_cny"></em><strong>人民币：</strong><span><?php echo ($member["rmb"]); ?></span></a></li></ul><ul class="freeze_list"><h4>委托冻结</h4><li><a href="javascript:void(0)"><em style="margin-top: 5px;" class="deal_list_pic_cny"></em><strong>人民币：</strong><span><?php echo ($member["forzen_rmb"]); ?></span></a></li></ul></div>
    <div class="mywallet_btn_box" style=" margin-left:20px;"><a  href="javascript:void(0)" onClick="confirm_fill();"  >充值</a><a href="<?php echo U('User/draw');?>">提现</a><!--<a href="<?php echo U('User/index');?>">转入</a><a href="<?php echo U('User/index');?>">转出</a>--><a href="<?php echo U('Entrust/manage');?>">委托管理</a><a href="<?php echo U('Trade/myDeal');?>">成交查询</a></div>
</div>
<div class="slide_box menu_slide_box menubox_position" id="menu_slide_box">
	<div class="bd">
		<dl class="menu_1">
			<dd><a href="<?php echo U('User/index');?>">我的资产</a></dd>
			<dd><a href="<?php echo U('Entrust/manage');?>">我的交易</a></dd>
			<!--<dd><a href="<?php echo U('User/zhongchou');?>">我的众筹</a></dd>-->
			<dd><a   href="javascript:void(0)" onClick="confirm_fill();"  >人民币充值</a></dd>
			<dd><a href="<?php echo U('User/draw');?>" >人民币提现</a></dd>
			<!--<dd><a href="<?php echo U('User/index');?>">充币提币</a></dd>-->
            <dd><a href="<?php echo U('User/updatePassword');?>">修改密码</a></dd>
			<dd><a href="<?php echo U('User/sysMassage');?>">系统消息<span class="messagenum" id="messagenum_common">0</span></a></dd>
		</dl>
	</div>
</div>

<script>
$(document).ready(function(){
	$("#menu_slide").mouseenter(
		function(){
			$("#menu_slide_box").show();
		}
	).mouseout(
		function(){
			$("#menu_slide_box").hover(
				function(){
					$("#menu_slide_box").show();
				},
				function(){
				$("#menu_slide_box").hide();
				}
			)
			$("#menu_slide_box").hide();
		}
	)
	
	$("#user_slide").mouseenter(
		function(){
			$("#user_slide_box").show();
		}
	).mouseout(
		function(){
			$("#user_slide_box").hover(
				function(){
					$("#user_slide_box").show();
				},
				function(){
				$("#user_slide_box").hide();
				}
			)
			$("#user_slide_box").hide();
		}
	)
})

</script>
<div data-widget="#head_lang" class="slide_box lang_slide_box" id="head_lang_box">
			<a href="#" data-lang="en" class=""><i class="icon_lang icon_lang_en"></i>&nbsp;&nbsp;English</a>
		</div>

        </div>
    </div>
</div>
<div id="doc_head" >
    <div class="head_masthead">
        <div class="section relative clear" style="min-width:1200px; padding-top:0px;">
            <h1 class="head_logo" style="padding-top: 0px;margin-bottom: 0px;">
                <img style=" height:68px;" src="<?php echo ($config["logo"]); ?>" />
                            </h1>
                        
			<?php if(!empty($member)): ?><!-- 登录后 显示资产-->
            <div class="head_balance float_right" style="margin-right:40px">
           
                <div data-widget="#head_balance" class="bar" id="head_balance" data-currency="" style="position:relative;z-index:2;right:-20%"  data-allow_cny="" data-allow_usd="">
                                           总资产
                                                <i class="symbol font_14">¥</i> <span data-flaunted="1" data-flaunt="0.0000" class="convert_net_btc font_14" style="font-weight: 400;" id='total_common_money1'>----</span>
                                                                <!-- <i data-visible="visible" id="flaunt" class="icon_eye"></i> -->
                    <div class="handle">
                        <i class="icon_white_arrows"></i>
                    </div>
                </div>
                <div data-widget="#head_balance" class="info" style="right:-20%"  id="head_balance_box">
                    <dl>
                                                <dt class="total">
                            <span class="label">总资产</span>
                            <span class="font_orange"><i class="symbol">¥</i><b style="font-weight: 400;" data-flaunted="1" data-flaunt="0.0000" class="convert_total_btc" id='total_common_money'>----</b> </span>
                        </dt>
                        <!-- <dt class="total_2">
                            <span class="label">净资产</span>
                            <span class="font_orange"><i class="symbol">฿</i> <b style="font-weight: 400;" data-flaunted="1" data-flaunt="0.0000" class="convert_net_btc">0.0000</b> </span>
                        </dt> -->
                        
                        <dt>人民币现货账户</dt>
                        <dd>
                            <span class="label">可用</span>
                            <span class="c_1"><i class="symbol">¥</i> <b style="font-weight: 400;" data-flaunted="1" data-flaunt="0.00" class="cny_cny_available"><?php echo ((isset($member["rmb"]) && ($member["rmb"] !== ""))?($member["rmb"]):0.00); ?></b> </span>
                        </dd>
                        <dd>
                            <span class="label">冻结</span>
                            <span class="c_1"><i class="symbol">¥</i> <b style="font-weight: 400;" data-flaunted="1" data-flaunt="0.00" class="cny_cny_frozen"><?php echo ((isset($member["forzen_rmb"]) && ($member["forzen_rmb"] !== ""))?($member["forzen_rmb"]):0.00); ?></b> </span>
                        </dd>
                        <!--<dd class="ratio cny_loan_rate_yes" style="display: none;">
                            资产/杠杆 <i class="font_orange">=</i> <b style="font-weight: 400;" data-flaunted="1" data-flaunt="0.00" class="font_orange cny_risk_rate">0.00</b><b class="font_orange">%</b>  &nbsp;
                            <span class="cny_loan_burst cny_loan_burst_price_no" style="">(爆仓值 110%)</span>
                            <span class="cny_loan_burst cny_loan_burst_price_btc" style="display: none;">(预估爆仓价比特币 <b class="font_orange">¥</b><b class="price font_orange">0</b>)</span>
                            <span class="cny_loan_burst cny_loan_burst_price_ltc" style="display: none;">(预估爆仓价莱特币 <b class="font_orange">¥</b><b class="price font_orange">0</b>)</span>
                        </dd>-->
                    </dl>
                    <div class="shortcut">
                                                <a href="javascript:void(0)" onClick="confirm_fill();" class="btn_orange">充值</a>
                        
                                                <a href="<?php echo U('User/draw');?>" class="btn_white">提现</a>
                                                
                    </div>
                </div>
            </div>
            <?php else: ?>
            <!-- 登录前 头部显示 登录-->
             <div class="head_login">
                <a href="<?php echo U('Reg/reg');?>"<?php if(($style) == "2"): ?>class="login_btn"<?php endif; ?>>注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="<?php echo U('Login/index');?>"<?php if(($style) == "1"): ?>class="login_btn"<?php endif; ?>>登录</a>
                &nbsp;&nbsp;&nbsp;
            </div><?php endif; ?>
            <div class="head_nav" id="head_nav">
                 <ul style="padding-top: 0px;margin-bottom: 0px;">
            <li><a href="<?php echo U('Index/index');?>">首页</a></li><!--  href="<?php echo U('Orders/index');?>"-->
            <li class="multi hot" style="width:115px;"><a href="<?php echo U('Orders/index',array('currency'=>$currency_back[0]['currency_mark']));?>">股票交易</a>
               <!-- <div class="sub">
						<?php if(is_array($currency_header)): $i = 0; $__LIST__ = $currency_header;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="qh_sub"><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>"><img src="<?php echo ($vo["currency_logo"]); ?>"><?php echo ($vo["currency_name"]); ?></a></div><?php endforeach; endif; else: echo "" ;endif; ?> 
                </div> -->
            </li>
     <!--      <li><a href="<?php echo U('Zhongchou/index');?>">众筹</a></li>-->
            <li><a href="<?php echo U('Safe/index');?>">用户中心</a></li>
            <li><a href="<?php echo U('Help/index',array('id'=>60));?>">帮助中心</a></li>
            <li><a href="<?php echo U('Art/index',array('ramdon_id'=>'1'));?>">最新动态</a></li>
            <li><a href="<?php echo U('Market/index');?>">行情中心</a></li>
         <!--   <li><a href="<?php echo U('Dow/index');?>">下载中心</a></li>-->
        </ul>
                 
                            </div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript">
//异步加载个人资产以及系统未读消息条数信息  GS
$(function(){
	var session_id = "<?php echo (session('USER_KEY_ID')); ?>";
	if(session_id != 0)
	$.ajax({
		url:"<?php echo U('Index/personinfo');?>",
		type:'POST',
		dataType:'Json',
		success:function (data){
			//console.log(data);

			if(data.newMessageCount == 'false'){
				data.newMessageCount = '';
			}
			$('#total_common_money').html(data.allmoneys);
			$('#total_common_money1').html(data.allmoneys);
			
			if(data.newMessageCount == 0){
					$('#messagenum_common').remove();
					$('#messagenum2').remove();
				}else{
					$('#messagenum_common').html(data.newMessageCount);
					$('#messagenum2').html(data.newMessageCount);
				}
		}
	});
})

</script>


<div class="qh_kong"></div>
<script>
$(document).ready(function(){
	$("#head_balance").mouseenter(
		function(){
			$("#head_balance_box").show();
		}
	).mouseout(
		function(){
			$("#head_balance_box").hover(
				function(){
					$("#head_balance_box").show();
				},
				function(){
				$("#head_balance_box").hide();
				}
			)
			$("#head_balance_box").hide();
		}
	)
	
	$("#head_balance").mouseenter(
		function(){
			$("#head_balance_box").show();
		}
	).mouseout(
		function(){
			$("#head_balance_box").hover(
				function(){
					$("#head_balance_box").show();
				},
				function(){
				$("#head_balance_box").hide();
				}
			)
			$("#head_balance_box").hide();
		}
	)
})

</script>

    
<!----头部公告开始----->
<?php if(!empty($gonggao)): ?><!-- <div class="section head_notice_header"  style="background-color:#fffaf4; height:35px; line-height:35px;" id="head_notice">
        <div class="notice_info">
            <a href="<?php echo U('Art/details',array('id'=>$gs['article_id']));?>" target="_blank">
            <i class="icon_notice_horn"></i><?php echo ($gs["title"]); ?>
            </a>
             <a  href="#" id="close_notice" style=" float:right">
            <i class="icon_right_close_2"></i>
        </a>
        </div>
       
    </div> --><?php endif; ?>
<!----头部公告结束----->
<div class="pclxfsbox"> 
		<ul> 
<!-- 			<li>
				<i class="pcicon1 iscion6" ></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p>在线咨询</p>
						<p><?php echo ((isset($config['worktime']) && ($config['worktime'] !== ""))?($config['worktime']):"暂无"); ?></p>
					</div>
					<i></i>
				</div>
			</li>
			<li> 
				<i class="pcicon1 iscion1"></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><img src="<?php echo ($config['weixin']); ?>" alt="投筹网微信公众号" width="108"></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?>微信群</p>
					</div>
					<i></i>
				</div>
			</li> -->
			<!-- <li>
				<i class="pcicon1 iscion2"></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><?php echo ((isset($config['tel']) && ($config['tel'] !== ""))?($config['tel']):"暂无"); ?></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?></p>
					</div>
					<i></i>
				</div>
			</li> -->
<script type="text/javascript">
	function confirm_fill(){
			window.location.href="<?php echo U('User/pay');?>";
	}
			
</script>
           <li>
				<i class="pcicon1 iscion3"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq1']); ?>&site=qq&menu=yes"></a></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><?php echo ((isset($config["qq1"]) && ($config["qq1"] !== ""))?($config["qq1"]):"暂无"); ?></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?>QQ在线客服1</p>
					</div>
					<i></i>
				</div>
			</li>
            <li>
				<i class="pcicon1 iscion3" style="background:url(/Public/Home/images/kefu2.png) no-repeat #9b9b9b;background-position:-144px 11px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq2']); ?>&site=qq&menu=yes"></a></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><?php echo ((isset($config["qq2"]) && ($config["qq2"] !== ""))?($config["qq2"]):"暂无"); ?></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?>QQ在线客服2</p>
					</div>
					<i></i>
				</div>
			</li>
            <!-- <li>
				<i class="pcicon1 iscion3" style="background:url(/Public/Home/images/kefu3.png) no-repeat #9b9b9b;background-position:-144px 11px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq3']); ?>&site=qq&menu=yes"></a></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><?php echo ((isset($config["qq3"]) && ($config["qq3"] !== ""))?($config["qq3"]):"暂无"); ?></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?>QQ在线客服3</p>
					</div>
					<i></i>
				</div>
			</li> -->
			
			<li>
				<i class="pcicon1 iscion4"></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p>返回顶部</p>
					</div>
					<i></i>
				</div>
			</li>
		</ul>
	</div>

<script type="text/javascript"> 
		$(function(){
			$(".pcicon1").on("mouseover",function(){
				$(this).addClass("lbnora").next(".pcicon1box").css({"width":"148px"});
			}).on("mouseout",function(){
				$(this).removeClass("lbnora").next(".pcicon1box").css("width","0px");
			});
			$(".iscion4").on("click",function(){
				$("html, body").animate({
					scrollTop: 0
				})
			});

			var objWin;
			$("#opensq").on("click",function(){
				var top = window.screen.height/2 - 250;
				var left = window.screen.width/2 - 390;
				var target = "http://p.qiao.baidu.com//im/index?siteid=8050707&ucid=18622305"; 
				var cans = 'width=780,height=550,left='+left+',top='+top+',toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes' ;

				if((navigator.userAgent.indexOf('MSIE') >= 0)&&(navigator.userAgent.indexOf('Opera') < 0)){
						//objWin = window.open ('','baidubridge',cans) ; 
						if (objWin === undefined || objWin === null || objWin.closed) { 
							objWin = window.open (target,'baidubridge',cans) ; 
						}else { 
							objWin.focus();
						}
				}else{
					var win = window.open('','baidubridge',cans );
					if (win.location.href == "about:blank") {
					    //窗口不存在
					    win = window.open(target,'baidubridge',cans);
					} else {
					    win.focus();
					}
				}
				return false;

			})
		})
		
	</script>
<!--top end-->
  
<style type="text/css">
.user {
	width: 97%;
	margin: 0px auto;
}
.user-nav {
}
.user-nav a {
	display: inline-block;
	float: left;
	padding: 7px 20px;
	margin-left: 10px;
	color: #0B72A4;
}
.user-nav a.cur {
	background: #fff;
	border: 1px solid #ddd;
	border-bottom: 0px;
}
.user-info {
	padding: 20px 0px;
	font-size: 16px;
	border: 1px solid #ddd;
}
.user-info dl {
	display: block;
	width: 99%;
	margin: 0px auto;
	zoom: 1;
	overflow: hidden;
}
.user-info dl dt, .user-info dl dd {
	float: left;
	padding: 15px 10px;
}
.user-info dl dt {
	clear: both;
	width: 10%;
}
.user-info dl dd {
	width: 70%;
}
.user-info dl dd input[type='radio'] {
	margin-left: 20px;
}
.user-info input[type='text'], .user-info input[type='password'] {
	width: 100px;
	height: 30px;
	line-height: 30px;
	border: 1px solid #ccc;
	padding-top: 0px;
	padding-right: 10px;
	padding-bottom: 0px;
	padding-left: 10px;
}
.user-info table {
	width: 100%;
	border: 1px solid #ccc;
	border-bottom: 0px;
}
.user-info th, .user-info td {
	padding: 10px 10px;
	border-bottom: 1px solid #ccc;
	text-align: right;
}
.user-info h3 {
	text-indent: 15px;
	padding: 15px 0px;
}
.sub {
	display: inline-block;
	font-weight: 700;
	font-size: 16px;
	color: white;
	text-align: center;
	width: 170px;
	height: 32px;
	line-height: 32px;
	background: #FF8C19;
	margin-top: 10px;
}
.sub:hover {
	color: #fff;
	text-decoration: none;
}
.banktable td {
	padding: 0px;
}
.onlineRecharge .onlineRechargeContent .numberBlock{ width:350px}
.mainBox2 h3 {
  font-size: 20px;
  font-weight: bold;
  color:#E32222;
  padding-left:0px;
}
.content {
  padding: 10px;
  padding-top: 0px;
}
.input {
  border: 1px solid #DDD;
  padding: 2px;
  font: 12px/150% Arial,"Lucida Grande",Verdana,Helvetica,sans-serif;
  color: #333;
}
.content #button_10:hover{ background-color:#286090 !important;}
.selecttabboxNew li{float:none;line-height: 19px;}
</style>
<script src="js/index.js"></script>

<div id="main">
	
	<div class="main_box">
	
  <div class="rightArea">
    <div class="onlineRecharge">
	
      <div class="selecttabNew1">
	  
        <ul class="selecttabboxNew">
		<div id="my_menu" class="sdmenu left">
		<div>
			<p><i class="iconfont iconcolor">&#xe61e;</i>&nbsp;我的资产</p>
						<a href="<?php echo U('User/index');?>" class="menu"><b class="ic-uc"></b><!--<i class="iconfont">&#xe6f6;</i>&nbsp;&nbsp;-->账户资产</a>
                        <a href="<?php echo U('Finance/index');?>" class="menu13"><b class="ic-uc"></b><!--<i class="iconfont">&#xe93e;</i>&nbsp;&nbsp;-->财务日志</a>
					</div>
                    <hr />
		<div style="position:relative;">
			<p><i class="iconfont iconcolor">&#xe643;</i>&nbsp;我的交易</p>
						<a href="<?php echo U('Entrust/manage');?>" class="menu2"><b class="ic-uc"></b><!--<i class="iconfont">&#xe616;</i>&nbsp;&nbsp;-->委托管理</a>
						<a href="<?php echo U('Trade/myDeal');?>" class="menu3"><b class="ic-uc"></b><!--<i class="iconfont">&#xe65b;</i>&nbsp;&nbsp;-->我的成交</a>
						<!-- <a href="<?php echo U('Entrust/history');?>" class="menu4"><b class="ic-uc"></b><!--<i class="iconfont">&#xe62d;</i>&nbsp;&nbsp;委托历史</a> -->
						
						<!--<a href="<?php echo U('User/zhongchou');?>" class="menu6"><b class="ic-uc"></b>我的众筹</a>-->
					</div>
                    <hr />
                    <div>
			<p><i class="iconfont iconcolor">&#xe60e;</i>&nbsp;安全中心</p>
            		
						<!--<a href="<?php echo U('Safe/index');?>" class="menu11"><b class="ic-uc"></b><i class="iconfont">&#xe649;</i>&nbsp;&nbsp;安全中心</a>-->
                        <a href="<?php echo U('User/updatePassword');?>" class="menu8"><b class="ic-uc"></b><!--<i class="iconfont">&#xe638;</i>&nbsp;&nbsp;-->修改密码</a>
                        <a href="<?php echo U('User/updateMassage');?>" class="menu7"><b class="ic-uc"></b><!--<i class="iconfont">&#xe649;</i>&nbsp;&nbsp;-->个人信息</a>
						<!--<a href="<?php echo U('Safe/mobilebind');?>" class="menu12"><b class="ic-uc"></b><i class="iconfont">&#xe609;</i>&nbsp;&nbsp;手机绑定</a>-->
					  </div>
                      <hr />
				  <div>
			<p><i class="iconfont iconcolor">&#xe611;</i>&nbsp;账户中心</p>
			            <!-- <?php if(($config["huanxun"]) == "1"): ?><a href="<?php echo U('FillByBank/index');?>" class="menu12"><b class="ic-uc"></b><!--<i class="iconfont">&#xe620;</i>&nbsp;&nbsp;人民币充值（在线）</a><?php endif; ?> -->
			            <a href="<?php echo U('User/pay');?>" class="menu12"><b class="ic-uc"></b><!--<i class="iconfont">&#xe620;</i>&nbsp;&nbsp;-->人民币充值</a>
			            <a href="<?php echo U('Fill/index');?>" class="menu15"><b class="ic-uc"></b><!--<i class="iconfont">&#xe620;</i>&nbsp;&nbsp;-->人民币充值记录</a>
			            <a href="<?php echo U('User/draw');?>" class="menu14"><b class="ic-uc"></b><!--<i class="iconfont">&#xe6f0;</i>&nbsp;&nbsp;-->人民币提现</a>
            		    <a href="<?php echo U('Safe/index');?>" class="menu11"><b class="ic-uc"></b><!--<i class="iconfont">&#xe660;</i>&nbsp;&nbsp;-->用户中心</a>
						<a href="<?php echo U('User/invit');?>" class="menu9"><b class="ic-uc"></b><!--<i class="iconfont">&#xe602;</i>&nbsp;&nbsp;-->邀请好友</a>
						<a href="<?php echo U('User/sysMassage');?>" class="menu10"><b class="ic-uc"></b><!--<i class="iconfont">&#xe664;</i>&nbsp;&nbsp;-->系统消息<span class="messagenum" id='messagenum2'>0</span></a>
					  </div>
				
                      
		</div>
		<script>
			$("#head_nav ul").children("li").eq(3).addClass("cur");
		</script>
                 <!--<li class=""> <a class="otherBoxTitle" href="/Home/Fill/index">线下手动汇款<img src="/Public/Home/nofee.png"></a> </li>-->
            
                <!--  <li class=""> <a class="otherBoxTitle" href="/Home/Fill/zhifu_add">支付宝手动汇款<img src="/Public/Home/nofee.png"></a> </li>
                 <li class="cur"> <a class="otherBoxTitle" href="/Home/Fill/bank">银行汇款<img src="/Public/Home/nofee.png"></a> </li>
           -->
        </ul>
      </div>
      
      <div class="rightArea3">
				<div class="riskArea">
					<span class="icon"></span> <span class="hinttext"> <span class="define"><?php echo ($art["title"]); ?></span><span> <?php echo ($art["content"]); ?>
 </span> </span>
				</div>
			</div>
            
            <div class="mainBox2">
          
         
			
		  <div class="content">
          <style>
		  #tips2bank { margin-left:40px;}
          		#tips2bank li{ line-height:45px;}
          </style>
          <!--<ul id="tips2bank">
							<li><span class="c1">充值方式： </span><span class="c2" id="fownerName1">支付宝</span><span class="c3"></span></li> 
							<li><span class="c1">收款帐号：</span><span class="c2" id="fownerName2"><?php echo ($sys["alipay"]); ?>  </span></li> 
							<li><span class="c1">收款人名：</span><span class="c2" id="fownerName3"><?php echo ($sys["alipay_name"]); ?></span></li> 
					<li><span class="c1">附言内容：</span><span class="c2" id="fownerName"><?php echo ($auth["id"]); ?></span></li> 
						
            <div>
		  </div>
		  <input name="optEmail" value="<?php echo ($sys["alipay"]); ?>" type="hidden">
		  <input name="title" value="<?php echo ($num); ?>" type="hidden">
          <li><span class="c1">充值金额：</span>
            <input style="margin-left:55px;" name="money" onkeyup="javascript:buyTurnoverValue();" class="input" id="payAmount" value="100" size="20" type="text">
            元</span></li>
          			<input id="button_10" type="submit" value="确认充值" style="width:130px; height:45px; border-radius:5px; margin-top:8px; background:#337ab7; color:#fff; font-size:16px; border:0px;"> 
</ul>-->
<!--新加-->
<style type="text/css">
  .qh_both{
    width: 950px;
    color: #676666;
    margin-left: 200px;
   
    background: white;
    padding-left:40px;
    padding-top: 40px;

    padding-bottom: 100px;
  }

  .qh_tab{
    width: 100%;
    height: 50px;
    overflow: hidden;
     text-align: right;
  }
  .qh_tab_a,.qh_tab_b,.qh_tab_c{
    width: 160px;
    height: 100%;
    margin-right: 3px;
    
    float: left;
    background: #ebe7e5;
    text-align: center;
    line-height: 50px;
    font-size: 18px;
    font-weight: 600;
    cursor:pointer;
    color: #7d7d7d;
  }
  .qh_tab_c{
    background:#FF6000;
    color:white;
  }

  .qh_tab c{
    color: #5271DF;
    display: inline-block;
    margin-right: 40px;
    font-size: 16px;
  }

  .qh_block{
    padding-top: 30px;
  }

 /* .qh_block_a{

    display: block;
  }
  .qh_block_b{
    display: none;
  }
  .qh_block_c{
    display: none;
  }*/
  
   .qh_block_a{

    display: none;
  }
  .qh_block_b{
    display: none;
  }
  .qh_block_c{
    display: block;
  }

  .qh_record{
    width: 95%;
    
   
    margin-top: 100px;
  }
  
  .qh_record_title p{
    margin-right: 188px;
  }
  .qh_record_table{
    width: 100%;
    margin-top: 5px;
  }
  .qh_record_table table{
    width: 100%;
    border: 1px solid #ddd;
  }
  .qh_record_table table td{
    padding-top: 10px;
    padding-bottom: 10px;
    width: 20%;
  }
  
  
  .qh_record_table table tr{
    text-align: center;
  }
  .qh_record_table table tr:first-child{
    background: #f9f9f9;
    
  }
  .qh_record_table table tr td{
    font-size: 12px;
  }
  .qh_table_img img{
    width: 152px;
    height: 30px;
    
  }
  .sub{
    
    top: 64px;
  }
  .qh_sub{
    background: white;
  }
  
  /*input[placeholder], [placeholder], *[placeholder]{
    color: red !important;
  }*/
 
  
  input.qh_input1::-webkit-input-placeholder{ /*WebKit browsers*/

    color: #8e8d8d;

  }

  input.qh_input1::-moz-input-placeholder{ /*Mozilla Firefox*/

    color: #8e8d8d;

  }

  input.qh_input1::-ms-input-placeholder{ /*Internet Explorer*/ 

    color: #8e8d8d;

  } 



  input.qh_input2::-webkit-input-placeholder{ /*WebKit browsers*/

    color: #202020;

  }

  input.qh_input2::-moz-input-placeholder{ /*Mozilla Firefox*/

    color: #202020;

  }

  input.qh_input2::-ms-input-placeholder{ /*Internet Explorer*/ 

    color: #202020;

  } 



  input.qh_input3::-webkit-input-placeholder{ /*WebKit browsers*/

    color: #fd0107;

  }

  input.qh_input3::-moz-input-placeholder{ /*Mozilla Firefox*/

    color: #fd0107;

  }

  input.qh_input3::-ms-input-placeholder{ /*Internet Explorer*/ 

    color: #fd0107;

  } 


</style>
<script type="text/javascript">
  $(function(){
    $(".qh_tab_a").click(function(){
      $(this).css({"background":"#FF6000","color":"white"}).siblings().css({"background":"#ebe7e5","color":"#7d7d7d"});

      $(".qh_tab a").css({"color": "#5271DF","display": "inline-block","margin-right": "40px","font-size": "16px","background":"white"})

      $(".qh_block_a").css("display","block").siblings().css("display","none");
    })
    $(".qh_tab_b").click(function(){
      $(this).css({"background":"#FF6000","color":"white"}).siblings().css({"background":"#ebe7e5","color":"#7d7d7d"});

      $(".qh_tab a").css({"color": "#5271DF","display": "inline-block","margin-right": "40px","font-size": "16px","background":"white"})

      $(".qh_block_b").css("display","block").siblings().css("display","none");
    })
    $(".qh_tab_c").click(function(){
      $(this).css({"background":"#FF6000","color":"white"}).siblings().css({"background":"#ebe7e5","color":"#7d7d7d"});

      $(".qh_tab a").css({"color": "#5271DF","display": "inline-block","margin-right": "40px","font-size": "16px","background":"white"})

      $(".qh_block_c").css("display","block").siblings().css("display","none");
    })
  })
</script>
  <div class="qh_both">
    <div class="qh_tab">
   <!--   <div class="qh_tab_a">支付宝充值</div>
      <div class="qh_tab_b">银行卡充值</div>-->
      <div class="qh_tab_c">网银充值</div>
		
      <a href="<?php echo U('Help/index',array('article_id'=>'59'));?>" style="color:#3259da">充值汇款帮助？</a>
		
    </div>
    <div class="qh_block">
      <div class="qh_block_a">
        <div>
          <h4 style="color:black;font-size:16px;font-weight:600;">注意事项：</h4>
          <p style="font-size:14px;">1.此方式仅接受<span style="color:#FF6100"><?php echo ((isset($config['pay_min_money']) && ($config['pay_min_money'] !== ""))?($config['pay_min_money']):'0'); ?>元以上（含）</span>的银行汇款，充值没有手续费。</p>
          <p style="font-size:14px;">2.您需先填写汇款金额和账号并提交订单，然后向我们指定的银行账号进行汇款。</p>
          <p style="font-size:14px;">3.汇款金额会自动生成小数点，汇款时请按照提交金额进行汇款<span style="color:#FF6100">（含小数点）</span>。</p>
        </div>
        <form action="<?php echo U('Pay/rechargeByMan');?>" method="post">
		<input type="hidden" name="type" value="1" >
        <table width="700px" style="border-collapse:collapse;margin-top:40px" border="0" cellpadding="1" cellspacing="1" id="aaa">

            <tr>
              <td height="30"  class="tdwp" style="vertical-align:top;width:87px !important;font-size:14px;padding-top:15px;">汇款金额(￥):</td>
              <td >

                <input placeholder="请填写充值金额" name="p3_Amt" type="text" onblur="pay_amount(this,<?php echo ($config['pay_min_money']); ?>);" onkeyup="clearNoNum(this);" style="border:1px solid #CCCCCC;height:40px;line-height:35px; width:353px;background:#FAFAFA;padding-left:5px" size="15" class="qh_input1" /><br>
                <span style="color:#FF6100;font-size:14px;">请严格按照上述金额汇款</span></td>


            </tr> 
        </table>
		<script type='text/javascript'>
			function pay_amount(ob,min){
				var num = $(ob).val();
				var arr = num.split('.');
				//console.log(arr.length);
				if(arr.length != 1 && arr[1] != '00' ){
			//	alert(11)
					return false;
				}
				
				num = Number(num);
				num = parseInt(num*100)/100;
				
				
				var num_r = ( Number(<?php echo (session('USER_KEY_ID')); ?>)/1000 - parseInt(Number(<?php echo (session('USER_KEY_ID')); ?>)/1000))*1000;
				var num_r = parseInt(num_r)/100;
				
				num = Math.max(num,Number(min));
				var num_s = num + num_r;
				num_s = parseInt(num_s*100)/100;
				
				$(ob).val(num_s);
			}
		</script>

        <table width="700px" style="border-collapse:collapse;margin-top:15px" border="0" cellpadding="1" cellspacing="1" id="aaa">
            <tr>
              <td height="30"  class="tdwp" style="vertical-align:top;width:87px !important;font-size:14px;padding-top:15px;">&nbsp;&nbsp;&nbsp;汇款人姓名:</td>
              <td >

                <input   type="text"  disabled="disabled"  style="border:1px solid #CCCCCC;height:40px;line-height:20px; width:360px;background:#FAFAFA;padding-left:5px;font-size:14px;" size="15" placeholder="<?php echo ($member["name"]); ?>" class="qh_input2"/><br>
				 <input  type="hidden" name="member_name" value="<?php echo ($member["name"]); ?>"  />


                <span style="color:#FF6100;font-size:14px;">只允许使用本人的支付宝进行转账充值</span></td>

            </tr> 
        </table>


        <table width="700px" style="border-collapse:collapse;margin-top:15px" border="0" cellpadding="1" cellspacing="1" id="aaa">
            <tr>
              <td height="30"  class="tdwp" style="vertical-align:top;width:87px !important;font-size:14px;padding-top:15px;">&nbsp;&nbsp;&nbsp;支付宝账号:</td>

              <td >
                <input placeholder="请输入您的支付宝账号" name="account" type="text" onkeyup="var num_ac = $(this).val()*(1-<?php echo ($config['huanxun_fee']); ?>);$('#actual').html(num_ac);" id="p3_Amt" style="border:1px solid #CCCCCC;height:40px;line-height:20px; width:353px;background:#FAFAFA;padding-left:5px;font-size:14px;" onkeyup="clearNoNum(this);" size="15" class="qh_input1"/><br>
                <span style="color:#FF6100;font-size:14px;">请在这里填写您汇款所使用的支付宝账号</span></td>

            </tr> 
        </table>

        <input type="submit" value="提&nbsp;&nbsp;交"  class=" btn btn-default anniu_01" id="SubTran"  style="background:#FF6000;color:white;width:120px;height:40px;line-height:40px;font-weight:600;font-size:18px;margin-left:354px;margin-top:10px" />
        </form>
        <p style="margin-top:50px;font-size:22px;color:#FF6000;font-weight:600">请您在提交完成后将准确的金额汇入如下账号</p>
        <div style="background:#FAFAFA;width:660px;padding:20px;padding-bottom:5px;margin-top:15px">

          <p><span style="color:gray;font-size:16px;">开户行：</span><span style="font-size:18px"><?php echo ((isset($bank[1]['bank_adddress']) && ($bank[1]['bank_adddress'] !== ""))?($bank[1]['bank_adddress']):'暂无'); ?></span></p><br>
          <p style="margin-bottom:10px"><span style="color:gray;font-size:16px;">户&nbsp;&nbsp;&nbsp;名：</span><span style="font-size:18px"><?php echo ((isset($bank[1]['bank_name']) && ($bank[1]['bank_name'] !== ""))?($bank[1]['bank_name']):'暂无'); ?></span></p>
          <p><span style="color:gray;font-size:16px;">账&nbsp;&nbsp;&nbsp;号：</span><span style="font-size:32px;color:#FF6000;"><?php echo ((isset($bank[1]['bank_no']) && ($bank[1]['bank_no'] !== ""))?($bank[1]['bank_no']):'暂无'); ?></span></p>
        </div>

        <div class="qh_record">
          <div class="qh_record_title">
            <p style="font-size:17px;color:#FF6000;font-weight:600;display:inline-block;width:20%;">&nbsp;&nbsp;&nbsp;充值记录</p>
            <span style="font-size:14px;color:#FF1917;">超过3个小时的汇款订单将失效，请重新生成汇款订单并汇款。</span>
            <span style="font-size:14px;"><a href="<?php echo U('Help/index?id=62');?>" style="color: #2875CA;">充值不到账如何处理？</a></span>
          </div>
          <div class="qh_record_table">
            <table>
              <tr >
                <td style="font-size:14px;">订单号</td>
                <td style="font-size:14px;">充值金额</td>
                <td style="font-size:14px;">充值账号</td>
                <td style="font-size:14px;">充值时间</td>
                <td style="font-size:14px;">状态</td>
              </tr>
			   <?php if(is_array($list)): $key = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($key % 2 );++$key;?><tr>
				<td><?php echo (date('YmdHi',$vo["add_time"])); echo ($id); ?></td>
				<!-- <td><?php if(($vo["type"]) == "1"): ?>人工充值<?php else: ?>网银充值<?php endif; ?></td> -->
				<td><?php echo ((isset($vo["money"]) && ($vo["money"] !== ""))?($vo["money"]):0); ?></td>
				<td><?php echo ($vo["account"]); ?></td>
				<td><?php echo (date('Y-m-d H:i:s',$vo["add_time"])); ?></td>
				<td style="color:#FE7321">
					<?php if(($vo["status"]) == "1"): ?>充值成功<?php endif; ?>
					<?php if(($vo["status"]) == "0"): ?>等待审核<?php endif; ?>
					<?php if(($vo["status"]) == "-1"): ?>充值失败<?php endif; ?>
					<?php if(($vo["status"]) == "2"): ?>充值失败<?php endif; ?>
				</td>
				</tr><?php endforeach; endif; else: echo "" ;endif; ?>
			
              <!-- <tr> -->
                <!-- <td>2458201702211342270021</td> -->
                <!-- <td>2000.00</td> -->
                <!-- <td>15887586985</td> -->
                <!-- <td>2017-02-21 13:42:27</td> -->
                <!-- <td style="color:#FE7321">充值成功</td> -->
              <!-- </tr> -->
              <!-- <tr> -->
                <!-- <td>2458201702211342270021</td> -->
                <!-- <td>2000.00</td> -->
                <!-- <td>15887586985</td> -->
                <!-- <td>2017-02-21 13:42:27</td> -->
                <!-- <td style="color:#FE7321">等待充值</td> -->
              <!-- </tr> -->
             
            </table>
			
          </div>
          <div class="page" style=" min-width:200px !important; float:right;">
                    <?php echo ($page); ?>
              </div>
        </div>

      </div>
 <!-- /////////////////////////////////////////////////////////////////////////////// -->

  <div class="qh_block_b">
        <div>

          <h4 style="color:black;font-size:16px;font-weight:600;">注意事项：</h4>
          <p style="font-size:14px;">1.此方式仅接受<span style="color:#FF6100"><?php echo ((isset($config['bank_min_money']) && ($config['bank_min_money'] !== ""))?($config['bank_min_money']):'0'); ?>元以上（含）</span>的银行汇款，充值没有手续费。</p>
          <p style="font-size:14px;">2.您需先填写汇款金额和账号并提交订单，然后向我们指定的银行账号进行汇款。</p>
          <p style="font-size:14px;">3.汇款金额会自动生成小数点，汇款时请按照提交金额进行汇款<span style="color:#FF6100">（含小数点）</span>。</p>

        </div>
        <form action="<?php echo U('Pay/rechargeByMan');?>" method="post">
		<input type="hidden" name="type" value="2" >
        <table width="700px" style="border-collapse:collapse;margin-top:40px" border="0" cellpadding="1" cellspacing="1" id="aaa">

            <tr>
              <td height="30"  class="tdwp" style="vertical-align:top;width:87px !important;font-size:14px;padding-top:15px;">汇款金额(￥):</td>
              <td >

                <input placeholder="请填写充值金额" name="p3_Amt" type="text"  onblur="pay_amount(this,<?php echo ($config['bank_min_money']); ?>)"  id="p3_Amt" style="border:1px solid #CCCCCC;height:40px;line-height:20px; width:353px;background:#FAFAFA;padding-left:5px;font-size:14px;" onkeyup="clearNoNum(this);" size="15" class="qh_input1"/><br>
                <span style="color:#FF6100;font-size:14px;">请严格按照上述金额汇款</span></td>


            </tr> 
        </table>


        <table width="700px" style="border-collapse:collapse;margin-top:15px" border="0" cellpadding="1" cellspacing="1" id="aaa">
            <tr>
              <td height="30"  class="tdwp" style="vertical-align:top;width:87px !important;font-size:14px;padding-top:15px;">&nbsp;&nbsp;&nbsp;汇款人姓名:</td>
              <td >

                <input   disabled="disabled"  type="text" style="border:1px solid #CCCCCC;height:40px;line-height:20px; width:360px;background:#FAFAFA;padding-left:5px;font-size:14px;" size="15" placeholder="<?php echo ($member["name"]); ?>" class="qh_input2"/><br>
				<input  type="hidden"  name="member_name"   value="<?php echo ($member["name"]); ?>"  />
                <span style="color:#FF6100;font-size:14px;">只允许使用本人的银行卡进行转账充值</span></td>


            </tr> 
        </table>


        <table width="700px" style="border-collapse:collapse;margin-top:15px" border="0" cellpadding="1" cellspacing="1" id="aaa">
            <tr>
              <td height="30"  class="tdwp" style="vertical-align:top;width:87px !important;font-size:14px;padding-top:15px;">&nbsp;&nbsp;&nbsp;汇款人账号:</td>

              <td >

                <input placeholder="请输入您的银行卡账号" name="account" type="text"  style="border:1px solid #CCCCCC;height:40px;line-height:35px; width:353px;background:#FAFAFA;padding-left:5px"  size="15" class="qh_input1"/><br>
                <span style="color:#FF6100;font-size:14px;">请在这里填写您汇款所使用的银行卡账号</span></td>


            </tr> 
        </table>

        <input type="submit" value="提&nbsp;&nbsp;交"  class=" btn btn-default anniu_01" id="SubTran"  style="background:#FF6000;color:white;width:120px;height:40px;line-height:40px;font-weight:600;font-size:18px;margin-left:354px;margin-top:10px" />
        </form>
        <p style="margin-top:50px;font-size:22px;color:#FF6000;font-weight:600">请您在提交完成后将准确的金额汇入如下账号</p>
        <div style="background:#FAFAFA;width:660px;padding:20px;padding-bottom:5px;margin-top:15px">


          <p><span style="color:gray;font-size:16px;">开户行：</span><span style="font-size:18px"><?php echo ((isset($bank[0]['bank_adddress']) && ($bank[0]['bank_adddress'] !== ""))?($bank[0]['bank_adddress']):'暂无'); ?></span></p><br>
          <p style="margin-bottom:10px"><span style="color:gray;font-size:16px;">户&nbsp;&nbsp;&nbsp;名：</span><span style="font-size:18px"><?php echo ((isset($bank[0]['bank_name']) && ($bank[0]['bank_name'] !== ""))?($bank[0]['bank_name']):'暂无'); ?></span></p>
          <p><span style="color:gray;font-size:16px;">账&nbsp;&nbsp;&nbsp;号：</span><span style="font-size:32px;color:#FF6000;"><?php echo ((isset($bank[0]['bank_no']) && ($bank[0]['bank_no'] !== ""))?($bank[0]['bank_no']):'暂无'); ?></span></p>
        </div>

        <div class="qh_record">
          <div class="qh_record_title">
            <p style="font-size:17px;color:#FF6000;font-weight:600;display:inline-block;width:20%;">&nbsp;&nbsp;&nbsp;充值记录</p>
            <span style="font-size:14px;color:#FF1917;">超过3个小时的汇款订单将失效，请重新生成汇款订单并汇款。</span>
            <span style="font-size:14px;"><a href="<?php echo U('Help/index?id=62');?>" style="color: #2875CA;">充值不到账如何处理？</a></span>
          </div>
          <div class="qh_record_table">
            <table>
              <tr >
                <td style="font-size:14px;">订单号</td>
                <td style="font-size:14px;">充值金额</td>
                <td style="font-size:14px;">充值账号</td>
                <td style="font-size:14px;">充值时间</td>
                <td style="font-size:14px;">状态</td>
              </tr>
			  <?php if(is_array($list)): $key = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($key % 2 );++$key;?><tr>
				<td><?php echo (date('YmdHi',$vo["add_time"])); echo ($id); ?></td>
				<!-- <td><?php if(($vo["type"]) == "1"): ?>人工充值<?php else: ?>网银充值<?php endif; ?></td> -->
				<td><?php echo ((isset($vo["money"]) && ($vo["money"] !== ""))?($vo["money"]):0); ?></td>
				<td><?php echo ($vo["account"]); ?></td>
				<td><?php echo (date('Y-m-d H:i:s',$vo["add_time"])); ?></td>
				<td style="color:#FE7321">
					<?php if(($vo["status"]) == "1"): ?>充值成功<?php endif; ?>
					<?php if(($vo["status"]) == "0"): ?>等待审核<?php endif; ?>
					<?php if(($vo["status"]) == "-1"): ?>充值失败<?php endif; ?>
					<?php if(($vo["status"]) == "2"): ?>充值失败<?php endif; ?>
				</td>
				</tr><?php endforeach; endif; else: echo "" ;endif; ?>

              <!-- <tr> -->
                <!-- <td>2458201702211342270021</td> -->
                <!-- <td>2000.00</td> -->
                <!-- <td>15887586985</td> -->
                <!-- <td>2017-02-21 13:42:27</td> -->
                <!-- <td style="color:#FE7321">充值成功</td> -->
              <!-- </tr> -->
              <!-- <tr> -->
                <!-- <td>2458201702211342270021</td> -->
                <!-- <td>2000.00</td> -->
                <!-- <td>15887586985</td> -->
                <!-- <td>2017-02-21 13:42:27</td> -->
                <!-- <td style="color:#FE7321">等待充值</td> -->
              <!-- </tr> -->
             
            </table>
      <div class="page" style=" min-width:200px !important; float:right;">
                    <?php echo ($page); ?>
              </div>
          </div>
        </div>

      </div>






    <!-- /////////////////////////////////////////////////////////////////////////////// -->
      <div class="qh_block_c">

      <div>

          <h4 style="color:black;font-size:16px;font-weight:600;">注意事项：</h4>
          <p style="font-size:14px;">1.请填写充值金额,确认提交后会进入选择的银行进行在线付款；</p>
          <p style="font-size:14px;">2.充值成功后，请不要急着关闭支付成功的跳转页面，否则有可能不会到帐；</p>
          <p style="font-size:14px;">3.交易成功后请点击返回支付网站可以查看您的订单信息；</p>
          <p style="font-size:14px;">4.如有任何疑问,您可以联系在线客服,百币网为您提供专业客服咨询服务.</p>
        </div>
      <form id="form1" name="form1" action="<?php echo U('FillByBank/bank');?>" method="post" onsubmit="return VerifyData();" target="_blank">
          <table width="800px" style="border-collapse:collapse;margin-top:40px;" border="0" cellpadding="1" cellspacing="1" id="aaa">
            <tr>
              <td height="30"  class="tdwp" style="vertical-align:top;padding-left:0px;font-size:14px;padding-top:15px;">汇款金额(￥):</td>
              <td align="left">

                <input name="p3_Amt" placeholder="请输入充值金额" type="text" onkeyup="var num_ac = $(this).val()*(1-<?php echo ($config['huanxun_fee']); ?>);$('#actual').html(num_ac);" id="p3_Amt" style="border:1px solid #CCCCCC;height:40px;line-height:20px; width:360px;background:#FAFAFA;padding-left:5px;font-size:14px;" onkeyup="clearNoNum(this);" size="15" class="qh_input3"/><br>
                <span style="color:#FF0000;font-size:14px;">*&nbsp;充值金额不能低于<?php echo ($config["huanxun_min_money"]); ?>元且包含手续费<?php echo ($config['huanxun_fee'] * 100); ?>%,实际到账<span id="actual" style="font-size:14px;">0</span>元</span></td>



            </tr> 
            
            <!--<tr>
              <td height="30" align="right" class="tdwp"><span class="STYLE12">*</span> 兑换美元:</td>
              <td align="left">&nbsp;&nbsp;&nbsp;
                <input  type="text" id="p3_my" style="border:1px solid #CCCCCC;height:18px;line-height:20px; width:118px;"  size="15" disabled="disabled"/></td>
            </tr>-->
            <tr>
              <td  height="60" style="vertical-align:top;font-size:14px;padding-top:70px;">&nbsp;请选择银行:</td>
              <td align="left" style="padding-top:40px;"><div style="background:#FAFAFA;padding:20px;width:600px;height:260px;">
                  <table class="qh_table_img" width="100%" border="0" cellpadding="0" cellspacing="0" style="left:0; line-height:40px;">
                    <tr class="b_rig">
                      <td>
                      <input type="radio" name="pd_FrpId" value="1101" checked />
                        &nbsp;<img src="/Public/Home/images/bank/nongye.gif"/></td>
                      <td><input name="pd_FrpId" type="radio" value="1100" />
                        &nbsp;<img src="/Public/Home/images/bank/gongshang.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1106">
                        &nbsp;<img src="/Public/Home/images/bank/jianshe.gif" /></td>
                    </tr>
                    <tr>
                      <td><input name="pd_FrpId" type="radio" value="1108"/>
                        &nbsp;<img src="/Public/Home/images/bank/jiaotong.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1107">
                        &nbsp;<img src="/Public/Home/images/bank/zhongguo.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1102">
                        &nbsp;<img src="/Public/Home/images/bank/zhaohang.gif" /></td>
                    </tr>
                    <tr class="b_rig">
                      <td><input name="pd_FrpId" type="radio" value="1110">
                        &nbsp;<img src="/Public/Home/images/bank/minsheng.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1112">
                        &nbsp;<img src="/Public/Home/images/bank/guangda.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1103" >
                        &nbsp;<img src="/Public/Home/images/bank/xingye.gif" /></td>
                    </tr>
                    <tr class="b_rig">
                      <td><input name="pd_FrpId" type="radio" value="1104">
                        &nbsp;<img src="/Public/Home/images/bank/zhongxin.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1121"/>
                        &nbsp;<img src="/Public/Home/images/bank/pingan.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1111">
                        &nbsp;<img src="/Public/Home/images/bank/huaxia.gif" /></td>
                    </tr>
                    <tr class="b_rig">
                      <td><input name="pd_FrpId" type="radio" value="1109">
                        &nbsp;<img src="/Public/Home/images/bank/shangpufa.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1114">
                        &nbsp;<img src="/Public/Home/images/bank/gdb.gif" /></td>
                      <td><input name="pd_FrpId" type="radio" value="1119">
                        &nbsp;<img src="/Public/Home/images/bank/youzheng.gif" /></td>
                    </tr>
                  </table>
                </div></td>
            </tr>
            <tr>

              <td  colspan="2" align="right" style="height:23px;padding-top:0px;"><div style="padding-left:100px;text-align:left;"><span style="color:#FF0000;font-size:14px;">*个别银行不支持使用预留手机号验证码汇款，需要使用网银盾。</span></div></td>

            </tr>
            <tr>
              <td height="35" align="right">&nbsp;</td>
              <td height="40" align="left" valign="middle" style="text-align:center;padding-top:40px;">&nbsp;&nbsp;
                <input type="submit" value="马上冲值" name="SubTran" class=" btn btn-default anniu_01" id="SubTran"  style="background:#FF6000;color:white;padding:2px 30px;font-weight:600;font-size:16px;" />
                </td>
            </tr>


          </table>
          <input type="hidden" name="pa_MP" id="pa_MP" value="<?=$rows['username']?>" />
          <input size="50" type="hidden" name="pr_NeedResponse" id="pr_NeedResponse" value="1" />
        </form> 

        <div class="qh_record">
          <!-- <div class="qh_record_title"> -->
            <!-- <p style="font-size:15px;color:#FF6000;font-weight:600;display:inline-block;width:20%;">&nbsp;&nbsp;&nbsp;充值记录</p> -->
            <!-- <span style="font-size:12px;color:#FF1917;">超过3个小时的汇款订单将失效，请重新生成汇款订单并汇款。</span> -->
            <!-- <span style=""><a href="" style="color: #2875CA;">充值不到账如何处理？</a></span> -->
          <!-- </div> -->
          <!-- <div class="qh_record_table"> -->
            <!-- <table> -->
              <!-- <tr> -->
                <!-- <td>记录ID</td> -->
                <!-- <td>转入渠道</td> -->
                <!-- <td>数量</td> -->
                <!-- <td>发送时间</td> -->
                <!-- <td>状态</td> -->
              <!-- </tr> -->
              <!-- <tr> -->
                <!-- <td>1</td> -->
                <!-- <td>网银充值</td> -->
                <!-- <td>100.0000</td> -->
                <!-- <td>2017-02-21 13:42:27</td> -->
                <!-- <td><span style="color:#FE7321;border:1px solid #FE7321;padding:5px 16px;border-radius:5px">请付款</span></td> -->
              <!-- </tr> -->
              <!-- <tr> -->
                <!-- <td>1</td> -->
                <!-- <td>网银充值</td> -->
                <!-- <td>100.0000</td> -->
                <!-- <td>2017-02-21 13:42:27</td> -->
                <!-- <td><span style="color:#FE7321;border:1px solid #FE7321;padding:5px 16px;border-radius:5px">请付款</span></td> -->
              <!-- </tr> -->
             
            <!-- </table> -->
          <!-- </div> -->
        </div>

        </div>
    </div>
  </div>
 
        <!--<table width="96%" border="0" cellpadding="0" cellspacing="5">
          <tr >
            <td align="left" style="padding-top:10px;"><strong class="STYLE1">在线冲值说明：</strong></td>
          </tr>
          <tr>
            <td align="left"><span class="font-hblack"><span >
              <div style=" line-height:22px; font-size:12px;"> (1).请按表格填写准确的在线冲值信息,确认提交后会进入选择的银行进行在线付款! </div>
              <div style=" line-height:22px;font-size:12px;"> (2).交易成功后请点击返回支付网站可以查看您的订单信息! </div>
              <div style=" line-height:22px;font-size:12px;"> (3).如有任何疑问,您可以联系 在线客服,皇冠现金网为您提供365天×24小时不间断的友善和专业客户咨询服务! </div>
              <div style=" line-height:22px;font-size:12px;"> (4).注意：充值成功后，请不要急着关闭支付成功的跳转页面，否则有可能不会到帐。 </div>
              <div style=" line-height:22px;font-size:12px;"> (5).如需网银汇款/ATM转账或支付宝存款，请联系在线客服索取存款账号！ </div>
              </span> </span></td>
          </tr>
        </table>-->


<!--新加-->
        </div>
        <!--    <img src="/Public/Home/2h.jpg" />-->
</div>
  <!--<div style="margin-top: 3px;" class="entrustTen lasttenorder">
		<div class="Tentitle">

			<span class="lightblue4">充值记录</span>
		</div>
		<div class="coinBoxBody">
			<table width="100%">
				<tbody>
					<tr>	
							<th width="190">订单号</th>
							<th width="190">时间</th>
							<th width="180">充值方式</th>
							<th width="180">金额</th>
							<th width="180">状态</th>
						
						</tr>
					<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "$empty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
					  <td><?php echo ($vo["tradeno"]); ?> </td>
                    <td><?php echo (date("Y-m-d H:i:s",$vo["ctime"])); ?></td>
                     <td>支付宝手动充值</td>
                     <td><?php echo ($vo['num']); ?></td>
                    <td><?php echo ($vo["status_fill"]); ?></td>
					
					</tr><?php endforeach; endif; else: echo "$empty" ;endif; ?>
				</tbody>
			</table>
		</div>

		<div class="page">
			<ul>
			<li><a href="<?php echo ($path); ?>/Fill/zhifu_add/page/1">首页</a></li>
			<li><a href="<?php echo ($path); ?>/Fill/zhifu_add/page/<?php echo ($page-1); ?>">上一页</a></li>
			<li><a href="<?php echo ($path); ?>/Fill/zhifu_add/page/<?php echo ($page+1); ?>">下一页</a></li>
			<li><a href="<?php echo ($path); ?>/Fill/zhifu_add/page/<?php echo ($page_num); ?>">尾页</a></li>
			</ul>
		</div>
	</div>-->
</div>
</div>
<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>


<script>
		/*var $ = function(Id){
            return document.getElementById(Id);
        }*/
    
       
        //数字验证 过滤非法字符
        function clearNoNum(obj){
	        //先把非数字的都替换掉，除了数字和.
	        obj.value = obj.value.replace(/[^\d.]/g,"");
	        //必须保证第一个为数字而不是.
	        obj.value = obj.value.replace(/^\./g,"");
	        //保证只有出现一个.而没有多个.
	        obj.value = obj.value.replace(/\.{2,}/g,".");
	        //保证.只出现一次，而不能出现两次以上
	        obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
	        if(obj.value != ''){
	        var re=/^\d+\.{0,1}\d{0,2}$/;
                  if(!re.test(obj.value))   
                  {   
			          obj.value = obj.value.substring(0,obj.value.length-1);
			          return false;
                  }else{
					  $("#p3_my").val($("#p3_Amt").val()/6.5);
				  }
	        }
        }
<!--
//去掉空格
function check_null(string) { 
var i=string.length;
var j = 0; 
var k = 0; 
var flag = true;
while (k<i){ 
if (string.charAt(k)!= " ") 
j = j+1; 
k = k+1; 
} 
if (j==0){ 
flag = false;
} 
return flag; 
}
function VerifyData() {

var min_num=<?php echo ($config["huanxun_min_money"]); ?>;
if (document.form1.p3_Amt.value == "") {
			alert("请输入存款金额！")
			document.form1.p3_Amt.focus();
			return false;
}
if (document.form1.p3_Amt.value !="") {
		  if(document.form1.p3_Amt.value <min_num )
		  {
			alert("充值不能小于"+min_num+"元！")
			document.form1.p3_Amt.focus();
			return false;
		  }
}
}
	function url(s){
	location.href="<?=substr($_SERVER['HTTP_REFERER'],0,strlen($_SERVER['HTTP_REFERER'])-12) ?>/"+s;
	}
	
	
</script>
<script>
	$(function(){
		//alert(234);
		var type = <?php echo ($_GET['type']); ?>;
			//alert(type);
		if( type == 1){
			$('.qh_tab_a').click();
		}else if(type==2){
			$('.qh_tab_b').click();
		}
	})
	
</script>

<script>
$(".menu12").addClass("uc-current");
</script>
<style> 
.rightwidth{ width:340px;}
/*.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6{
	line-height: 0;
}*/
</style>
<!--footer start-->




<div class="coin_footer" style="margin-top:30px;">
	<!-- <div class="coin_hint" style="border:0">
		<h2><?php echo ((isset($info_one4["title"]) && ($info_one4["title"] !== ""))?($info_one4["title"]):"风险提示"); ?></h2>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ($config["risk_warning"]); ?></p>
	</div> -->
	
	<div class="coin_footerbar" style="background:#282828;">
		<div class="coin_footer_nav clearfix">
			<div class="coin_nav coin_copy left">
				<p><a href="<?php echo U('Index/index');?>"><img style="width:146px;height:68px;" src="<?php echo ($config["index_logo_footer"]); ?>"></a></p>
			</div>
			<div class="coin_nav left">
				<h2 style="color:white;">关于我们</h2>
				<ul>
				<?php if(is_array($team)): $i = 0; $__LIST__ = $team;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Art/details',array('team_id'=>$vo['article_id']));?>" target="_blank" class="left" style="color:white"><?php echo ($vo["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
			</div>
			<div class="coin_nav left">
				<h2 style="color:white">帮助中心</h2>
				<ul>
                <?php if(is_array($help)): $i = 0; $__LIST__ = $help;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Help/index',array('id'=>$vo['id']));?>" target="_blank" class="left" style="color:white"><?php echo ($vo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
			</div>
			<div class="coin_nav coin_nav02 left">
				<h2 class="clearfix" style="height:19px;margin-bottom:11px"><span class="left" style="color:white;">联系我们</span><!--<a href="#" id="coin_weixin" class="coin_wei left"></a>--></h2>
				<ul>
					<!-- <li>客服电话：<?php echo ((isset($config["tel"]) && ($config["tel"] !== ""))?($config["tel"]):"暂无"); ?></li> -->
					<li style="color:white;">客 服 QQ：<?php echo ((isset($config["qq1"]) && ($config["qq1"] !== ""))?($config["qq1"]):"暂无"); ?></li>
					<li><a href="mailto:<?php echo ($config['email']); ?>" style="color:white">客服邮箱：<?php echo ((isset($config["email"]) && ($config["email"] !== ""))?($config["email"]):"暂无"); ?></a></li>
					<li><a href="mailto:<?php echo ($config['business_email']); ?>" style="color:white">业务合作：<?php echo ((isset($config["business_email"]) && ($config["business_email"] !== ""))?($config["business_email"]):"暂无"); ?></a></li>
				</ul>
			</div>
			<div class="coin_nav coin_nav02 left rightwidth" style="position:relative;">
              <div style="float:left; padding-top:25px; padding-left:10px;" ><!--    <img style=" width:100px;" src="<?php echo ($config['weixin']); ?>"/>--></div>
              <div style=" float:left; padding-left:10px;color:white" >
				<!-- <p class="coin_phone400"><?php echo ((isset($config["tel"]) && ($config["tel"] !== ""))?($config["tel"]):"暂无"); ?></p> -->
				
				<!-- <p class="coin_phoneqq" style="color:white;padding-top:30px;font-size:14px">众泰网总群：<?php echo ((isset($config["qqqun1"]) && ($config["qqqun1"] !== ""))?($config["qqqun1"]):"暂无"); ?><br>众泰网一群：<?php echo ((isset($config["qqqun2"]) && ($config["qqqun2"] !== ""))?($config["qqqun2"]):"暂无"); ?><br>众泰网二群：<?php echo ((isset($config["qqqun3"]) && ($config["qqqun3"] !== ""))?($config["qqqun3"]):"暂无"); ?><br>众泰网三群：<?php echo ((isset($config["qqqun4"]) && ($config["qqqun4"] !== ""))?($config["qqqun4"]):"暂无"); ?><br><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq1']); ?>&site=qq&menu=yes" target="_blank">在线客服</a></p> -->
				<!-- <p>工作日:9-19时 节假日:9-18时</p> -->
               </div>
				<!-- <div class="group" style="left:12px;margin-to
				p: 40px">
					<ul class="qq_all" style="    margin-left: 10px;">
						<li><a style="flont:left; " href="javascript:void(0)"><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>官方群<img style="margin-top:5px;" src="/Public/Home/images/xiala.png"></a>
							<ul style="margin-left: 105px;">
								<li><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>官方1群 <?php echo ((isset($config["qqqun1"]) && ($config["qqqun1"] !== ""))?($config["qqqun1"]):"暂无"); ?></li>
								<li><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>官方2群 <?php echo ((isset($config["qqqun2"]) && ($config["qqqun2"] !== ""))?($config["qqqun2"]):"暂无"); ?></li>
								<li><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>官方3群 <?php echo ((isset($config["qqqun3"]) && ($config["qqqun3"] !== ""))?($config["qqqun3"]):"暂无"); ?></li>
							</ul>
						</li>
					</ul>
				</div> -->
			</div>
		</div>
	</div>
<div class="footer_aq" style="background:#282828;width:100%;margin:0px">
	<p style="color:white"><?php echo ((isset($config["copyright"]) && ($config["copyright"] !== ""))?($config["copyright"]):"暂无"); ?></p>
	<p style="color:white"><?php echo ((isset($config["record"]) && ($config["record"] !== ""))?($config["record"]):"暂无"); ?></p>
</div>
<div id="weixin" style="position:absolute; bottom:88px; left:50%; margin-left:170px; display:block;"><!--<img src="<?php echo ($config["logo"]); ?>">--></div>

<script>
	$('#coin_weixin').mouseover(function(){
		$('#weixin').show();
	}).mouseout(function(){
		$('#weixin').hide();
	});
</script>
</div>
<!--footer end-->




</body></html>