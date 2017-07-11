<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html> 
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" >
<meta name="renderer" content="webkit">
<meta name="keywords" content=""/>
<meta name="description" content=""/>
<meta property="wb:webmaster" content="8af72a3a7309f0ee">
    <title><?php if(!empty($article)): echo ($article["title"]); ?>-<?php endif; echo ((isset($config["title"]) && ($config["title"] !== ""))?($config["title"]):"币种交易网站"); ?></title>
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
            <li class="multi hot" style="width:115px;"><a href="<?php echo U('Orders/index',array('currency'=>$currency_back[0]['currency_mark']));?>">币种交易</a>
               <!-- <div class="sub">
						<?php if(is_array($currency_header)): $i = 0; $__LIST__ = $currency_header;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="qh_sub"><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>"><img src="<?php echo ($vo["currency_logo"]); ?>"><?php echo ($vo["currency_name"]); ?></a></div><?php endforeach; endif; else: echo "" ;endif; ?> 
                </div> -->
            </li>
            <li><a href="<?php echo U('Zhongchou/index');?>">众筹</a></li> 
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

<!--top end-->
<!--header end-->
<style>
.pull-left{ float:left;}
.pull-right{ float:right;}
.link a{ color:#000;}
.link{ margin:0px auto; width:100%;}
.pt_img{ width:158px; height:61px;}
.col-xs-2 {
    width: 16.66666667%;
	float: left;
}
.carousel-indicators{width:100% !important;}
p{
	margin-bottom: 0px !important;
}
h1{
	margin-top: 0px !important;
}
#qh_carousel{
	position: absolute; width:100%;
	top: 74px;
}
/*#carousel-example-generic{
	width:100% !important;
	
}*/
.carousel-indicators{

}
.carousel-inner{
	height: 100% !important;
}
.carousel-indicators{
	left: 25% !important;
}
.carousel-indicators li{
	width: 14px !important;
	height: 14px !important;
	border-radius: 7px !important;
	margin-right: 6px !important;
	
}
/*.carousel-indicators .active{
	background: white !important;
}*/
#chart_canvasGroup{
	width: 800px !important
}
#qh_carousel img{height:360px !important; width:100%}
.active img{height:360px !important;}
/*.qh_sub img{
	margin-top:-6px;
}*/
.qh_sub{
	width: 200px;
}
<?php if(($_SESSION['is_phone']) != "1"): ?>.section.clear_fix.p_t_30{
	min-width: 1200px !important;
}
.market_right{
	width:1050px !important;
}
.sub_flash{
	width: 72% !important;
}
.qh_wxts{
	padding-left: 13% !important;
}<?php endif; ?>

</style>
<script type="text/javascript" src="/Public/Home/js/focus.js"></script>
<script type="text/javascript" src="/Public/Home/js/Fnc.js"></script>
<!-- <script type="text/javascript" src="/Public/Home/js/zc.js"></script> -->
<script type="text/javascript" src="/Public/Home/js/1.js"></script>
<script type="text/javascript" src="/Public/Home/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="/Public/Home/css/zc.css">
<link rel="stylesheet" type="text/css" href="/Public/Home/css/bootstrap.css">
<!--k线图有关-->
<link rel="stylesheet" type="text/css"
	href="/Public/Home/css/kline.css">
<script src="/Public/Home/js/jquery-1.js"></script>
<script src="/Public/Home/js/kline.js"></script>
<script src="/Public/Home/js/highstock.js"></script>
<script src="/Public/Home/js/coinindex.js"></script>
<!-- <script src="/Public/Home/js/jquery.tablesort.js"></script> -->
<!-- <script src="/Public/Home/js/jquery.tablesort.min.js"></script> -->
<script src="/Public/Home/js/sort.js"></script>
<!-- <script src="/Public/Home/js/jquery-latest.min.js"></script> -->
<!-- <script src="/Public/Home/js/zepto.js"></script> -->

<!-- <script> -->

<!-- $(function() { -->
	<!-- $.get("/Home/Orders/getOrdersKline",{"currency":26,"time":"kline_1h"},function(orders){ -->
        <!-- kline($("#currency_mark").html()+"2"+$("#currency_trade_mark").html(),orders.kline_1h); -->

	<!-- }); -->
	
	<!-- $("#chart-control > button").click(function(){ -->
		<!-- $(this).addClass("btn-success").siblings().removeClass("btn-success"); -->
			 <!-- var time = $(this).attr('data-time'); -->
			 <!-- $.get("/Home/Orders/getOrdersKline",{"currency":26,"time":time},function(orders){ -->
			 <!-- kline($("#currency_mark").html()+"2"+$("#currency_trade_mark").html(),orders[time]); -->
		<!-- }); -->
	<!-- }); -->
<!-- }); -->
<!-- </script> -->
<!--k线图有关结束-->
<!--banner start-->

