<?php if (!defined('THINK_PATH')) exit();?>
<!DOCTYPE html>
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

<link rel="stylesheet" type="text/css" href="/Public/Home/css/reset.css">
<link rel="stylesheet" type="text/css" href="/Public/Home/css/zcpc.css">
<script src="/Public/Home/js/zc_hm.js">
</script><script type="text/javascript" src="/Public/Home/js/zc_jquery.js"></script>
<script type="text/javascript" src="/Public/Home/js/zc_common.js"></script>
<script type="text/javascript" src="/Public/plugin/Js/layer/layer.min.js"></script>
<style type="text/css">
.jinduline{z-index: 3;}
 .vip_header1 {
        background: #fafafa;
    }
    .vip_user1 {
        position: relative;
        font-size:16px;
        padding:10px 0px 10px 20px;
    }
    .vip_stop1{
        line-height:41px;
    }
    .vip_upgrade ul li{
        line-height:40px;
    }
    .vip_upgrade .left {
        text-align: right;
        width: 405px;
    }
    .vip_upgrade .right {
        width: 575px;
    }
    .vip_upgrade .right a {
        color:#F60;
    }
    .vip_upgrade .right a:hover {
        color:#F90;
    }
    input{ height:25px;}
    .jilu table td{ text-align:center;}
    .pay-m-2 a:hover{ color:#fff !important;}

</style>
<!--top end-->
<div class="acountbd">
    <div class="main clearfix">
        <h1 class="programheadtitle">[众筹]<?php echo ((isset($list["title"]) && ($list["title"] !== ""))?($list["title"]):'众筹项目'); ?></h1>
        <div class="pcdeleft">
            <div class="pcdetpic">
                <img style=" width:830px; height:445px;" src="<?php echo ((isset($list["url2"]) && ($list["url2"] !== ""))?($list["url2"]):''); ?>" id="sim229784" class="main_img">
            </div>
            <div class="pcdetinfotxt">
                <ul class="pcinfotxtnav">
                    <li data-id="1" class="current">项目详情</li>
                    <li data-id="3">项目进展</li>
                    <li data-id="2">文件下载</li>
                </ul>
                <div id="info_1" class="infodata" style="display:block;">
                    <?php echo ((isset($list["info"]) && ($list["info"] !== ""))?($list["info"]):'此项目暂无详情简介'); ?>
                </div>
                <div id="info_2" class="infodata" style="display:none;height:100px;">
                   <?php if(!empty($list["wenjian_url"])): ?><a  href="<?php echo ($list["wenjian_url"]); ?>"><input type="button"  value="文件下载"  style="border:1px solid #999;text-align:center;padding:5px 10px 5px 10px;height: 30px;margin-left:100px; margin-top:30px; background:#f70; color: #fff; border-radius: 5px;
"  /></a><?php endif; ?>
                </div>
                <div id="info_3" class="infodata">
                    <div style="height: 540px;" class="jindubox">

                        <div class="jinduline"></div>
                        <div class="jindustate"><span><?php if(($list["status"]) == "0"): ?>项目未开始<?php endif; if(($list["status"]) == "1"): ?>项目进行中...<?php endif; if(($list["status"]) == "2"): ?>项目完成<?php endif; ?></span></div>
                        <div class="jinduitem">
                            <?php if(($list["status"]) > "1"): ?><div style="right: 50%; bottom: 305px; margin-right: 1px; padding-right: 50px;" class="jditem jditem4" data-item="4">
                                    <i style="right: 0px; background-image: url(&quot;https://imgm.touchouwang.net/public/p_image/jingdu_2.png&quot;);" class="danshu">04</i>
                                    <h6 style="padding-top:10px;">众筹成功</h6>
                                    <p><?php echo (date('Y-m-d',$list["end_time"])); ?></p>
                                </div><?php endif; ?>
                            <?php if(($list["status"]) > "1"): ?><div style="left: 50%; bottom: 245px; margin-left: 1px; padding-left: 50px;" class="jditem jditem3" data-item="3">
                                    <i style="left: 0px;" class="danshu">03</i>
                                    <h6 style="padding-top:10px;">众筹结束</h6>
                                    <p><?php echo (date('Y-m-d',$list["end_time"])); ?></p>
                                </div><?php endif; ?>
                            <?php if(($list["status"]) > "0"): ?><div style="right: 50%; bottom: 185px; margin-right: 1px; padding-right: 50px;" class="jditem jditem2" data-item="2">
                                    <i style="right: 0px; background-image: url(&quot;https://imgm.touchouwang.net/public/p_image/jingdu_2.png&quot;);" class="danshu">02</i>
                                    <h6 style="padding-top:10px;">众筹进行中</h6>
                                    <p><?php echo (date('Y-m-d',$list["end_time"])); ?>----</p>
                                </div><?php endif; ?>
                            <div style="left: 50%; bottom: 125px; margin-left: 1px; padding-left: 50px;" class="jditem jditem1" data-item="1">
                                <i style="left: 0px;" class="danshu">01</i>
                                <h6 style="padding-top:10px;">众筹开启</h6>
                                <p><?php echo (date('Y-m-d',$list["add_time"])); ?></p>
                            </div>
                            <div class="jindustate" style="top: 450px;"><span>初创项目<p style="text-align:center"><?php echo (date('Y-m-d',$list["ctime"])); ?></p></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pcderight">

            <div class="programinfo">
                <h2>项目基本资料<i></i></h2>
                <table class="actab5">
                    <tbody>
                    <tr>
                        <td>总量：<span><?php echo ((isset($list["num"]) && ($list["num"] !== ""))?($list["num"]):'0.00'); ?>个</span></td>
                        <td>剩余：<span><?php echo ((isset($list["deal"]) && ($list["deal"] !== ""))?($list["deal"]):'0.00'); ?>个</span></td>
                    </tr>
                    <?php if(!empty($_SESSION['USER_KEY_ID'])): ?><tr>
                            <td>限购：<span><?php echo ((isset($list["limit_count"]) && ($list["limit_count"] !== ""))?($list["limit_count"]):'0.00'); ?>次</span></td>
                            <td>已购：<span><?php echo ((isset($list["buy_count"]) && ($list["buy_count"] !== ""))?($list["buy_count"]):'0'); ?>次</span></td>
                        </tr>
                        <tr>
                            <td>限购：<span><?php echo ((isset($list["limit"]) && ($list["limit"] !== ""))?($list["limit"]):'0.00'); ?>个</span></td>
                            <td>已购：<span><?php echo ((isset($num_buy) && ($num_buy !== ""))?($num_buy):'0.00'); ?>个</span></td>
                        </tr><?php endif; ?>
                    <tr>
                        <td>购买币种：<span><?php echo ($list["buy_name"]); ?></span></td>
                        <td>价格：<span><?php echo ((isset($list["price"]) && ($list["price"] !== ""))?($list["price"]):'0.00'); ?></span></td>
                    </tr>
                    <tr>
                        <td>成功比例：<span><?php echo ((isset($list["zhongchou_success_bili"]) && ($list["zhongchou_success_bili"] !== ""))?($list["zhongchou_success_bili"]):'100'); ?>%</span></td>
                        <td><div class="yuyuebox_1">
                    		<div class="pclastdate2">
                        	<p class="pcfenpost pcfenpost2">
                            <?php if(($list["status"]) == "0"): ?><span class="pctimeico">尚未开始</span><?php endif; ?>
                            <?php if(($list["status"]) == "1"): ?><span class="pctimeico">认筹中</span><?php endif; ?>
                            <?php if(($list["status"]) == "2"): ?><span class="pctimeico">已结束</span><?php endif; ?>
                        	</p>
                    		</div>
                			</div>
                          </td>  
                    </tr>
                    </tbody></table>
               
            </div>
            <?php if(($list["status"]) == "0"): ?><div class="programinfo programinfo2">
                    <h2>我要投资</h2>
                    <div class="pay-m-2">
                        <button type="button" class="btn-play-1" disabled="disabled">众筹未开始</button>
                        <p>该项目已<strong>暂未开放</strong>不支持购买，请关注其他项目</p>
                    </div>
                </div><?php endif; ?>

            <?php if(($list["status"]) == "1"): if(!empty($_SESSION['USER_KEY_ID'])): ?><div class="programinfo programinfo2">
                        <h2>我要投资</h2>
                        <form action="<?php echo U('Zhongchou/run');?>" method="post" id="buy_form">
                            <div class="pay-m-1">
                                <p>
                                    <ins>账户余额：</ins>
                                    <span id="myMon"><?php echo (floatval("$buy_num")); ?></span><?php echo ($list["buy_mark"]); ?>
                                    <a href="<?php echo U('User/index');?>" class="pay-recharge-btn">充值</a>
                                </p>
                                <p>
                                    <ins>众筹数量：</ins>
                                      <input value="<?php echo ((isset($list["min_limit"]) && ($list["min_limit"] !== ""))?($list["min_limit"]):'0'); ?>" class="txt-pay-1" id="num" name="num" type="number" onkeyup="sjmoney();"><span style="font-size:10px;">&nbsp;&nbsp;个(最少购买<?php echo (number_format($list["min_limit"],0)); ?>个)</span> 
                                </p>
                         
                                <p>
                                    <ins>实际支付金额：</ins>
                                    <span id="manjianhou"><?php echo (number_format($list['min_limit']*$list['price'],0)); ?></span><?php echo ($list["buy_mark"]); ?>
                                </p>
                            </div>
                            <div class="pay-m-2">
                                <input type="button" class="btn-play-1" id="zhongchourun" onclick="zhongchou();" value="众筹">
                            </div>
                        </form>
                    </div>
                    <?php else: ?>
                    <div class="programinfo programinfo2">
                        <h2>我要投资</h2>
                        <div class="pay-m-1">
                            <p>
                                <ins>账户余额：</ins>
                                暂未登录，<a href="<?php echo U('Login/index');?>">登录</a> 后查看
                            </p>
                        </div>

                    </div><?php endif; endif; ?>

            <?php if(($list["status"]) == "2"): ?><div class="programinfo programinfo2">
                    <h2>我要投资</h2>
                    <div class="pay-m-2">
                        <button type="button" class="btn-play-1" disabled="disabled">众筹结束</button>
                        <p>该项目已<strong>完成</strong>不支持购买，请关注其他项目</p>
                    </div>
                </div><?php endif; ?> 
			<?php if(($list["status"]) == "3"): ?><div class="programinfo programinfo2">
                    <h2>我要投资</h2>
                    <div class="pay-m-2">
                        <button type="button" class="btn-play-1" disabled="disabled">众筹结束</button>
                        <p>该项目已<strong>完成</strong>不支持购买，请关注其他项目</p>
                    </div>
                </div><?php endif; ?>
			
            <?php if(!empty($_SESSION['USER_KEY_ID'])): ?><div class="programinfo programinfo2 jilu">
                    <h2>投资记录</h2>
                    <table style=" width:348px; margin-top:10px;">
                        <thead>
                        <tr style=" height:25px; background-color:#f60; color:#FFF;">
                            <th>次数</th>
                            <th>金钱</th>
                            <th>数量</th>
                            <th>总金额</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if(is_array($log)): $key = 0; $__LIST__ = $log;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($key % 2 );++$key;?><tr>
                                <td><?php echo ($key); ?></td>
                                <td><?php echo ((isset($vo["price"]) && ($vo["price"] !== ""))?($vo["price"]):'0.00'); ?></td>
                                <td><?php echo ((isset($vo["num"]) && ($vo["num"] !== ""))?($vo["num"]):'0.00'); ?></td>
                                <td><?php echo ((isset($vo["count"]) && ($vo["count"] !== ""))?($vo["count"]):'0.00'); ?></td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                        </tbody>
                    </table>
                </div>
                <?php else: ?>
                <div class="programinfo programinfo2">
                    <h2>投资记录</h2>
                    <p class="pay-m-1" style="text-align:center;">暂未登录，<a href="<?php echo U('Login/index');?>">登录</a> 后查看</p>
                </div><?php endif; ?>
        </div>
    </div>
</div>
<script>
    $(".menu6").addClass("uc-current");
    $(".pcinfotxtnav").children("li").on("click",function(){
        var n =$(this).index();
        $(this).addClass("current").siblings().removeClass("current");
        if(n==0){
            $("#info_1").show();
            $("#info_2").hide();
            $("#info_3").hide();
        }
        if(n==1){
            $("#info_3").show();
            $("#info_1").hide();
            $("#info_2").hide();
        }
        if(n==2){
            $("#info_2").show();
            $("#info_1").hide();
            $("#info_3").hide();
        }
    });
</script>
<script>
    function zhongchou(){
        var limit = <?php echo ($list["limit"]); ?>;
        var deal = <?php echo ($list["deal"]); ?>;
        var price = <?php echo ($list["price"]); ?>;
        var min_limit = <?php echo ($list["min_limit"]); ?>;
        var id=<?php echo ($id); ?>;
        var buy_currency_id = <?php echo ($list["buy_currency_id"]); ?>;
        if($("#num").val()<min_limit){
            layer.msg("认筹数量不能小于最小认筹数量");
            $("#num").val("");
        }
        if($("#num").val()>deal){
            layer.msg("认筹数量不能超过剩余数量");
            $("#num").val("");
        }
        if($("#num").val()>limit){
            layer.msg("认筹数量不能超过限购数量");
            $("#num").val("");
        }
       layer.confirm('确定认筹？', {
  btn: ['确定','取消'], //按钮
  title: '提示'
}, function(){
  $.post("<?php echo U('Zhongchou/run');?>",{num:$("#num").val(),id:id,buy_currency_id:buy_currency_id},function(data){
            layer.msg(data.info);
            setTimeout(function () {
                window.location.reload();
            }, 2000);
        })
}, function(){
  layer.msg('已取消');
});
    }
    function sjmoney(){
        var price = <?php echo ($list["price"]); ?>;
        $("#manjianhou").text($("#num").val()*price);
    }
	$("#head_nav ul").children("li").eq(2).addClass("cur");
</script>
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
<!--footer end-->