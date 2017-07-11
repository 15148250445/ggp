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

    <!--top end-->
<script src="./元宝网｜第一数字资产交易平台_files/index.js"></script>
<div id="main">
	<div class="main_box">
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
		<div class="raise right clearfix">
            <script type="text/javascript" src="./元宝网｜第一数字资产交易平台_files/ajax.js"></script>
<script type="text/javascript" src="./元宝网｜第一数字资产交易平台_files/Fnc.js"></script>
<div class="ybc_list">
	<div class="ybcoin">
		<h2 class="left"><?php echo ($cuid["currency_name"]); ?>提币</h2>
		<div class="clear"></div>
	</div>
</div>
<json id="json" ></json>
        <div class="support_ybc pass_ybc" id="verifyon">
        <div id="tagContent" class="passContent">
        <div class="tagContent selectTag" id="tagContent0">
                    <div class="choose_one clearfix">
		<h2 class="left">选择一个提币地址<span style="float:right;margin-right:50px;"><strong id="coinout_showtips"></strong></span></h2>
		<p class="right" style="font-size:12px; margin-top:8px;">如果您新添加的地址为【未认证】，请联系官方客服QQ（<?php echo ($config["qq1"]); ?>）审核。</p>
	    </div>
	    <table cellpadding="0" cellspacing="0" border="0" class="my_add">
		<thead>
			<tr align="center">
				<th style="width:143px">选择</th>
				<th style="width:221px">地址标签</th>
				<th style="width:300px;">提币地址</th>
				<th style="width:100px">状态</th>
				<th style="width:144px">操作</th>
			</tr>
			<?php if(is_array($address)): $k = 0; $__LIST__ = $address;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><tr align="center">
				  <td><input type="radio" value="<?php echo ($vo["id"]); ?>" id="address_id" name="redios" onclick="address_id($(this))" <?php if(($k) == "1"): ?>checked="checked"<?php endif; ?>></td>
                  <td><input class="sum"   type="text"  value="<?php echo ((isset($vo["name"]) && ($vo["name"] !== ""))?($vo["name"]):''); ?>" disabled="disabled"></td>
				  <td><input class="sum"  style="width:300px;"  type="text"  disabled="disabled"  value="<?php echo ((isset($vo["qianbao_url"]) && ($vo["qianbao_url"] !== ""))?($vo["qianbao_url"]):''); ?>"></td>
                  <td>可用</td>
                  <td><a class="link-del" href="<?php echo U('Pay/del_address',array('id'=>$vo['id'],'cuid'=>$cuid['currency_id']));?>">删除</a></td>
				</tr><?php endforeach; endif; else: echo "" ;endif; ?>
		</thead>
		<script>
		function address_id(_this){
						var list= $('input:radio[name="redios"]:checked').val();
						$("#select_address").val(list);
						//console.log(_this.parents('tr').children('td'));
						var add = _this.parents('tr').children('td').eq(2).children('input').val();
						//alert(add);
						$("#addre_show").html(add);
						//$("#select_address").attr('type','text');
						
					}
		</script>
		<tbody>
             <form class="form-horizontal m-t" id="address" jump-url="<?php echo U('Pay/tcoin',array('currency_id'=>$cuid['currency_id']));?>" method="post" action="<?php echo U('Pay/add_qianbao_address');?>">
            			<tr style="display:none;" id="coinout_newaddr" align="center">
				<td>新地址</td>
				<td><input class="sum" id="new_label"  type="text" name="name" placeholder="例如：张三的地址"></td>
				<td><input class="sum" id="wallet_address" style="width:300px;"  type="text" name="address" placeholder="例如：yja67fGc8UBXLWtjwvHFkjrmYhTFGH9PTs" ></td>				
				<input type="hidden" name="currency_id" value="<?php echo ($cuid['currency_id']); ?>" />
				<td>&nbsp;</td>
				<td><input class="verify"  id="yes_add2" value="确认" type="submit"></td>
			</tr>
			</form>
			<!--<tr style="display:none;" id="phone_alert2" align="right">
				<td colspan="5"><span style="color:#f00;">系统已拨打您的手机告知验证码，请输入验证码</span> <input class="verify_text" id="phone_code_wallet" type="text"><input class="verify" value="确认" onclick="coinOut.finaddAddress()" type="button"></td>
			</tr>-->
			
			<tr align="center" id="addAddress_tr">
				<td colspan="5"><a href="javascript:coinOut.addNewAddr();" id="addNewAddress">点击添加一个新的提币地址</a></td>          
			</tr>
			<tr align="center" >
				<td colspan="5">提币地址最多添加10条</td>          
			</tr>
		</tbody>
	    </table>
		  <script>	
           $("#address").validate({			   
                rules: {
                    name: {
                        required: true,
                    },
                    address: {
                        required: true,
                    }
                },
                messages: {
                  name: {
                        required: "姓名不能为空",
                    },
                    cardnum: {
                        required: '地址不能为空',
                    }
                },
				submitHandler:function(form){
					ajax_submit_form(form)
					return false;
				},
				invalidHandler: function() {  //不通过回调 
					  return false; 
				  },
		   
            });
			
           
           function addNewAddr(){
				document.getElementById("address").style.display="";//显示
				document.getElementById("addAddress_tr").style.display="none";//隐藏
			}
			</script> 
			
	    <h2 class="choose_one">输入要提币的数额<span>(可用余额：<strong><?php echo ($cuser["num"]); ?> <?php echo ($cuid["currency_mark"]); ?></strong>)</span><span style="float:right;margin-right:20px;"><strong id="coinout2_showtips"></strong></span></h2>
	    <table cellpadding="0" cellspacing="0" border="0" class="my_add">
		<form class="form-horizontal m-t" id="tibi" jump-url="<?php echo U('Pay/tcoin',array('currency_id'=>$cuid['currency_id']));?>" method="post" action="<?php echo U('Pay/ti_bi');?>">
		<tbody>      
        
			<tr>
	    	  <input type="hidden" name="currency_id" value="<?php echo ($cuid["currency_id"]); ?>">
	    	  <input name="select_address" id="select_address" type="hidden" value="<?php echo ($address[0]['id']); ?>">
				<td style="position:relative; padding-left:90px;">提币数量<input type="text" class="sum" id="coin_rmb" name="num" ></td>
				<td>实际到帐 <input type="text" class="sum" id="true_coin" disabled=""> <span style="color:#f60;">(手续费<?php echo (mb_substr($config["tcoin_fee"],0,4,"utf-8")); ?>%)</span></td>
			</tr>
            <tr>
               <td style=" padding-left:90px;">交易密码 <input type="password" class="sum" name="paypwd" ></td>
			  <td>验证码
                    <input style="display:none" type="password">
                    <!-- for disable autocomplete on chrome -->
                    <input class="sum" name="code" id="code" autocomplete="off" type="test">
                    <input class="confirm"  value="点击发送" type="button" id="msgt" data-key='off' onclick="sandPhone()" style='padding:3px 8px;'></td>
           
               
            <tr>
				<td id="addre_show" style="color:red;font-size:20px;text-align:center;"><?php echo ($address[0]['qianbao_url']); ?></td>
              <td ><input style=" float:right; margin-right:103px;" type="submit" class="confirm" value="确认提币"></td>
            </tr>
		</tbody>
        	</form>
	    </table>
        	    <h2 class="choose_one">转出<?php echo ($cuid["currency_name"]); ?>说明</h2>
        <div class="turns">
            <p>1. 提币手续费为<?php echo (mb_substr($config["tcoin_fee"],0,4,"utf-8")); ?>%，请仔细确认后再操作。</p>
            <p>2.为保护账户安全，每日转出最大限额<?php echo ((isset($cuid["currency_all_tibi"]) && ($cuid["currency_all_tibi"] !== ""))?($cuid["currency_all_tibi"]):"0"); ?>个币，且每日可提<?php echo ((isset($cuid["currency_day_times"]) && ($cuid["currency_day_times"] !== ""))?($cuid["currency_day_times"]):0); ?>次，每次可提不超过<?php echo ((isset($cuid["currency_limit"]) && ($cuid["currency_limit"] !== ""))?($cuid["currency_limit"]):0); ?>个币。</p>
            	                <input type="hidden" id="sell_fee" value="<?php echo ($config["tcoin_fee"]); ?>">
            <input type="hidden" id="min_coin" value="5.0000">
        </div>
        </div>
        <div class="tagContent" id="tagContent1">
       
        	    <h2 class="choose_one">转出<?php echo ($cuid["currency_name"]); ?>说明</h2>
        <div class="turns">
            <p>1.提币手续费为<?php echo (mb_substr($cuid["currency_sell_fee"],0,4,"utf-8")); ?>%，请仔细确认后再操作。</p>
            <p>2.每笔转出最大限额2000个币。</p>
        </div>
        </div>
        </div>
    </div>
	<div class="ybc_list">
    <div class="ybcoin">
        <h2 class="left">转出记录</h2>
        <div class="clear"></div>
    </div>
	<table cellspacing="0" cellpadding="0" border="0" class="raise_list" align="center" style="border:1px solid #e1e1df;">
		<thead>
		<tr>
			<th>记录ID</th>
			<th>转入钱包地址</th>
			<th>转出数量</th>
			<th>实际到账</th>
			<th>操作时间</th>
			<th>状态</th>
		</tr>
		</thead>
		<tbody>
		<?php if(is_array($tibi_list)): $i = 0; $__LIST__ = $tibi_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr id="btc_box" class="btc_new">
			<td id="btc_id"><?php echo ($vo["id"]); ?></td>
			<td id="btc_wallet"><?php echo ($vo["url"]); ?></td>
			<td id="btc_number"><?php echo (number_format($vo["num"],4)); ?></td>
			<td id="btc_fee">
			<?php if(($vo["status"]) == "1"): echo ($vo["actual"]); ?>
                <?php else: ?>
               暂无记录<?php endif; ?>
				</td>
			<td id="btc_created"><?php echo (date("Y-m-d H:i:s",$vo["add_time"])); ?></td>
			
			
			<td class="tableEnd" id="btc_status">
			<?php if(($cuid["currency_name"]) == "比特币"): if(($vo["status"]) == "8"): ?>驳回<?php else: if(($vo["status"]) == "1"): ?>通过<?php else: ?>审核中<?php endif; endif; ?>
			
			<?php else: ?>
			<?php if($vo["status"] == 12): ?>等待审核中
			<?php elseif($vo["status"] == 0): ?>
			等待转出
			<?php elseif($vo["status"] == 1): ?>
			已经到账
			<?php elseif($vo["status"] == -1): ?>
			转出审核失败
			<?php else: ?> 
			未知状态<?php endif; endif; ?>
			
			</td>
		</tr><?php endforeach; endif; else: echo "" ;endif; ?>
				</tbody>
	</table>
	</div>
	</div>
	    <script>	
           $("#tibi").validate({			   
                rules: {
                    num: {
                        required: true,
                    },
                    paypwd: {
                        required: true,
                    },
					code:{
						required: true,
					}
                },
                messages: {
                  num: {
                        required: "金额不能为空",
                    },
                    paypwd: {
                        required: "请填写支付密码",
                    },
					code: {
                        required: "请填写验证码",
                    }
                },
				submitHandler:function(form){
					ajax_submit_form(form)
					return false;
				},
				invalidHandler: function() {  //不通过回调 
					  return false; 
				  },
		   
            });
			</script> 