<div class="blank_400" style="height:260px;">
	<div class="ab_box" style="    top: -4px;">
		<div class="index_banner_box" id="index_banner_box">
			<div id="qh_carousel">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="height:330px !important;width:100%">
					<!-- Indicators -->
					<ol class="carousel-indicators">
					<?php if(is_array($flash)): $kk = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$voo): $mod = ($kk % 2 );++$kk;?><li data-target="#carousel-example-generic" data-slide-to="<?php echo ($kk -1); ?>"  <?php if(($kk) == "1"): ?>class='active'<?php endif; ?>  ></li><?php endforeach; endif; else: echo "" ;endif; ?>
					</ol>
					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<?php if(is_array($flash)): $k = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><div class="item <?php if(($k) == "1"): ?>active<?php endif; ?> ">
							<a href="<?php echo ($vo["jump_url"]); ?>"><img src="<?php echo ($vo["pic"]); ?>" class="qh_img" alt="<?php echo ($vo["title"]); ?>"></a>
						</div><?php endforeach; endif; else: echo "" ;endif; ?>
					</div>
					<!-- Controls -->
				</div>
			</div>
			<div class="index_t">
				<div class="section floor_top">
					<!-- 轮播的页码  开始 -->
					<ul id="page_list"></ul>
					<div class="index_login_box">
						<div class="login_box">
							<div class="opacity_bg"></div>
							<!--登录前 -->
							<?php if(empty($member)): ?><div class="tab tab01">
								<h4 class="title">登录<?php echo ((isset($config['name']) && ($config['name'] !== ""))?($config['name']):'虚拟币'); ?></h4>
								<p>
									<input name="email_or_phone" id="email"

									class="input_login mail_complete" data-type="*"
									data-msg-null="请输入用户名或手机" value="" placeholder="请输入用户名或手机"
									autocomplete="off" type="text">
								</p>
								<div class="relative">
									<div class="mail_complete_list absolute"></div>
								</div>
								<p>
									<input name="password" class="input_login" id="password" 
									data-type="*" data-msg-null="请输入密码" placeholder="请输入密码"
									type="password">
								</p>
								<div class="form_tip"></div>
								<p>
									<button class="btn btn_orange sign_btn loading" type="button"
									onclick="login()">登录</button>
								</p>
								<p class="help">
									<a href="<?php echo U('Login/findPwd');?>"
									target="_blank">忘记密码？</a>
								</p>
								<input name="step" value="" type="hidden">
							</div>
							<?php else: ?>
							<!--登录后 -->
							<style>
							.ab_box{    top: 24px;}
							</style>
							<div class="tab tab01">
								<h3 class="title">
									<a href="<?php echo U('User/index');?>"
									class="font_20"> 账号：<?php echo (session('USER_KEY')); ?> </a>
								</h3>
								<p>
									<a href="<?php echo U('User/index');?>" class="btn 
									btn_orange btn_url">账户中心</a>
								</p>
								<p class="m_t_10">
									<a href="<?php echo U('Entrust/manage');?>" class="btn btn_orange btn_url">委托管理</a>
								</p>
								<p class="button_box">
									<a  href="javascript:void(0)" onclick="confirm_fill();"  class="btn_white">充值</a>
									<a href="<?php echo U('User/draw');?>" class="btn_white">提现</a>
								</p>
							</div><?php endif; ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	function login() {
		var email = $('#email').val();
		var password = $('#password').val();
		if ($('#email').val().length <= 0) {
			layer.msg("请输入用户名");
			return;
		}
		if ($('#password').val().length <= 0) {
			layer.msg("请输入密码");
			return;
		}

		$.post("/Home/Login/checkLog", {
			email : email,
			pwd : password
		}, function(data) {
			layer.msg(data.info);
			<?php if(($_SESSION['is_phone']) == "1"): else: ?> $('.layui-layer-msg').css({position:'absolute',left:'88%',top:'15%'});<?php endif; ?>
			if (data.status == 1) {
				location.reload();
			}
		});

	}
</script>
<div class="hide">
	<input name="coin_type" value="cny_btc" type="hidden"> <input
		name="amount" value="" type="hidden">
</div>


<div style="padding-left:20%;" class="qh_wxts"><!--温馨提示：<?php echo ($config["wenxin_tishi"]); ?>--></div>


