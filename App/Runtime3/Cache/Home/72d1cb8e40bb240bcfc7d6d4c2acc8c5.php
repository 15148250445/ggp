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
    <link rel="shortcut icon" href="http://www.jubi.com/favicon.ico" type="image/x-icon">

	<script src="_PUBLIC__/Home/js/script.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">                                         
</head>
<body>
<div class="autobox">
    <div class="now">

        <a href="<?php echo U('Index/index');?>" class="orange">首页</a> &gt;<a href="<?php echo U('Help/index',array('id'=>60));?>" class="orange"> 帮助中心 </a>
		<?php if(!empty($art_one["title"])): ?>&gt;<a class="orange"><?php echo ($art_one["title"]); ?></a><?php endif; ?>

    </div>
    <div class="assets_center clear po_re zin70">
        <!--左侧菜单-->
        <div class="coin_menu">

            	<?php if(is_array($art_list)): $i = 0; $__LIST__ = $art_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><dl>
                    <dt ><?php echo ($vo["name"]); ?></dt>
                    <div class="dl_menu" style="display:block">
                    	<?php if(is_array($vo['children'])): $i = 0; $__LIST__ = $vo['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vos): $mod = ($i % 2 );++$i;?><dd class=""><em></em><a href="<?php echo U('Help/index',array('article_id'=>$vos['article_id']));?>"><?php echo ($vos["title"]); ?></a></dd><?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>
                </dl><?php endforeach; endif; else: echo "" ;endif; ?>

        </div>

        <!--右侧内容-->
        <div class="assets_content zhinan w753 right mh1500">

          <h1 style="padding-top:0px !important;"><?php echo ($art_one["title"]); ?></h1>
            
            <div class="about_text">
             <?php echo ($art_one["content"]); ?>
            </div>
      </div>
    </div>
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

<!--footer end-->
<script>$("#head_nav ul").children("li").eq(4).addClass("cur");</script>