<style>.btc_new,.btc_new td {background: #DDFFDD !important;}#cb_msg_box{background:#B50000;color:#FFF;display:none;text-align:center;padding:0px;}</style>

<script src="/Public/Home/js/coinout.js"></script>
<script>
$(".menu").addClass("uc-current");

$('#coin_rmb').bind('input propertychange', function() {
	var num=$("#coin_rmb").val();
	if(isNaN(num)){
	 alert("请输入数字类型");
	}else{
	
	var fee=$("#sell_fee").val()/100;
	var shiji=num*(1-fee);
	$("#true_coin").val(shiji.toFixed(2));
	}
}); 
 function sandPhone(){
        var phone="<?php echo ($member["phone"]); ?>";
		
		var i=120;
        var tid2;
        tid2=setInterval(function(){
            if($("#msgt").attr("data-key")=='off'){
                $("#msgt").attr("disabled",true);
                $("#msgt").removeClass("class");
                $("#msgt").addClass("button again");
                i--;
                $("#msgt").val(i+"秒后可重新发送");
                if(i<=0){
                    $("#msgt").removeAttr("disabled").val("重新发送验证码");
                    $("#msgt").attr("data-key","on");
                }
            }
        },1000);
        
            $.post("<?php echo U('Common/ajaxSandPhone');?>",{'phone':phone},
                    function(d){
                       layer.msg(d.info);
                        if(d.status==1){
                            i=120;
                            $("#msgt").attr("data-key","off");
            	 }
            });
    }
</script>
		</div>
		<div class="clear"></div>
	</div>
    
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