<div class="index_box_1 market_part" >
	<div class="section clear_fix p_t_300">
		
        <style type="text/css">
        	.market_sub{
        		border: 1px solid #ddd;
        	}
        	.qh_btc_title{
        		width: 100%;
        		height: 55px;
        	}
        	.qh_btc_title h1{
        		height: 55px;
        		color: #ff8839;
        		font-size: 18px;
        		margin-bottom: 0px;
        		line-height: 55px;
        		width: 200px;
        		text-align: center;
        		<!-- border-top:1px solid #ff8839; -->

        	}
        	.qh_btc_table{
        		width: 100%;
        	}
        	.qh_btc_table tr{
        		border-bottom: 1px solid #faf5f2;
        	}
        	.qh_btc_table thead tr:first-child{
        		background: #e6e6e6;
        		color: #7d7875;
        	}
			.qh_btc_table thead tr:hover{
				cursor:pointer;
			}
        	.qh_btc_table th{
        		text-align: center;
        		padding: 0px;
        		height: 50px;
        		line-height: 50px;
        		position: relative;
        		

        	}
        	.qh_btc_table th:first-child{
        		
        	}
        	.qh_btc_table td{
        		padding: 0px;
        		height: 50px;
        		line-height: 50px;
        		text-align: center;
        	}
        	.qh_btc_table td img{
        		width: 24px;
        		height: 24px;
        	}
        	.qh_btc_table tr td:first-child{
        		color: #7d7875;
        		font-weight: bold;
        	} 
        	.cagret-down{
        		position: absolute;
        		top: 26px;
        	}
        	.cagret-up{
        		position: absolute;
        		top: 14px;
        	}
			.qh_qujiaoyi{
				color:#e55600;
				line-height: 28px;
				border:1px solid #e55600;
				border-radius:3px;
				width:80px;
				height30px;
				cursor:ponter;
				margin:5px;
			}
			.qh_qujiaoyi:hover{
				background-color:#e55600;
				color:white;
			}
        	

        	
        </style>

        <script type="text/javascript">
			$(function(){


				var a = 1;
			/*setTimeout(function() { }, 20);*/
				$(".qh_btc_table th").click(function(){
					
					$(".qh_btc_table th").css("color","#7d7875")
					$(this).css("color","#FF8839");
					if(a%2 == 0){
						$('.qh_btc_table').find("i.cagret-up").css("border-bottom-color","");
						$(this).find("i.cagret-down").css("border-top-color","red");	
									
					}else{
						
						$(".qh_btc_table").find("i").css("border-top-color","");
						$(this).find("i.cagret-up").css("border-bottom-color","red");						
					}
					a++;
				
				})
				/*$(document).on("click",".qh_btc_table th.descending",function(){
				
					$(".qh_btc_table th").css("color","#7d7875");
					$(this).css("color","#FF8839");
					$(".qh_btc_table th i.cagret-down").css("border-top-color","#7d7875");
					$(".qh_btc_table th i.cagret-up").css("border-bottom-color","#7d7875");
					$(this).find("i.cagret-down").css("border-top-color","#FF8839");
					
					
				})*/
			
			
				/*$(document).on("click",".qh_btc_table th.ascending",function(){
				
					$(".qh_btc_table th").css("color","#7d7875");
					$(this).css("color","#FF8839");
					$(".qh_btc_table th i.cagret-down").css("border-top-color","#7d7875");
					$(".qh_btc_table th i.cagret-up").css("border-bottom-color","#7d7875");
					$(this).find("i.cagret-up").css("border-bottom-color","#FF8839");
				
				})*/
		});
		</script> 
            <div class="market_sub">
                <div class="qh_btc_title">
                	<h1>实时行情</h1>
                </div>
                <div class="example ex-1">
				  <table class="qh_btc_table" id="tblSort">
				   <thead>
                		<th>币种代码</th>
                		<th>币种简称</th>
                		<th>昨收盘 </th>
                		<th>今开盘 </th>
                		<th>最新价 </th>
                		<th>涨跌</th>
                		<th>成交量 </th>
                		<th>成交金额 </th>
                		<th>最高价 </th>
                		<th>最低价 </th>
						<th>去交易</th> 
					</thead>
					</table>
					<div class="dowebok"> 
						<table class="qh_btc_table"  id="tblSort">
						<?php if(is_array($currency_or)): $i = 0; $__LIST__ = $currency_or;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr style="color:white">
								<td style="width:10%"><span><?php echo ($vo["currency_mark"]); ?></span></td>
								<td style="width:13%"><span><?php echo ($vo["currency_name"]); ?></span></td>
								<td style="width:8%"><span><?php echo ((isset($vo["zuorishoupan"]) && ($vo["zuorishoupan"] !== ""))?($vo["zuorishoupan"]):"0.00"); ?></span></td>
								<td style="width:8%"><span><?php echo ((isset($vo["kai_price"]) && ($vo["kai_price"] !== ""))?($vo["kai_price"]):"0.00"); ?></span></td>
								<td style="width:8%"><span><?php echo (formatOrderNum($vo["new_price"])); ?></span></td>
								<td style="width:8%;">
									<?php if(($vo["zhangfu"]) > "0"): ?><span class="buy">+<?php echo ((isset($vo["zhangfu"]) && ($vo["zhangfu"] !== ""))?($vo["zhangfu"]):'0'); ?></span>
									<?php else: ?>
									<span class="sell"><?php echo ((isset($vo["zhangfu"]) && ($vo["zhangfu"] !== ""))?($vo["zhangfu"]):'0'); ?></span><?php endif; ?></td>
								<td style="width:10%;"><span><?php echo ((isset($vo["all_num"]) && ($vo["all_num"] !== ""))?($vo["all_num"]):"0.00"); ?></span></td>
								<td style="width:10%"><span><?php echo ((isset($vo["currency_trade_all"]) && ($vo["currency_trade_all"] !== ""))?($vo["currency_trade_all"]):"0.00"); ?></span></td>
								<td style="width:9%"><span><?php echo ((isset($vo["zuigao"]) && ($vo["zuigao"] !== ""))?($vo["zuigao"]):"0.000"); ?></span></td>
								<td style="width:8%"><span><?php echo ((isset($vo["zuidi"]) && ($vo["zuidi"] !== ""))?($vo["zuidi"]):"0.00"); ?></span></td>
								<td ><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>"><input value="去交易" class="qh_qujiaoyi" type="button"></a></td>
							</tr><?php endforeach; endif; else: echo "" ;endif; ?>
						</table>
					</div>
				</div>
				<link rel="stylesheet" href="/Public/Home/css/liMarquee.css">
				<style>
.dowebok tr:hover { text-decoration: underline;} 
.dowebok {height: 250px;padding-left:25px;} 
.qh_btc_table tr:hover{
        		background: underline;
        	}
				</style> 
				<script src="/Public/Home/js/jquery-1.7.2.min.js"></script>
				<script src="/Public/Home/js/jquery.liMarquee.js"></script>
				<script>
				$(document).ready(function(){
					$('.dowebok').liMarquee({
						direction: 'up',
						circular: true,
						loop: -1,
						runshort: true,
						scrollamount: 30
					});
				})
				</script>
				<!-- <script>
				$(document).ready(function(){
					var speed=30;
					var demo1 = document.getElementById("demo1");
					var demo = document.getElementById("demo");
					var demo2 = document.getElementById("demo2");
					demo2.innerHTML=demo1.innerHTML;
					function Marquee(){
						console.log(demo2.offsetTop);
						console.log(demo.offsetTop);
					if(demo2.offsetTop-demo.scrollTop<=0){
					demo.scrollTop-=demo1.offsetHeight}
					else{
					
					demo.scrollTop++;
					}
					}
					var MyMar=setInterval(Marquee,speed)
					demo.onmouseover=function() {clearInterval(MyMar)}
					demo.onmouseout=function() {MyMar=setInterval(Marquee,speed)}
				})
				
				</script> -->
				<script>
					//30s update-to-data
					setInterval(function(){
						$.ajax({
							url:"<?php echo U('Index/currency_info');?>",
							type:'POST',
							data:null,
							dataType:'JSON',
							success:function(data){
								var arr = new Array();
								arr = eval(data);
								arr.forEach(function(value, index, array) {
										$('#new_price'+value['currency_id']).html(value['new_price']);
										$('#H24_done'+value['currency_id']).html(value['24H_done_num']);
										$('#H24_money'+value['currency_id']).html(value['24H_done_money']);
										$('#currency_all_money'+value['currency_id']).html(value['currency_all_money']);
										$('#24H_change'+value['currency_id']).html(value['24H_change']);
										$('#7D_change'+value['currency_id']).html(value['7D_change']);
										if(Number(value['24H_change']) > 0){
											$('#24H_change'+value['currency_id']).attr('class','sell');
											$('#24H_change'+value['currency_id']).html('+'+Number(value['24H_change'])+'%');
										}else{
											$('#24H_change'+value['currency_id']).attr('class','buy');
											$('#24H_change'+value['currency_id']).html(Number(value['24H_change'])+'%');
										}
										if(Number(value['7D_change']) > 0){
											$('#7D_change'+value['currency_id']).attr('class','sell');
											$('#7D_change'+value['currency_id']).html('+'+Number(value['7D_change'])+'%');
										}else{
											$('#7D_change'+value['currency_id']).attr('class','buy');
											$('#7D_change'+value['currency_id']).html(Number(value['7D_change'])+'%');
										}
									});
							}
						});
						
					},30000);
				
				
				</script>
     <!--       ////////////////////////////////////////////////////////////////////////////////////// -->    
<!-- <script type="text/javascript">	
setInterval("coin_price1()",5000);//1000为1秒钟			
function coin_price1(){

	var ccoin_id=$('#ccoin').val();
	
	var uuuuurl="<?php echo U('Index/ajax_trade_price');?>";
	
	$.post(uuuuurl,{'id':ccoin_id},function(data){
		

	if(data.status != 1){
		return;
	}

	
		  var y = data.info.new_price;
			var x=$('#new_price').html();
		
			if(y-x>=0){
				var color="green";
				var asd="icon_index_up";
				var aaa="icon_index_down";
				var ppp="font_down";
				var ppp1="font_up";
				
					
				var zhangfu1="font_down";
				var zhangfu2="font_up";
				
				
				
			}else{
				var color="red";
				var asd="icon_index_down";
				var aaa="icon_index_up";
				var ppp1="font_down";
				var ppp="font_up";
			  
			  
			  	var zhangfu1="font_up";
				var zhangfu2="font_down";
			
			  
			}
		
		y =  parseFloat(y).toFixed(4);
		
	
		var zhangfu=(y-x)/x*100;
		zhangfu=parseFloat(zhangfu).toFixed(2);
		
		$('#new_price').html(y);
	
		$('#new_price').removeClass(ppp1);
		$('#new_price').removeClass(ppp);
		$('#new_price').addClass(ppp1);
		$('#ccc').removeClass(aaa);
	    $('#ccc').removeClass(asd);
		$('#ccc').addClass(asd);
		
		
	
	
	
	$("#di_price").html(data.info.di_price);
	
	$("#gao_price").html(data.info.gao_price);
	
	$("#h24").html(parseInt(data.info.num_24*100)/100);	
	
	
	$("#zhangfu").html(zhangfu);
	$('#zhangfu').removeClass(zhangfu1);
	$('#zhangfu').removeClass(zhangfu1);
	$('#zhangfu').addClass(zhangfu2);
	
	});
}
	 
</script> -->
					
					
                
                   <!--  <script type="text/x-tmpl">
                        <ul class="m_t_o">
                        <%
                        for(var l = sel.length;l--;){
                        %>
                        <li><span class="tx_1 font_sell">卖<%= l+1 %></span><span class="tx_2"><%= mark %><%= sel[l][0] %></span><span class="tx_3 font_sell"><%= sel[l][1] %></span></li>
                        <%}%>
                        <li class="mid"><hr></li>
                        <%
                            for(var i = 0,l = buy.length;i < l;i ++){
                        %>
                        <li><span class="tx_1 font_buy">买<%= i+1 %></span><span class="tx_2"><%= mark %><%= buy[i][0] %></span><span class="tx_3 font_buy"><%= buy[i][1] %></span></li>
                        <%}%>
                        </ul>
                        <div class="tx_title tx_s"><b>实时成交</b></div>
                        <ul class="m_t_y">
                        <%
                            for(var i = 0,l = tra.length;i < l;i ++){
                        %>
                            <li><span class="tx_1"><%= tra[i][1] %></span><span class="tx_2"><%= mark %><%= tra[i][3] %></span><span class="tx_3 <% if(tra[i][0] == 1){ %>font_buy<% }else{ %>font_sell<% } %>"><%= tra[i][2] %> <% if(tra[i][0] == 1){ %>↑<% }else{ %>↓<% } %></span></li>
                        <%}%>
                        </ul>
                        </script> -->
				

			</div>
		
	</div>
</div>
<!-- <div class="index_box_1 cooperate">
	<div class="section">
		<div class="cooperate_title">硅谷国际数字资产结算中心平台</div>
		<div class="cooperate_info_box">
			<img src="/Public/Home/images/information_1.png">
			<div class="info_title">安全</div>
			<p>超过10年金融风控经验团队</p>
			<p>全方位可定制的安全策略体系</p>
			<p>98% 比特币资产存储多重签名冷钱包</p>
		</div>
		<div class="cooperate_info_box">
			<img src="/Public/Home/images/information_2.png">
			<div class="info_title">专业</div>
			<p>创下日交易量纪录354万枚比特币</p>
			<p>人民币、美元市场一站式交易</p>
			<p>业内专业级操盘工具“闪电手”</p>
		</div>
		<div class="cooperate_info_box">
			<img src="/Public/Home/images/information_3.png">
			<div class="info_title">用户至上</div>
			<p>人民币交易免费</p>
			<p>充值提现快速到账，比特币实时到账</p>
			<p>7x24 小时中英双语客服服务</p>
		</div>
	</div>
</div> -->

<div class="index_box_2 information" style="height:300px">
	<div class="section p_t_x" style="min-width:1200px;padding-top: 10px;">
		<div class="information_part ml0">
			<div class="information_title" style="border:1px solid #FF9100;padding-left:20px">官方公告<a href="<?php echo U('Art/index',array('id'=>$gfgg[0]['position_id']));?>" style="float:right;font-weight:500;color:#E45600;padding-top:10px;padding-right:10px">更多>></a></a></a></div>
				<?php if(is_array($gfgg)): $k = 0; $__LIST__ = $gfgg;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($k == 0): ?><div class="f_box" style="display:none">
				<p class="m_t_20">
					<a href="<?php echo U('Art/details',array('id'=>$vo['article_id']));?>"
						target="_blank"><?php echo ($vo['title']); ?></a>
				</p>
				<p><?php echo ($config['name']); ?></p>
				<div class="f_logo_box"
					style="background: url(https://static.huobi.com/exchange/src/images/1bt.png?hbver=2016040604) 96% 50% no-repeat;"></div>
			</div>
			<?php else: ?>
			<p>
				<a href="<?php echo U('Art/details',array('id'=>$vo['article_id']));?>"
					target="_blank"> <span>[<?php echo (date("m-d",$vo['add_time'])); ?>]</span><?php echo ($vo['title']); ?>
				</a>
			</p><?php endif; endforeach; endif; else: echo "" ;endif; ?>
		</div>
		<div class="information_part">
			<div class="information_title" style="border:1px solid #FF9100;padding-left:20px">市场动态<a href="<?php echo U('Art/index',array('id'=>$scdt[0]['position_id']));?>" style="float:right;font-weight:500;color:#E45600;padding-top:10px;padding-right:10px">更多>></a></a></a></div>
			<?php if(is_array($scdt)): $k = 0; $__LIST__ = $scdt;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($k == 0): ?><div class="f_box" style="display:none">
				<p class="m_t_20">
					<a href="<?php echo U('Art/details',array('id'=>$vo['article_id']));?>"
						target="_blank"><?php echo ($vo['title']); ?></a>
				</p>
				<p><?php echo ($config['name']); ?></p>
				<div class="f_logo_box"
					style="background: url(https://static.huobi.com/exchange/src/images/xinhua.png?hbver=2016040604) 96% 50% no-repeat;"></div>
			</div>
			<?php else: ?>
			<p>
				<a href="<?php echo U('Art/details',array('id'=>$vo['article_id']));?>"
					target="_blank"> <span>[<?php echo (date("m-d",$vo['add_time'])); ?>]</span><?php echo ($vo['title']); ?>
				</a>
			</p><?php endif; endforeach; endif; else: echo "" ;endif; ?>
		</div>
		<div class="information_part">
			<div class="information_title" style="border:1px solid #FF9100;padding-left:20px">媒体报道<a href="<?php echo U('Art/index',array('id'=>$mtbd[0]['position_id']));?>" style="float:right;font-weight:500;color:#E45600;padding-top:10px;padding-right:10px">更多>></a></a></a></div>
			<?php if(is_array($mtbd)): $k = 0; $__LIST__ = $mtbd;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k; if($k == 0): ?><div class="f_box" style="display:none">
				<p class="m_t_20">
					<a href="<?php echo U('Art/details',array('id'=>$vo['article_id']));?>"
						target="_blank"><?php echo ($vo['title']); ?></a>
				</p>
				<p><?php echo ($config['name']); ?></p>
				<div class="f_logo_box"
					style="background: url(https://static.huobi.com/exchange/src/images/hb_logo.png?hbver=2016040604) 96% 50% no-repeat;"></div>
			</div>
			<?php else: ?>
			<p>
				<a href="<?php echo U('Art/details',array('id'=>$vo['article_id']));?>"
					target="_blank"> <span>[<?php echo (date("m-d",$vo['add_time'])); ?>]</span><?php echo ($vo['title']); ?>
				</a>
			</p><?php endif; endforeach; endif; else: echo "" ;endif; ?>
			<!-- 
			<div class="f_box">
				<p class="m_t_20">
					<a
						href="https://www.huobi.com/help/index.php?a=notice_content&amp;id=545"
						target="_blank">火币兄弟公司出品【财猫贵金属】，现开户就送比特币！</a>
				</p>
				<p>火币网</p>
				<div class="f_logo_box"
					style="background: url(https://static.huobi.com/exchange/src/images/hb_logo.png?hbver=2016040604) 96% 50% no-repeat;"></div>
			</div>
			<p>
				<a
					href="https://www.huobi.com/help/index.php?a=notice_content&amp;id=544"
					target="_blank"> <span>[03-24]</span> 充值迎福利：充5000就领币！
				</a>
			</p>
			<p>
				<a
					href="https://www.huobi.com/help/index.php?a=notice_content&amp;id=543"
					target="_blank"> <span>[03-12]</span> 提醒：火币网站和APP为唯一官方充值渠道！
				</a>
			</p>
			<p>
				<a
					href="https://www.huobi.com/help/index.php?a=notice_content&amp;id=539"
					target="_blank"> <span>[03-02]</span> 自定义比特币网络转账费功能上线通知
				</a>
			</p>
			<p>
				<a
					href="https://www.huobi.com/help/index.php?a=notice_content&amp;id=538"
					target="_blank"> <span>[03-01]</span> 火币网全面实行5倍杠杆通知
				</a>
			</p> -->
		</div>
	</div>
</div>

<!--<div class="index_box_2 friend">
    <div class="slogan_title">战略合作机构</div>
    <div class="slogan_tis">清华大学五道口金融学院互联网金融实验室  金融客咖啡  正和岛</div>
    <div class="friend_logo_box">
        <img src="/Public/Home/images/wudaokou.png">
    </div>
    <div class="friend_logo_box">
        <img src="/Public/Home/images/jinrongke.png">
    </div>
    <div class="friend_logo_box">
        <img src="/Public/Home/images/zhenghedao.png">
    </div>
</div>-->
<!-- <div class="index_box_2 slogan" style="margin: 0px auto;">

	<div class="slogan_title">选择<?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):'虚拟网'); ?>,安全可信赖</div>
	<div class="slogan_tis">
		累计交易额:<span><?php echo ((isset($sum_money) && ($sum_money !== ""))?($sum_money):'0'); ?></span>
	</div>
	<div id="cumulative">
		<div class="number_box">
			<?php if(is_array($arr)): $key = 0; $__LIST__ = $arr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($key % 2 );++$key;?><div
				<?php if( $key%3 == 0 && $key%12 == 0 ): ?>class="unit
				add_f" <?php elseif( $key%3 == 0 ): ?>class="unit add_w" <?php else: ?>class="unit"<?php endif; ?>
				>
				<div class="top">
					<span><?php echo ($vo); ?></span>
				</div>
				<div style="" class="top">
					<span><?php echo ($vo); ?></span>
				</div>
				<div class="btm">
					<span><?php echo ($vo); ?></span>
				</div>
				<div style="transform: rotateX(0deg);" class="btm">
					<span><?php echo ($vo); ?></span>
				</div>
			</div><?php endforeach; endif; else: echo "" ;endif; ?>
		</div>
	</div>
</div> -->

<!-- <div class="safety_tips" style="padding-top:40px;padding-bottom:100px">
    <div style="width: 1000px; margin: 0 auto; margin-bottom: 20px;"></div>
    <div class="autobox">
        <ul class="safety_tips_ul clear">
            <li>
                <img src="/Public/Home/images/safe_1.jpg" alt="" height="70" width="70">
                <h4>系统可靠</h4>
                <p>银行级用户数据加密、多重身份验证，多级风险识别控制，保障交易安全</p>
            </li>
            <li>
                <img src="/Public/Home/images/safe_2.jpg" alt="" height="70" width="70">
                <h4>资金安全</h4>
                <p>钱包多层加密，离线存储于电脑钱包，资金第三方托管，确保安全</p>
            </li>
            <li>
                <img src="/Public/Home/images/safe_3.jpg" alt="" height="70" width="70">
                <h4>快捷方便</h4>
                <p>充值即时、提现迅速，高性能快速交易引擎，保证一切快捷方便</p>
            </li>
            <li>
                <img src="/Public/Home/images/safe_4.jpg" alt="" height="70" width="70">
                <h4>服务专业</h4>
                <p>专业的客服团队，400电话和在线QQ客服，VIP一对一专业服务</p>
            </li>
        </ul>
    </div>
</div> -->

<!-- 合作伙伴 -->
<!-- <div class="partners" style="margin-top:20px;">
    <div class="page-view">
        <div class="row">
            <p class="pt-title">合作伙伴</p>
        </div>
        <div class="row">
         <?php if(is_array($link_info)): $i = 0; $__LIST__ = $link_info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="col-xs-2">
                <div class="partBox">
                    <a href="http://<?php echo ($vo['url']); ?>" target="_blank" title="<?php echo ($vo["name"]); ?>">
                        <img class="pt_img" src="<?php echo ($vo["tupian"]); ?>">
                    </a>
                </div>
            </div><?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>
</div> -->
<div style=" clear:both"></div>
<!--<div style="height:360px; width:100%; position:relative; overflow:hidden; min-width:1200px;">

<div>
	<div class="flexslider">
		<ul class="slides">
			<?php if(is_array($flash)): $i = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ((isset($vo["jump_url"]) && ($vo["jump_url"] !== ""))?($vo["jump_url"]):'#'); ?>" target="_blank"><img src="<?php echo ($vo["pic"]); ?>" alt="<?php echo ($vo["title"]); ?>" style="height:320px;"></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>
	</div>
	<div class="ybcoin_volume">
		<div style="color:#fff;">
			<p style=" font-size:16px; margin-bottom:5px; text-align: center;">风险提示</p>
			<p style=" font-size:12px; line-height:22px;"><?php echo ($config["risk_warning"]); ?></p>
		</div>
					<div class="news_coin"><?php if(empty($member)): ?><a href="<?php echo U('Login/index');?>">立即登录</a><?php else: ?><a href="<?php echo U('User/index');?>">我的账户</a><?php endif; ?></div>
			<p class="coin_reg"><?php if(empty($member)): ?><a href="<?php echo U('Reg/reg');?>" class="left">免费注册</a><a href="<?php echo U('Oauth/index',array('type'=>'qq'));?>" class="right">QQ登录  </a><?php else: endif; ?><a href="<?php echo U('Dow/newcoin');?>" class="right">我要上新币</a></p>
			</div>
</div>
</div>-->
<!--banner end-->

<!--<script type="text/javascript" src="/Public/Home/js/coinindex.js"></script>

<script type="text/javascript" src="/Public/Home/js/tab.js"></script>
<script type="text/javascript" src="/Public/Home/js/slide.js"></script>
<script type="text/javascript" src="/Public/Home/js/page_glb_var.js"></script>
<script>
    seajs.use("dist/page_index");
    /**/
    function change_vcode(e) {
        e.src = "/account/captcha?" + Math.random();
    }
    /**/

</script>

<script type="text/javascript">
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?18784dd00dc1c9774528d08ae7943072";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();

</script>-->

                        <!--<div class="sp-step">-->
                            <!--<div class="pull-left sp-time">-->
                                <!--<p><span>2014-08-21</span></p>-->
                                <!--<p><span>2014-07-21</span></p>-->
                                <!--<p><span>2014-04-24</span></p>-->
                            <!--</div>-->
                            <!--<div class="pull-right">-->
                                <!--<p>众筹完成</p>-->
                                <!--<p>众筹开始</p>-->
                                <!--<p>初创项目</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div style="width: 400px;" class="sp-wrap">-->
                    <!--<div class="sp-box">-->
                        <!--<a href="https://www.yuanbaohui.com/project_index/?id=187" target="_blank">-->
                            <!--<div class="sp-info">-->
                                <!--<div class="pull-right">-->
                                    <!--<h4 style="font-weight: normal;font-size: 16px">免费VPN币分发投资</h4>-->

                                    <!--<p style="font-size: 12px;">免费机会仅此一次</p>-->
                                <!--</div>-->
                                <!--<img src="/Public/Home/images/d09a0420c556744cc948a0cbc7cf21bd.png" style="width: 82px;height: 82px;">-->
                                <!--&lt;!&ndash;                                    <img src="&ndash;&gt;&lt;!&ndash;" style="width: 82px;height: 82px;">&ndash;&gt;-->
                            <!--</div>-->
                        <!--</a>-->

                        <!--<div class="sp-step">-->
                            <!--<div class="pull-left sp-time">-->
                                <!--<p><span>2015-04-17</span></p>-->
                                <!--<p><span>2015-04-13</span></p>-->
                                <!--<p><span>2015-04-12</span></p>-->
                            <!--</div>-->
                            <!--<div class="pull-right">-->
                                <!--<p>众筹完成</p>-->
                                <!--<p>众筹开始</p>-->
                                <!--<p>初创项目</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
           <!-- </div>
        </div>
    </div>
</div> -->
<!-- 客服信息 -->
<!-- <div class="autobox">
    <ul class="web_service clear pl30">
        <li class="w265"><a id="BizQQWPA" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq1']); ?>&site=qq&menu=yes"><div class="web_service_pic service_1"></div><div class="web_service_pic_num"><p><?php echo ((isset($config["qq1"]) && ($config["qq1"] !== ""))?($config["qq1"]):"暂无"); ?></p><div class="qqsecvice">在线QQ客服</div></div></a></li>
        <li class="w245"><div class="web_service_pic service_2"></div><div class="web_service_pic_num"><p><?php echo ((isset($config["tel"]) && ($config["tel"] !== ""))?($config["tel"]):"暂无"); ?></p><div>工作日:9-19时 节假日:9-18时</div></div></li>
        <li class="w265"><a href="http://weibo.com/<?php echo ($config['weibo']); ?>" target="_blank"><div class="web_service_pic service_3"></div><div class="web_service_pic_num"><p><?php echo ((isset($config['weibo']) && ($config['weibo'] !== ""))?($config['weibo']):"暂无"); ?></p><div>新浪官方微博</div></div></a></li>
        <li><div class="web_service_pic service_4"></div><div class="web_service_pic_num"><p>2群：<?php echo ((isset($config['qqqun2']) && ($config['qqqun2'] !== ""))?($config['qqqun2']):"暂无"); ?></p><div class="h_underl">交流QQ群 <a href="javascript:;" class="orange">查看更多</a>  </div></div></li>
    </ul>
</div> -->




<!--友情链接-->
<!-- <div class="link">
    <div class="linkbox">
        <h4>友情链接</h4>
        <ul>
            <?php if(is_array($link_info)): $i = 0; $__LIST__ = $link_info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a target="_blank" href="http://<?php echo ($vo['url']); ?>" style=" font-size:16px;"><?php echo ($vo["name"]); ?></a> </li><?php endforeach; endif; else: echo "" ;endif; ?>

        </ul>
    </div>
</div> -->

<!--footer start-->
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

<!--footer end-->
<script>

$("#head_nav ul").children("li").eq(0).addClass("cur");
$(".market_type").children("li").on("click",function(){
	$(this).addClass("cur").siblings().removeClass("cur");
});
/*$(window).scroll(function(e){
	var h = $(".ab_box").offset().top+$(".ab_box").height();
	var dh = 1;
	if($(window).scrollTop()>h){
		$("#doc_head").addClass("fixed");
		$(".ab_box").css("padding-top","75px");
		//$(".head_masthead").css("height",dh++);
	}else{
		$("#doc_head").removeClass("fixed");
		$(".ab_box").css("padding-top",0);
	}
});
	$(".qh_img").css("height","360px")*/

</script>