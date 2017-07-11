<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<link href="/Public/line/fullScreenKline.css" rel="stylesheet"
	type="text/css" />
	<link rel="stylesheet" type="text/css" href="/Public/Home/css/kline.css">
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



    <script type="text/javascript" src="/Public/js/jquery-2.1.1.min.js"></script>
    <script src="/Public/js/bootstrap.min.js?v=3.4.0"></script>
    <script type="text/javascript" src="/Public/js/layer/layer.js"></script>
    <script src="/Public/js/jquery.validate.min.js"></script>
    <script src="/Public/js/messages_zh.min.js"></script>
    <script src="/Public/js/base.js"></script>
</head>
<style>
.buyform li label{    width: auto !important;}
.sellform li label{width:70px !important;}
.buyformarea{width:300px !important;}
.sellform .submit{margin-left:15px;}
.sellform2 .submit{margin-left:15px;}
.text_center{ text-align:center}
.coin_num td input{
border: 1px solid #e55600;
color:#e55600;
border-radius: 3px;
width: 80px;
height: 30px;
margin: 5px;
cursor: pointer;
}
#main{ background-color:#272727}
.coin_num td input:hover{
border: 1px solid #e55600;
border-radius: 3px;
width: 80px;
height: 30px;
margin: 5px;
cursor: pointer;
color:#FFF;
background-color:#e55600;	
}
.sellform li{height:auto !important}
.coinarea .coin_list tbody tr:hover{background-color:#000}
.coinarea .coin_list tbody tr td{border-bottom: 1px solid #000;    color: #ccc;padding:0px;}
.coinarea .coin_list thead tr th{background-color:#000;color: #eee;padding:0px;}
.coinarea .coin_list tbody tr td a{color:#FFE4B5}
	.my_coin ul li{ font-size:15px; width:180px; height:24px; overflow:hidden;}
  .now_price.right li{
    margin-right: 40px;
  }
  .qh_kong{ height:98px;}
  .main_box{ margin-left:0px;}
  .buyformarea {
    width: 48% !important;
}
</style>
<body>
	<!-- Chart Container -->
	<div id="chart_container" class="dark">

		<!-- Dom Element Cache -->
		<div id="chart_dom_elem_cache"></div>

		<!-- ToolBar -->
		<div id="chart_toolbar">
			<div class="chart_toolbar_minisep"></div>

			<!-- Symbol Selector -->
			<div class="chart_dropdown" id="chart_dropdown_symbols"
				style="display: none;">
				<div class="chart_dropdown_t">
					<a><span class="chart_str_btc_this_week">当周 BTC</span><span></span></a>
				</div>
				<div class="chart_dropdown_data">
					<table>
						<tr>
							<td>BTC</td>
							<td>
								<ul id="chart_symbols_btc">
									<li><a><span class="chart_str_btc_this_week">当周
												BTC</span><span></span></a></li>
									<li><a><span class="chart_str_btc_next_week">次周
												BTC</span><span></span></a></li>
									<li><a><span class="chart_str_btc_month">全月 BTC</span><span></span></a></li>
									<li><a><span class="chart_str_btc_quarter">季度
												BTC</span><span></span></a></li>
												<input type="hidden" value="BTC" id="xnbname" />
												<input type="hidden" value="" id="sitename" />
								</ul>
							</td>
						</tr>
						<tr>
							<td>LTC</td>
							<td>
								<ul id="chart_symbols_ltc">
									<li><a><span class="chart_str_ltc_this_week">当周
												LTC</span><span></span></a></li>
									<li><a><span class="chart_str_ltc_next_week">次周
												LTC</span><span></span></a></li>
									<li><a><span class="chart_str_ltc_month">全月 LTC</span><span></span></a></li>
									<li><a><span class="chart_str_ltc_quarter">季度
												LTC</span><span></span></a></li>
								</ul>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="chart_dropdown" id="kline_logo"
				style="width: 43px; height: 10px; margin: 9.5px 0px 0px 3px;">&nbsp;</div>
			<!-- Periods -->
			<div class="chart_dropdown" id="chart_toolbar_periods_vert">
				<div class="chart_dropdown_t">
					<a class="chart_str_period"></a>
				</div>
				<div class="chart_dropdown_data">
					<table>
						<tr>
							<td>
								<ul>
									<li id="chart_period_line_v" name="line"><a
										class="chart_str_period_line"></a></li>
									<li id="chart_period_1m_v" name="1m"><a
										class="chart_str_period_1m"></a></li>
									<li id="chart_period_3m_v" name="3m"><a
										class="chart_str_period_3m"></a></li>
									<li id="chart_period_5m_v" name="5m"><a
										class="chart_str_period_5m"></a></li>
									<li id="chart_period_15m_v" name="15m"><a
										class="chart_str_period_15m"></a></li>
									<li id="chart_period_30m_v" name="30m"><a
										class="chart_str_period_30m"></a></li>
									<li id="chart_period_1h_v" name="1h"><a
										class="chart_str_period_1h"></a></li>
									<li id="chart_period_2h_v" name="2h"><a
										class="chart_str_period_2h"></a></li>
									<li id="chart_period_4h_v" name="4h"><a
										class="chart_str_period_4h"></a></li>
									<li id="chart_period_6h_v" name="6h"><a
										class="chart_str_period_6h"></a></li>
									<li id="chart_period_12h_v" name="12h"><a
										class="chart_str_period_12h"></a></li>
									<li id="chart_period_1d_v" name="1d"><a
										class="chart_str_period_1d"></a></li>
									<li id="chart_period_1w_v" name="1w"><a
										class="chart_str_period_1w"></a></li>
								</ul>
							</td>
						</tr>
					</table>
				</div>
			</div>

			<!-- Periods -->
			<div id="chart_toolbar_periods_horz">
				<ul class="chart_toolbar_tabgroup"
					style="padding-left: 5px; padding-right: 11px;">
					<li id="chart_period_line_h" name="line"><a
						class="chart_str_period_line"></a></li>
					<li id="chart_period_1m_h" name="1m"><a
						class="chart_str_period_1m"></a></li>
					<li id="chart_period_3m_h" name="3m"><a
						class="chart_str_period_3m"></a></li>
					<li id="chart_period_5m_h" name="5m"><a
						class="chart_str_period_5m"></a></li>
					<li id="chart_period_15m_h" name="15m"><a
						class="chart_str_period_15m"></a></li>
					<li id="chart_period_30m_h" name="30m"><a
						class="chart_str_period_30m"></a></li>
					<li id="chart_period_1h_h" name="1h"><a
						class="chart_str_period_1h"></a></li>
					<li id="chart_period_2h_h" name="2h"><a
						class="chart_str_period_2h"></a></li>
					<li id="chart_period_4h_h" name="4h"><a
						class="chart_str_period_4h"></a></li>
					<li id="chart_period_6h_h" name="6h"><a
						class="chart_str_period_6h"></a></li>
					<li id="chart_period_12h_h" name="12h"><a
						class="chart_str_period_12h"></a></li>
					<li id="chart_period_1d_h" name="1d"><a
						class="chart_str_period_1d"></a></li>
					<li id="chart_period_1w_h" name="1w"><a
						class="chart_str_period_1w"></a></li>
				</ul>
			</div>

			<!-- Open TabBar -->
			<div id="chart_show_indicator"
				class="chart_toolbar_button chart_str_indicator_cap "></div>

			<!-- Open ToolPanel -->
			<div id="chart_show_tools"
				class="chart_toolbar_button chart_str_tools_cap"></div>

			<!-- Theme -->
			<div id="chart_toolbar_theme">
				<div class="chart_toolbar_label chart_str_theme_cap"></div>
				<a name="dark" class="chart_icon chart_icon_theme_dark"></a> <a
					name="light" class="chart_icon chart_icon_theme_light"></a>
			</div>

			<!-- Settings -->
			<div class="chart_dropdown" id="chart_dropdown_settings">
				<div class="chart_dropdown_t">
					<a class="chart_str_settings">SETTINGS</a>
				</div>
				<div class="chart_dropdown_data">
					<table>
						<tr id="chart_select_main_indicator">
							<td class="chart_str_main_indicator">Main Indicator</td>
							<td>
								<ul>
									<li><a name="MA">MA</a></li>
									<li><a name="EMA">EMA</a></li>
									<li><a name="BOLL">BOLL</a></li>
									<li><a name="SAR">SAR</a></li>
									<li><a class="chart_str_none" name="NONE"></a></li>
								</ul>
							</td>
						</tr>
						<tr id="chart_select_chart_style">
							<td class="chart_str_chart_style">Chart Style</td>
							<td>
								<ul>
									<li><a>CandleStick</a></li>
									<li><a>CandleStickHLC</a></li>
									<li><a>OHLC</a></li>
								</ul>
							</td>
						</tr>
						<tr id="chart_select_theme">
							<td class="chart_str_theme">Theme</td>
							<td>
								<ul>
									<li><a name="dark"
										class="chart_icon chart_icon_theme_dark"></a></li>
									<li><a name="light"
										class="chart_icon chart_icon_theme_light"></a></li>
								</ul>
							</td>
						</tr>
						<tr id="chart_enable_tools">
							<td class="chart_str_tools">Tools</td>
							<td>
								<ul>
									<li><a name="on" class="chart_str_on"></a></li>
									<li><a name="off" class="chart_str_off"></a></li>
								</ul>
							</td>
						</tr>
						<tr id="chart_enable_indicator">
							<td class="chart_str_indicator">Indicator</td>
							<td>
								<ul>
									<li><a name="on" class="chart_str_on"></a></li>
									<li><a name="off" class="chart_str_off"></a></li>
								</ul>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<ul>
									<li><a id="chart_btn_parameter_settings"
										class="chart_str_indicator_parameters">Indicator
											Parameters</a></li>
								</ul>
							</td>
						</tr>
					</table>
				</div>
			</div>

			<div id="chart_updated_time">
				<span class="chart_str_updated"></span> <span
					id="chart_updated_time_text">0s</span> <span class="chart_str_ago"></span>
			</div>
		</div>


		<!-- ToolPanel -->
		<div id="chart_toolpanel">
			<div class="chart_toolpanel_separator"></div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_Cursor" name="Cursor"></div>
				<div class="chart_toolpanel_tip chart_str_cursor"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_CrossCursor"
					name="CrossCursor"></div>
				<div class="chart_toolpanel_tip chart_str_cross_cursor"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_SegLine" name="SegLine"></div>
				<div class="chart_toolpanel_tip chart_str_seg_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_StraightLine"
					name="StraightLine"></div>
				<div class="chart_toolpanel_tip chart_str_straight_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_RayLine" name="RayLine"></div>
				<div class="chart_toolpanel_tip chart_str_ray_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_ArrowLine"
					name="ArrowLine"></div>
				<div class="chart_toolpanel_tip chart_str_arrow_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_HoriSegLine"
					name="HoriSegLine"></div>
				<div class="chart_toolpanel_tip chart_str_horz_seg_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_HoriStraightLine"
					name="HoriStraightLine"></div>
				<div class="chart_toolpanel_tip chart_str_horz_straight_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_HoriRayLine"
					name="HoriRayLine"></div>
				<div class="chart_toolpanel_tip chart_str_horz_ray_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_VertiStraightLine"
					name="VertiStraightLine"></div>
				<div class="chart_toolpanel_tip chart_str_vert_straight_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_PriceLine"
					name="PriceLine"></div>
				<div class="chart_toolpanel_tip chart_str_price_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_TriParallelLine"
					name="TriParallelLine"></div>
				<div class="chart_toolpanel_tip chart_str_tri_parallel_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_BiParallelLine"
					name="BiParallelLine"></div>
				<div class="chart_toolpanel_tip chart_str_bi_parallel_line"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_BiParallelRayLine"
					name="BiParallelRayLine"></div>
				<div class="chart_toolpanel_tip chart_str_bi_parallel_ray"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_DrawFibRetrace"
					name="DrawFibRetrace"></div>
				<div class="chart_toolpanel_tip chart_str_fib_retrace"></div>
			</div>
			<div class="chart_toolpanel_button">
				<div class="chart_toolpanel_icon" id="chart_DrawFibFans"
					name="DrawFibFans"></div>
				<div class="chart_toolpanel_tip chart_str_fib_fans"></div>
			</div>
		</div>


		<!-- Canvas Group -->
		<div id="chart_canvasGroup" class="chart_canvasGroup_blackLogo">
			<canvas class="chart_canvas" id="chart_mainCanvas"></canvas>
			<canvas class="chart_canvas" id="chart_overlayCanvas"></canvas>
		</div>

		<!-- TabBar -->
		<div id="chart_tabbar">
			<ul>
				<li><a name="MACD">MACD</a></li>
				<li><a name="KDJ">KDJ</a></li>
				<li><a name="StochRSI">StochRSI</a></li>
				<li><a name="RSI">RSI</a></li>
				<li><a name="DMI">DMI</a></li>
				<li><a name="OBV">OBV</a></li>
				<li><a name="BOLL">BOLL</a></li>
				<li><a name="SAR">SAR</a></li>
				<li><a name="DMA">DMA</a></li>
				<li><a name="TRIX">TRIX</a></li>
				<li><a name="BRAR">BRAR</a></li>
				<li><a name="VR">VR</a></li>
				<li><a name="EMV">EMV</a></li>
				<li><a name="WR">WR</a></li>
				<li><a name="ROC">ROC</a></li>
				<li><a name="MTM">MTM</a></li>
				<li><a name="PSY">PSY</a></li>
			</ul>
		</div>

		<!-- Parameter Settings -->
		<div id="chart_parameter_settings">
			<h2 class="chart_str_indicator_parameters"></h2>
			<table>
				<tr>
					<th>MA</th>
					<td><input name="MA" /><input name="MA" /><input name="MA" /><input
						name="MA" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>DMA</th>
					<td><input name="DMA" /><input name="DMA" /><input
						name="DMA" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>EMA</th>
					<td><input name="EMA" /><input name="EMA" /><input
						name="EMA" /><input name="EMA" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>TRIX</th>
					<td><input name="TRIX" /><input name="TRIX" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>VOLUME</th>
					<td><input name="VOLUME" /><input name="VOLUME" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>BRAR</th>
					<td><input name="BRAR" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>MACD</th>
					<td><input name="MACD" /><input name="MACD" /><input
						name="MACD" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>VR</th>
					<td><input name="VR" /><input name="VR" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>KDJ</th>
					<td><input name="KDJ" /><input name="KDJ" /><input
						name="KDJ" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>EMV</th>
					<td><input name="EMV" /><input name="EMV" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>StochRSI</th>
					<td><input name="StochRSI" /><input name="StochRSI" /><input
						name="StochRSI" /><input name="StochRSI" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>WR</th>
					<td><input name="WR" /><input name="WR" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>RSI</th>
					<td><input name="RSI" /><input name="RSI" /><input
						name="RSI" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>ROC</th>
					<td><input name="ROC" /><input name="ROC" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>DMI</th>
					<td><input name="DMI" /><input name="DMI" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>MTM</th>
					<td><input name="MTM" /><input name="MTM" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>OBV</th>
					<td><input name="OBV" /></td>
					<td><button class="chart_str_default">default</button></td>

					<th>PSY</th>
					<td><input name="PSY" /><input name="PSY" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>

				<tr>
					<th>BOLL</th>
					<td><input name="BOLL" /></td>
					<td><button class="chart_str_default">default</button></td>
				</tr>
			</table>
			<div id="close_settings">
				<a class="chart_str_close"></a>
			</div>
		</div>

		<!-- Loading -->
		<div id="chart_loading" class="chart_str_loading"></div>

	</div>
	<!-- End Of ChartContainer -->

	<div style="display: none">
		<form style="display: inline" id="chart_input_interface">
			<input style="display: inline" type="text"
				id="chart_input_interface_text"> <input
				style="display: inline" type="submit"
				id="chart_input_interface_submit">
		</form>
		<form style="display: inline" id="chart_output_interface">
			<input style="display: inline" type="text"
				id="chart_output_interface_text"> <input
				style="display: inline" type="submit"
				id="chart_output_interface_submit">
		</form>
	</div>
	<div style="display: none" id="chart_language_switch_tmp">
		<span name="chart_str_btc_this_week" zh_tw="當周 BTC" zh_cn="当周 BTC"
			en_us="BTC" /> <span name="chart_str_btc_next_week" zh_tw="次周 BTC"
			zh_cn="次周 BTC" en_us="BTC" /> <span name="chart_str_btc_month"
			zh_tw="全月 BTC" zh_cn="全月 BTC" en_us="BTC" /> <span
			name="chart_str_btc_quarter" zh_tw="季度 BTC" zh_cn="季度 BTC"
			en_us="BTC" /> <span name="chart_str_ltc_this_week" zh_tw="當周 LTC"
			zh_cn="当周 LTC" en_us="LTC" /> <span name="chart_str_ltc_next_week"
			zh_tw="次周 LTC" zh_cn="次周 LTC" en_us="LTC" /> <span
			name="chart_str_ltc_month" zh_tw="全月 LTC" zh_cn="全月 LTC" en_us="LTC" />
		<span name="chart_str_ltc_quarter" zh_tw="季度 LTC" zh_cn="季度 LTC"
			en_us="LTC" /> <span name="chart_str_period" zh_tw="週期" zh_cn="周期"
			en_us="TIME" /> <span name="chart_str_period_line" zh_tw="分時"
			zh_cn="分时" en_us="Line" /> <span name="chart_str_period_1m"
			zh_tw="1分钟" zh_cn="1分钟" en_us="1m" /> <span
			name="chart_str_period_3m" zh_tw="3分钟" zh_cn="3分钟" en_us="3m" /> <span
			name="chart_str_period_5m" zh_tw="5分钟" zh_cn="5分钟" en_us="5m" /> <span
			name="chart_str_period_15m" zh_tw="15分钟" zh_cn="15分钟" en_us="15m" />
		<span name="chart_str_period_30m" zh_tw="30分钟" zh_cn="30分钟"
			en_us="30m" /> <span name="chart_str_period_1h" zh_tw="1小時"
			zh_cn="1小时" en_us="1h" /> <span name="chart_str_period_2h"
			zh_tw="2小時" zh_cn="2小时" en_us="2h" /> <span
			name="chart_str_period_4h" zh_tw="4小時" zh_cn="4小时" en_us="4h" /> <span
			name="chart_str_period_6h" zh_tw="6小時" zh_cn="6小时" en_us="6h" /> <span
			name="chart_str_period_12h" zh_tw="12小時" zh_cn="12小时" en_us="12h" />
		<span name="chart_str_period_1d" zh_tw="日線" zh_cn="日线" en_us="1d" /> <span
			name="chart_str_period_1w" zh_tw="周線" zh_cn="周线" en_us="1w" /> <span
			name="chart_str_settings" zh_tw="更多" zh_cn="更多" en_us="MORE" /> <span
			name="chart_setting_main_indicator" zh_tw="均線設置" zh_cn="均线设置"
			en_us="Main Indicator" /> <span
			name="chart_setting_main_indicator_none" zh_tw="關閉均線" zh_cn="关闭均线"
			en_us="None" /> <span name="chart_setting_indicator_parameters"
			zh_tw="指標參數設置" zh_cn="指标参数设置" en_us="Indicator Parameters" /> <span
			name="chart_str_chart_style" zh_tw="主圖樣式" zh_cn="主图样式"
			en_us="Chart Style" /> <span name="chart_str_main_indicator"
			zh_tw="主指標" zh_cn="主指标" en_us="Main Indicator" /> <span
			name="chart_str_indicator" zh_tw="技術指標" zh_cn="技术指标"
			en_us="Indicator" /> <span name="chart_str_indicator_cap"
			zh_tw="技術指標" zh_cn="技术指标" en_us="INDICATOR" /> <span
			name="chart_str_tools" zh_tw="畫線工具" zh_cn="画线工具" en_us="Tools" /> <span
			name="chart_str_tools_cap" zh_tw="畫線工具" zh_cn="画线工具" en_us="TOOLS" />
		<span name="chart_str_theme" zh_tw="主題選擇" zh_cn="主题选择" en_us="Theme" />
		<span name="chart_str_theme_cap" zh_tw="主題選擇" zh_cn="主题选择"
			en_us="THEME" /> <span name="chart_str_none" zh_tw="關閉" zh_cn="关闭"
			en_us="None" /> <span name="chart_str_theme_dark" zh_tw="深色主題"
			zh_cn="深色主题" en_us="Dark" /> <span name="chart_str_theme_light"
			zh_tw="淺色主題" zh_cn="浅色主题" en_us="Light" /> <span name="chart_str_on"
			zh_tw="開啟" zh_cn="开启" en_us="On" /> <span name="chart_str_off"
			zh_tw="關閉" zh_cn="关闭" en_us="Off" /> <span name="chart_str_close"
			zh_tw="關閉" zh_cn="关闭" en_us="CLOSE" /> <span name="chart_str_default"
			zh_tw="默認值" zh_cn="默认值" en_us="default" /> <span
			name="chart_str_loading" zh_tw="正在讀取數據..." zh_cn="正在读取数据..."
			en_us="Loading..." /> <span name="chart_str_indicator_parameters"
			zh_tw="指標參數設置" zh_cn="指标参数设置" en_us="Indicator Parameters" /> <span
			name="chart_str_cursor" zh_tw="光標" zh_cn="光标" en_us="Cursor" /> <span
			name="chart_str_cross_cursor" zh_tw="十字光標" zh_cn="十字光标"
			en_us="Cross Cursor" /> <span name="chart_str_seg_line" zh_tw="線段"
			zh_cn="线段" en_us="Trend Line" /> <span name="chart_str_straight_line"
			zh_tw="直線" zh_cn="直线" en_us="Extended" /> <span
			name="chart_str_ray_line" zh_tw="射線" zh_cn="射线" en_us="Ray" /> <span
			name="chart_str_arrow_line" zh_tw="箭頭" zh_cn="箭头" en_us="Arrow" /> <span
			name="chart_str_horz_seg_line" zh_tw="水平線段" zh_cn="水平线段"
			en_us="Horizontal Line" /> <span name="chart_str_horz_straight_line"
			zh_tw="水平直線" zh_cn="水平直线" en_us="Horizontal Extended" /> <span
			name="chart_str_horz_ray_line" zh_tw="水平射線" zh_cn="水平射线"
			en_us="Horizontal Ray" /> <span name="chart_str_vert_straight_line"
			zh_tw="垂直直線" zh_cn="垂直直线" en_us="Vertical Extended" /> <span
			name="chart_str_price_line" zh_tw="價格線" zh_cn="价格线"
			en_us="Price Line" /> <span name="chart_str_tri_parallel_line"
			zh_tw="價格通道線" zh_cn="价格通道线" en_us="Parallel Channel" /> <span
			name="chart_str_bi_parallel_line" zh_tw="平行直線" zh_cn="平行直线"
			en_us="Parallel Lines" /> <span name="chart_str_bi_parallel_ray"
			zh_tw="平行射線" zh_cn="平行射线" en_us="Parallel Rays" /> <span
			name="chart_str_fib_retrace" zh_tw="斐波納契回調" zh_cn="斐波纳契回调"
			en_us="Fibonacci Retracements" /> <span name="chart_str_fib_fans"
			zh_tw="斐波納契扇形" zh_cn="斐波纳契扇形" en_us="Fibonacci Fans" /> <span
			name="chart_str_updated" zh_tw="更新於" zh_cn="更新于" en_us="Updated" /> <span
			name="chart_str_ago" zh_tw="前" zh_cn="前" en_us="ago" />
	</div>
	 <style>
 .right_active{ background-color:#ccc}
 .bianhao1 th{ font-size:14px;  line-height: 26px;}
  .bianhao1 td{    line-height: 27px;}
  .weituo tr td{text-align: center !important;}
  .weituo tr th{ font-size:14px;  line-height: 26px;background-color:#f6f6f6; height:auto;text-align: center !important;}
  .right_header h2{    padding: 5px 15px 5px 15px;border-top:1px solid #ccc;border-left:1px solid #ccc;}
  .right_header h2:hover{    cursor: pointer;}
  .right_header{}
 </style> 
	<div class="main_box" style="width:100%"> 
    <!--普通-->
    <!--<div class="" class="qh_k" id="k-cus-box" style="height:500px;width:65%;float:left">
		
			<iframe id="kline_iframe" onload="javascript:iframe_onload();"
				style="border: 0; width: 100%; height: 100%;"
				src="<?php echo U('Kline/index',['currency_id'=>$currency['currency_id']]);?>"></iframe>
    </div>-->
<input type="hidden" id="currency_id" value="<?php echo ($currency['currency_id']); ?>">
    <div>
    <div style=" float:left !important;width: 50%;">
     
	  <div style=" width:62% !important; float:left !important;    margin-top: 2px;">
	   
      <div class="curve pay" style="width: 100%;">
        <div class="buysell sellform">
		
          <div class="buyformarea left">
            <h2 class="buy">买入<?php echo ((isset($currency["currency_name"]) && ($currency["currency_name"] !== ""))?($currency["currency_name"]):"股票"); ?></h2>
            <ul class="buyform">
              <li>
                <label for="price" class="buys">股票编号：</label>
                   <select style="  width:60%; height: 28px;" onChange="gpnum(this.options[this.options.selectedIndex].value)">
				 <?php if(is_array($currency_or)): $i = 0; $__LIST__ = $currency_or;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["currency_id"]); ?>" <?php if(($currency["currency_mark"]) == $vo['currency_mark']): ?>selected="selected"<?php endif; ?>><?php echo ($vo["currency_mark"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
					
				</select>
              </li>
              <li>
                <label for="price" class="buys">买入价格：</label>
                <input style="    width:60% !important; height: 28px;" value="<?php echo (number_format($sell_record[count($sell_record)-1]['price'],$currency['currency_digit_num'])); ?>" style="color:#999" name="buyprice" id="coinpricein" onKeyUp="vNum(this,<?php echo ($currency["currency_digit_num"]); ?>);zuidakemai();" onClick="if(value==defaultValue){value='';}" onBlur="if(value==''){value='0.000';}" type="text">
              </li>
              <li>
                <label for="num" class="buys">最大可买：</label>
                <b style="    width:60% !important; height: 28px;" id="coinbuy_max"  title="点击将数值写入数量输入框"></b><span class="maxcoin" id = "coinbuy_aa"><?php echo (intval($user_currency_money['currency_trade']['num']/$sell_record[count($sell_record)-1]['price'])); ?></span> </li>
              <li>
                <label for="buynum" class="buys">买入数量：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input style="    width:60% !important; height: 28px;" name="buynum" id="numberin" onKeyUp="vNum(this,0);" autocomplete="off" type="text" value="">
              </li>
              <li>
                <label for="buyword" class="buys">交易密码：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input style="    width:60% !important; height: 28px;" class="buyinput"  id="pwdtradein" value="<?php echo (session('tradepwd')); ?>"  autocomplete="off" type="password" name="buypwd">
              </li>
              <li>
                <label for="num" class="buys">交易额 ：</label>
                <input style="    width:60% !important; height: 28px;" id="coinin_sumprice" type="text" onkeyup='total_in(this,<?php echo ($currency["currency_digit_num"]); ?>);' name="total">
                <!-- <b id="coinin_sumprice">0.00</b> <?php echo ((isset($currency_trade["currency_mark"]) && ($currency_trade["currency_mark"] !== ""))?($currency_trade["currency_mark"]):"CNY"); ?> --></li>
              <li>
                <label for="num" class="buys">手续费 ：</label>
                <b style="    width:60% !important; height: 28px;" id="feebuy">0.00</b><span>（<?php echo ((isset($currency["currency_buy_fee"]) && ($currency["currency_buy_fee"] !== ""))?($currency["currency_buy_fee"]):"0.00%"); ?>%）</span></li>
              
            </ul>
            <p class="sellform" style="margin-bottom:10px;">
              <input  id="trustbtnin"  style="margin-left: 6%;    width: 87%;" onClick="buy()" class="submit" value="买入" type="button">
            </p>
           <!--  <p class="sellform" style="margin:15px 0;"><span id="trustmsgin" class="tishi">股票交易具有极高的风险，投资需谨慎</span></p> -->
          </div>
          <div class="buyformarea left" style="margin-left:2.5%;">
            <h2 class="sell">卖出<?php echo ((isset($currency["currency_name"]) && ($currency["currency_name"] !== ""))?($currency["currency_name"]):"股票"); ?></h2>
            <ul class="buyform sellform">
              <li>
                <label for="price" class="buys">股票编号：</label>
                 <select style="    width:60% !important; height: 28px;" onChange="gpnum(this.options[this.options.selectedIndex].value)">
				 <?php if(is_array($currency_or)): $i = 0; $__LIST__ = $currency_or;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["currency_id"]); ?>" <?php if(($currency["currency_mark"]) == $vo['currency_mark']): ?>selected="selected"<?php endif; ?>><?php echo ($vo["currency_mark"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
					
				</select>
              </li>
              <li> 
                <label for="price" class="buys">卖出价格：</label>
                <input  style="    width:60% !important; height: 28px;" value="<?php echo (number_format($buy_record[0]['price'],$currency['currency_digit_num'])); ?>" style="color:#999;" class="buyinput" id="coinpriceout" onKeyUp="vNum2(this,<?php echo ($currency["currency_digit_num"]); ?>);" onClick="if(value==defaultValue){value='';}" onBlur="if(value==''){value='0.000';}" type="text">
               
              </li>
              <li>
                <label for="num" class="buys">最大可卖：</label>
                <b  style="    width:60% !important; height: 28px;" id="coinsale_max" onClick="$('#numberout').val(this.innerHTML)" title="点击将数值写入数量输入框"><?php echo (intval($user_currency_money['currency']['num'])); ?></b><span></span> </li>
              <li>
                <label for="buynum" class="buys">卖出数量：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input style="    width:60% !important; height: 28px;" class="buyinput" id="numberout" onKeyUp="vNum2(this,0);" autocomplete="off" type="text">
              </li>
              <li>
                <label for="buyword" class="buys">交易密码：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input style="    width:60% !important; height: 28px;" class="buyinput" id="pwdtradeout" value="<?php echo (session('tradepwd')); ?>" autocomplete="off" type="password">
              </li>
              <li>
                <label for="num" class="buys">交易额：</label>
                <input style="    width:60% !important; height: 28px;" type="" name="" id="coinout_sumprice" onkeyup='total_out(this,<?php echo ($currency["currency_digit_num"]); ?>)'>
                <!-- <b id="coinout_sumprice">0.00</b><?php echo ((isset($currency_trade["currency_mark"]) && ($currency_trade["currency_mark"] !== ""))?($currency_trade["currency_mark"]):"CNY"); ?></li> -->
              <li>
                <label for="num" class="buys">手续费：</label>
                <b style="    width:60% !important; height: 28px;" id="fee">0.00</b><span>（<?php echo ((isset($currency["currency_sell_fee"]) && ($currency["currency_sell_fee"] !== ""))?($currency["currency_sell_fee"]):"0.00"); ?>%）</span></li>
              
            </ul>
            <p class="sellform2" style="margin-bottom:10px;">
              <input class="submit"   style="margin-left: 6%;    width: 87%;" id="trustbtnout" value="卖出" onClick="sell();" type="button">
            </p>
            <!--<p class="sellform" style="margin:15px 0;"><span id="trustmsgout" class="tishi">股票货币交易具有极高的风险，投资需谨慎！</span></p>-->
          </div>
		  <div class="clear"></div>
		 
             <script>
		  function gpnum(x){
		  		window.location.href="/Home/Kline/index/currency_id/"+x;
		  }
		  </script>
		  
      <div class="clear"></div>

      
	  
          <div class="clear"></div>
        </div>
      </div>
    </div> 
	  
	<div style=" width:38% !important; float:right !important;">
    <div class="qh_table" style="margin-top:-5px;max-height:520px; overflow:hidden">
      
      <table cellspacing="0" cellpadding="0" border="0" class="latest_list weituo" align="center" style="border-bottom:2px solid #d2d2d2;font-size:15px;  width:100%;    margin-top: 10px;">
      <thead>
          <tr style="height:25px;">
           <th style="height:25px; text-align:center; width:22%;background:#f6f6f6" class="left_sell">卖 / 买</th>
            <th style="height:25px; width:23%;background:#f6f6f6;text-align:center;padding-left:4px">价格</th>
            <th style="height:25px;width:27%;background:#f6f6f6;text-align:center;padding-left:4px">委托量</th>
            <th style="height:25px;width:28%;background:#f6f6f6;text-align:center;padding-left:4px">总计</th>
          </tr>
        </thead>
        <tbody id="coinsalelist">
          <?php if(is_array($sell_record)): $k = 0; $__LIST__ = $sell_record;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><tr class="list_con2"  onclick="getsell(this)"  onmouseover="chufa1(this)" onMouseOut="likai1(this)">
              <td class="sell left_sell" style="width:22%;">卖(<?php echo count($sell_record)-$k+1 ?>)</td>
              <td style="width:23%;"  class="sell left_sell">¥<?php echo (formatOrderNum($vo["price"])); ?></td>
              <td class="sell left_sell" style="width:27%" ><?php if(($currency["currency_name"]) == "比特币"): echo (number_format($vo['num']-$vo['trade_num'],3)); ?> <?php else: echo (number_format($vo['num']-$vo['trade_num'],2)); endif; ?></td>
              <td class="sell left_sell"  style="width:28%;">¥<?php echo (number_format($vo['price'] * ($vo['num']-$vo['trade_num']),2)); ?></td>
            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
          <tr class="hd_list1" style="background-color: rgb(246, 246, 246);">
			  <td class="sell left_sell" style="width:22%">卖(1)</td>
			  <td style="width:23%"  class="sell left_sell">--</td>
			  <td class="sell left_sell" style="width:27%" >--</td>
			  <td class="sell left_sell" style="width:28%;">--</td>
		  </tr>
          <tr class="hd_list2" style="background-color: rgb(246, 246, 246);">
			  <td class="sell left_sell" style="width:22%">卖(2)</td>
			  <td style="width:23%"  class="sell left_sell">--</td>
			  <td class="sell left_sell" style="width:27%" >--</td>
			  <td class="sell left_sell" style="width:28%;">--</td>
		  </tr>
          <tr class="hd_list3" style="background-color: rgb(246, 246, 246);">
			  <td class="sell left_sell" style="width:22%">卖(3)</td>
			  <td style="width:23%"  class="sell left_sell">--</td>
			  <td class="sell left_sell" style="width:27%" >--</td>
			  <td class="sell left_sell" style="width:28%;">--</td>
		  </tr>
        </tbody>
      </table>
      <script>
		$(document).ready(function(){
			var list_con2 = $("#coinsalelist").find(".list_con2");
			console.log(list_con2);
			console.log(list_con2.length);
			switch(list_con2.length){
				case 0:
					$(".hd_list1").show();
					$(".hd_list2").show();
					$(".hd_list3").show();
				break;
				case 1:
					$(".hd_list1").hide();
					$(".hd_list2").show();
					$(".hd_list3").show();
				break;
				case 2:
					$(".hd_list1").hide();
					$(".hd_list2").hide();
					$(".hd_list3").show();
				break;
				case 3:
					$(".hd_list1").hide();
					$(".hd_list2").hide();
					$(".hd_list3").hide();
				break;
			}
		})
		
		</script>
      <table cellspacing="0" cellpadding="0" border="0" class="latest_list weituo" align="center" style="font-size:15px;width:100%;  ">
        
        <tbody id="coinbuylist">
          <?php if(is_array($buy_record)): $k = 0; $__LIST__ = $buy_record;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><tr class="list_con2" onClick="buynum(this)" onMouseOver="chufa(this)" onMouseOut="likai(this)">
              <td class="buy left_sell" style="width:22%;;">买(<?php echo ($k); ?>)</td>
              <td class="buy left_sell" style="width:23%;;">¥<?php echo (formatOrderNum($vo["price"])); ?></td>
              <td class="buy left_sell" style="width:27%"><?php if(($currency["currency_name"]) == "比特币"): echo (number_format($vo['num']-$vo['trade_num'],3)); ?> <?php else: ?> <?php echo (number_format($vo['num']-$vo['trade_num'],2)); endif; ?></td>
              <td class="buy left_sell" style="width:28%;;">¥<?php echo (number_format($vo['price'] * ($vo['num']-$vo['trade_num']),2)); ?></td>
            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
          <tr class="hd_list4" style="background-color: rgb(246, 246, 246);">
			  <td class="buy left_sell" style="width:22%">买(1)</td>
			  <td style="width:23%"  class="buy left_sell">--</td>
			  <td class="buy left_sell" style="width:27%" >--</td>
			  <td class="buy left_sell" style="width:28%;">--</td>
		  </tr>
          <tr class="hd_list5" style="background-color: rgb(246, 246, 246);">
			  <td class="buy left_sell" style="width:22%">买(2)</td>
			  <td style="width:23%"  class="buy left_sell">--</td>
			  <td class="buy left_sell" style="width:27%" >--</td>
			  <td class="buy left_sell" style="width:28%;">--</td>
		  </tr>
          <tr class="hd_list6" style="background-color: rgb(246, 246, 246);">
			  <td class="buy left_sell" style="width:22%">买(3)</td>
			  <td style="width:23%"  class="buy left_sell">--</td>
			  <td class="buy left_sell" style="width:27%" >--</td>
			  <td class="buy left_sell" style="width:28%;">--</td>
		  </tr>
        </tbody>
    
      </table>
      <script>
		$(document).ready(function(){
			var list_con2 = $("#coinbuylist").find(".list_con2");
			console.log(list_con2);
			console.log(list_con2.length);
			switch(list_con2.length){
				case 0:
					$(".hd_list4").show();
					$(".hd_list5").show();
					$(".hd_list6").show();
				break;
				case 1:
					$(".hd_list4").hide();
					$(".hd_list5").show();
					$(".hd_list6").show();
				break;
				case 2:
					$(".hd_list4").hide();
					$(".hd_list5").hide();
					$(".hd_list6").show();
				break;
				case 3:
					$(".hd_list4").hide();
					$(".hd_list5").hide();
					$(".hd_list6").hide();
				break;
			}
		})
		
		</script>
    </div>  
     <div class="my_coin" style="width: 92%;  margin: 10px 0;height:150px;    margin-top: 9px;"> 
        <!--登录后-->
        <?php if(!empty($session)): ?><!-- <ul>

            <li>我的<?php echo ((isset($currency["currency_name"]) && ($currency["currency_name"] !== ""))?($currency["currency_name"]):"虚拟币"); ?> 资产：</li>
            <li>可用：<span class="sell" id="from_over"><?php echo ((isset($user_currency_money['currency']['num']) && ($user_currency_money['currency']['num'] !== ""))?($user_currency_money['currency']['num']):0.00); ?></span></li>
            <li>冻结：<span class="buy" id="from_lock"><?php echo ((isset($user_currency_money['currency']['forzen_num']) && ($user_currency_money['currency']['forzen_num'] !== ""))?($user_currency_money['currency']['forzen_num']):0.00); ?></span></li>
            <li>总量：<span style="color:#333;" id="from_total"><?php echo ($user_currency_money['currency']['num']+$user_currency_money['currency']['forzen_num']); ?></span></li>
            <div class="clear"></div>
          </ul> -->
          <ul>
              <li>可用资金：<?php echo ((isset($user_currency_money['currency_trade']['num']) && ($user_currency_money['currency_trade']['num'] !== ""))?($user_currency_money['currency_trade']['num']):0.00); ?></li>
            <li>可取资金：<?php echo ((isset($user_currency_money['currency_trade']['num']) && ($user_currency_money['currency_trade']['num'] !== ""))?($user_currency_money['currency_trade']['num']):0.00); ?></li>
            <li>持有市值：<?php echo ((isset($user_currency_money['currency_trade']['cysz']) && ($user_currency_money['currency_trade']['cysz'] !== ""))?($user_currency_money['currency_trade']['cysz']):0.00); ?></li>
            <li>总&nbsp;资&nbsp;金&nbsp;：<?php echo ($user_currency_money['currency_trade']['num']+$user_currency_money['currency_trade']['forzen_num']); ?></li>
            <div class="clear"></div>
          </ul>
		   <?php if(($config["jiaoyitishi"]) == "1"): if(($_GET['currency']) == "G"): ?><div align='center' style='color:red;'><?php echo ($currency["currency_name"]); ?>今日的涨停价格：<?php echo ($up); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 跌停价格：<?php echo ($down); ?></div><?php endif; endif; ?>
          <?php else: ?>
          <style>
          	
          	.my_coin{height:50px !important;}
          </style>
          <p>我的资产：<a href="<?php echo U('Login/index');?>">登录</a> | <a href="<?php echo U('Reg/reg');?>">注册</a></p><?php endif; ?>
      </div>
	<!-- <div style=" width:50%" class="dl_div0">
      <p class="more_coin" style="margin-bottom:20px    padding-left: 32px;"><a href="http://<?php echo ((isset($currency["aa"]) && ($currency["aa"] !== ""))?($currency["aa"]):''); ?> " target="_blank">查看股票详情</a></p>

        <h2 style=" margin-left:5%;color:#FF8938;font-size:16px;font-weight:600">最新成交<a href="<?php echo U('Trade/myDeal');?>" class="right my_coin_trade">我的成交</a></h2>
        <div class="buysell" style="margin-top:0px;padding:0px">
          <ul class="record_title" style="background:#f6f6f6;font-size:15px;float:right;">
            <li style="width:67;padding-left:10px">成交时间</li>
            <li style="width:50px;padding-left:20px">类型</li>
            <li style="width:65px;">成交价格</li>
            <li style="width:70px;padding-left:10px">成交量</li>
            <li style="width:45px;padding-left:10px">总计</li>
          </ul>
          <div class="record" style="float:left;background:#f6f6f6">
            <table class="latest_list record_list" align="center" border="0" cellpadding="0" cellspacing="0" style="font-size:12px;background:#f6f6f6">
              <tbody id="coinorderlist" style=" background:#f6f6f6">
                <?php if(is_array($trade)): $i = 0; $__LIST__ = $trade;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                  <td class="list_con1"><?php echo (date(' H:i:s',$vo["add_time"])); ?></td>
                  <td class="list_con1 <?php echo ($vo["type"]); ?>"><?php if(($vo["type"]) == "sell"): ?>卖<?php else: ?>买<?php endif; ?></td>
                  <td class="list_con1 <?php echo ($vo["type"]); ?>"><?php echo (number_format($vo["price"],$currency['currency_digit_num'])); ?></td>
                  <td class="list_con1"><?php echo (number_format($vo["num"],2)); ?></td>
                  <td class="list_con1"><?php echo (number_format($vo['num']*$vo['price'],2)); ?></td>
                </tr><?php endforeach; endif; else: echo "" ;endif; ?>
              </tbody>
            </table>
          </div>
        </div>

 </div> -->
    </div>
	

	<!--交易币种id-->
		<div class="clear"></div>		 
	
  </div>
<div class="right" style="    width: 49.8%;
    margin-right: 0.2%;">
	<div class="right_header">
		<h2 class="left right_active cc_div" name="cc_div" style="margin-top:2px;color:#FF8938;font-size:16px;font-weight:600">持仓汇总</h2>
	  <h2 class="left wt_div" name="wt_div" style="margin-top:2px;color:#FF8938;font-size:16px;font-weight:600">委托</h2>
	  <h2 class="left cj_div" name="cj_div" style="margin-top:2px;color:#FF8938;font-size:16px;font-weight:600">成交汇总</h2>
	  <h2 class="left cx_div" name="cx_div" style="margin-top:2px;color:#FF8938;font-size:16px;font-weight:600">撤买</h2>
	  <h2 class="left cm_div" name="cm_div" style="margin-top:2px;color:#FF8938;font-size:16px;font-weight:600;border-right:1px solid #ccc;">撤卖</h2>
	  
	  <p class="sellform" style="color: #FF8938;">
        <input class="submit" onclick="javascript:window.location.href='<?php echo U('Orders/index',['currency'=>$currency['currency_mark']]);?>'" style="float: right; width:10%; height:35px;" id="trustbtnout" value="返回" type="button">
        <input class="submit" onclick="javascript:window.location.reload()" style="float: right; width:10%; height:35px;" id="trustbtnout" value="刷新" type="button">
      </p>
	  <div class="clear"></div>
	  </div>
		<div style="    border: 1px solid #ccc; " id="cc_div">
	<?php if(!empty($session)): ?><table class="coin_list coinarea bianhao1" cellpadding="0" cellspacing="0" style="margin-top:0px;background: #f6f6f6;">
	  
			<thead>
                <tr style="    border-bottom: 2px solid #d2d2d2;">
					<th class="header text_center">股票编号</th>
					<th style="text-align:center;">股票名称</th>
					<th class="header text_center">持有均价</th>
				<!--	<th class="header text_center">货贷</th>-->
					<th class="header text_center">持有数量</th>
					<th class="header text_center">持有盈亏</th>
					<th class="header text_center">持有盈亏比例</th>
					<!-- <th class="header text_center">总持有量</th> -->
				
					
					
					<th class="header text_center" >市值</th>
				</tr>
			</thead>
			<tbody>
                  <?php if(is_array($currency_user)): $i = 0; $__LIST__ = $currency_user;if( count($__LIST__)==0 ) : echo "$empty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr class="coin_num">
					    <td class="header text_center"><?php echo ($vo["currency_mark"]); ?></td>
                        <td class="header text_center"><?php echo ((isset($vo["currency_name"]) && ($vo["currency_name"] !== ""))?($vo["currency_name"]):"股票"); ?></td>
						<td class="header text_center"><?php echo ((isset($vo["chiyoujunjia"]) && ($vo["chiyoujunjia"] !== ""))?($vo["chiyoujunjia"]):"0.00"); ?></td>
				<!--		<td class="header text_center">假数据</td>-->
						<td class="header text_center"><?php echo ((isset($vo["num"]) && ($vo["num"] !== ""))?($vo["num"]):"0.00"); ?></td>
                       <!--  <td class="header text_center"><?php echo ($vo['num']+$vo['forzen_num']); ?></td> -->
	                    <td class="header text_center">
	                    <?php if($vo['yk'] < 0 ): ?><span class="sell"><?php echo ((isset($vo["yk"]) && ($vo["yk"] !== ""))?($vo["yk"]):"0.00"); ?></span>
	                    <?php else: ?>
	                    	<span class="buy"><?php echo ((isset($vo["yk"]) && ($vo["yk"] !== ""))?($vo["yk"]):"0.00"); ?></span><?php endif; ?>
	                    </td>
						<td class="header text_center">
						<?php if($vo['ykbl'] < 0 ): ?><span class="sell"><?php echo ((isset($vo["ykbl"]) && ($vo["ykbl"] !== ""))?($vo["ykbl"]):"0.00"); ?>%</span>
	                    <?php else: ?>
	                    	<span class="buy"><?php echo ((isset($vo["ykbl"]) && ($vo["ykbl"] !== ""))?($vo["ykbl"]):"0.00"); ?>%</span><?php endif; ?>
						</td>
						<td class="header text_center"><?php echo ((isset($vo["shizhi"]) && ($vo["shizhi"] !== ""))?($vo["shizhi"]):"0.00"); ?></td>
                    </tr><?php endforeach; endif; else: echo "$empty" ;endif; ?>
			</tbody>
		</table><?php endif; ?>
		
		</div>
		<div style="    border: 1px solid #ccc;display:none" id="wt_div">
		<?php if(!empty($session)): ?><table class="latest_list weituo weituo1" style=" width:100%" align="center" border="0" cellpadding="0" cellspacing="0">
		  <thead>
                <tr style="    border-bottom: 2px solid #d2d2d2;">
					<th>时间</th>
					<th style="text-align:center;">数量</th>
					<th class="header text_center">价格</th>
				
					<th class="header text_center">类型</th>
					
					<th class="header text_center" >交易额</th>
					<th class="header text_center" >操作</th>
				</tr>
			</thead>
            <tbody id="mycointrustlist">
            <?php if(is_array($user_orders)): foreach($user_orders as $key=>$v): ?><tr class="list_con2 ">
              <td style="text-align:center"><?php echo (date('H:i:s',$v['add_time'])); ?></td>
              <td style="text-align:center" ><?php echo (number_format($v['num']-$v['trade_num'],2)); ?></td>
              <td style="text-align:center"><?php echo (number_format($v["price"],$currency['currency_digit_num'])); ?></td>
              <td class="<?php echo ($v['type']); ?> left_sell text_center " style=""><?php echo (fomatOrdersType($v['type'])); ?></td>
              <td style="text-align:center"><?php echo (number_format($v['price']*($v['num']-$v['trade_num']),2)); ?></td>
              <td style="text-align:center"><a href="javascript:void(0)"  onclick="cexiao(<?php echo ($v["orders_id"]); ?>)">撤销</a></td>
            </tr><?php endforeach; endif; ?>
            </tbody>
          </table>
      <?php else: ?>
	  <div style="color:#333; background:#fff; line-height:460px; font-size:14px; text-align:left; text-align: center;">
                请先登录
        </div><?php endif; ?>
		</div >
		<div style="    border: 1px solid #ccc;display:none" id="cj_div">
		<?php if(!empty($session)): ?><table class="latest_list weituo weituo1" style=" width:100%" align="center" border="0" cellpadding="0" cellspacing="0">
		  <thead>
                <tr style="    border-bottom: 2px solid #d2d2d2;">
					<th>时间</th>
					<th style="text-align:left;">数量</th>
					<th class="header text_center">价格</th>
				
					<th class="header text_center">类型</th>
					
					<th class="header text_center" >交易额</th>
				</tr>
			</thead>
            <tbody id="mycointrustlist">
            <?php if(is_array($chengjiao)): foreach($chengjiao as $key=>$v): ?><tr class="list_con2">
              <td ><?php echo (date('H:i:s',$v['add_time'])); ?></td>
              <td  ><?php echo (number_format($v['num']-$v['trade_num'],2)); ?></td>
              <td ><?php echo (number_format($v["price"],$currency['currency_digit_num'])); ?></td>
              <td class="<?php echo ($v['type']); ?> left_sell "><?php echo (fomatOrdersType($v['type'])); ?></td>
              <td style="text-align:center"><?php echo (number_format($v['price']*($v['num']-$v['trade_num']),2)); ?></td>
              <!-- <td style="width:100px;text-align:center"><a href="javascript:void(0)"  onclick="cexiao(<?php echo ($v["orders_id"]); ?>)">撤销</a></td> -->
            </tr><?php endforeach; endif; ?>
            </tbody>
          </table>
      <?php else: ?>
	  <div style="color:#333; background:#fff; line-height:460px; font-size:14px; text-align:left; text-align: center;">
                请先登录
        </div><?php endif; ?>
		</div>
		<div style="    border: 1px solid #ccc;display:none" id="cx_div">
		<?php if(!empty($session)): ?><table class="latest_list weituo weituo1" style=" width:100%" align="center" border="0" cellpadding="0" cellspacing="0">
		  <thead>
                <tr style="    border-bottom: 2px solid #d2d2d2;">
					<th>时间</th>
					<th style="text-align:center;">数量</th>
					<th class="header text_center">价格</th>
				
					<th class="header text_center">类型</th>
					
					<th class="header text_center" >交易额</th>
				<!--	<th class="header text_center" >操作</th>-->
				</tr>
			</thead>
            <tbody id="mycointrustlist">
            <?php if(is_array($buy_order)): foreach($buy_order as $key=>$v): ?><tr class="list_con2 ">
              <td style="text-align:center"><?php echo (date('H:i:s',$v['add_time'])); ?></td>
              <td style="text-align:center" ><?php echo (number_format($v['num']-$v['trade_num'],2)); ?></td>
              <td style="text-align:center"><?php echo (number_format($v["price"],$currency['currency_digit_num'])); ?></td>
              <td class="<?php echo ($v['type']); ?> left_sell text_center " style=""><?php echo (fomatOrdersType($v['type'])); ?></td>
              <td style="text-align:center"><?php echo (number_format($v['price']*($v['trade_num']),2)); ?></td>
            <!--  <td style="text-align:center"><a href="javascript:void(0)"  onclick="cexiao(<?php echo ($v["orders_id"]); ?>)">撤销</a></td>-->
            </tr><?php endforeach; endif; ?>
            </tbody>
          </table>
      <?php else: ?>
	  <style>
	  .qh_kong{height:70px !important;}
	  </style>
	  <div style="color:#333; background:#fff; line-height:460px; font-size:14px; text-align:left; text-align: center;">
                请先登录
        </div><?php endif; ?>
		</div >
		<div style="    border: 1px solid #ccc;display:none" id="cm_div">
		<?php if(!empty($session)): ?><table class="latest_list weituo weituo1" style=" width:100%" align="center" border="0" cellpadding="0" cellspacing="0">
		  <thead>
                <tr style="    border-bottom: 2px solid #d2d2d2;">
					<th>时间</th>
					<th style="text-align:left;">数量</th>
					<th class="header text_center">价格</th>
				
					<th class="header text_center">类型</th>
					
					<th class="header text_center" >交易额</th>
				</tr>
			</thead>
            <tbody id="mycointrustlist">
            <?php if(is_array($sell_order)): foreach($sell_order as $key=>$v): ?><tr class="list_con2">
               <td style="text-align:center"><?php echo (date('H:i:s',$v['add_time'])); ?></td>
              <td style="text-align:center" ><?php echo (number_format($v['num']-$v['trade_num'],2)); ?></td>
              <td style="text-align:center"><?php echo (number_format($v["price"],$currency['currency_digit_num'])); ?></td>
              <td class="<?php echo ($v['type']); ?> left_sell text_center " style=""><?php echo (fomatOrdersType($v['type'])); ?></td>
              <td style="text-align:center"><?php echo (number_format($v['price']*($v['trade_num']),2)); ?></td>
              <!-- <td style="width:100px;text-align:center"><a href="javascript:void(0)"  onclick="cexiao(<?php echo ($v["orders_id"]); ?>)">撤销</a></td> -->
            </tr><?php endforeach; endif; ?>
            </tbody>
          </table>
      <?php else: ?>
	  <div style="color:#333; background:#fff; line-height:460px; font-size:14px; text-align:left; text-align: center;">
                请先登录
        </div><?php endif; ?>
		</div>
		</div>
</div>
</div>
 <style>
 	
 .bianhao1 th{border-right:1px solid #ccc;}
 .bianhao1 td{border-right:1px solid #ccc;border-bottom:1px solid #ccc;}
 .weituo1 th{border-right:1px solid #ccc;}
 .weituo1 td{border-right:1px solid #ccc;border-bottom:1px solid #ccc !important; padding-left:0px;}
 .weituo td{border-bottom:1px solid #ccc !important;}
 table th, table td{padding:0.2em 0em;}
 .right_active{ background-color:#ccc}
 .bianhao1 th{ font-size:14px;  line-height: 26px;}
  .bianhao1 td{    line-height: 27px;}
  .weituo tr td{text-align: center !important;}
  .weituo tr th{ font-size:14px;  line-height: 26px;background-color:#f6f6f6; height:auto;text-align: center !important; padding:0.2em 0em;}
  .right_header h2{    padding: 5px 15px 5px 15px;border-top:1px solid #ccc;border-left:1px solid #ccc;}
  .right_header h2:hover{    cursor: pointer;}
  .right_header{}
 </style> 
  <div class="clear"></div>
</body>
<script>
	php_url  = "<?php echo U('Kline/getKline');?>";
	sharesId = "<?php echo ($_GET['currency_id']); ?>";
</script>

<script src="/Public/line/jquery-1.8.2.js"></script>
<script src="/Public/line/jquery.mousewheel.js"></script>
<script src="/Public/line/fullKilne.js"></script>
<script>
$(".cc_div").mouseover(function(){
	$(this).addClass("right_active")
	$(this).siblings("h2").removeClass("right_active")
	$("#cc_div").show();
	$("#wt_div").hide()
	$("#cj_div").hide()
	$("#cx_div").hide()
	$("#cm_div").hide()
})
$(".wt_div").mouseover(function(){
	$(this).addClass("right_active")
	$(this).siblings("h2").removeClass("right_active")
	$("#cc_div").hide();
	$("#wt_div").show()
	$("#cj_div").hide()
	$("#cx_div").hide()
	$("#cm_div").hide()
})
$(".cj_div").mouseover(function(){
	$(this).addClass("right_active")
	$(this).siblings("h2").removeClass("right_active")
	$("#cc_div").hide();
	$("#wt_div").hide()
	$("#cj_div").show()
	$("#cx_div").hide()
	$("#cm_div").hide()
})
$(".cx_div").mouseover(function(){
	$(this).addClass("right_active")
	$(this).siblings("h2").removeClass("right_active")
	$("#cc_div").hide();
	$("#wt_div").hide()
	$("#cj_div").hide()
	$("#cx_div").show()
	$("#cm_div").hide()
})
$(".cm_div").mouseover(function(){
	$(this).addClass("right_active")
	$(this).siblings("h2").removeClass("right_active")
	$("#cc_div").hide();
	$("#wt_div").hide()
	$("#cj_div").hide()
	$("#cx_div").hide()
	$("#cm_div").show()
})
</script>
<script>
function numberfomate(num,decimal){
	var f = ''+num;
	var str = f.split('.');
	if(str.length == 1){
		str[1] = '';
	}
	//console.log(str);
	if(str[1].length >= decimal ){
		var flo = str[1].substr(0,decimal);
	}else{
		var c = decimal - str[1].length;
		//console.log(c);
		if( 1 == c )  var flo = str[1]+'0';
		if( 2 == c )  var flo = str[1]+'00';
		if( 3 == c )  var flo = str[1]+'000';
		if( 4 == c )  var flo = str[1]+'0000';
		//console.log(flo);
	}
	
	var n = str[0]+'.'+flo;
	//return parseFloat(n);
	return n;
}

//console.log(numberfomate(1.0,2));

function sell(){
	var cname=$("#cname").val();
	if($("#coinpriceout").val()==""){
		$("#trustmsgout").text("卖出价格不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if($("#numberout").val()==""){
		$("#trustmsgout").text("卖出数量不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if($("#pwdtradeout").val()==""){
		$("#trustmsgout").text("交易密码不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if(($("#coinpriceout").val())*($("#numberout").val())<1){
		$("#trustmsgout").text("交易额不能低于1元").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}

	layer.confirm('确定卖出?', {
    


		  btn: ['确定','取消'] //按钮
		  
		}, function(index){
			layer.close(index);
			$("body").append("<div id='loading' style='z-index:19891014; background-color:#000; opacity:0.3; filter:alpha(opacity=30);top: 0;left: 0;width: 100%;height: 100%;position: fixed;_position: absolute;text-align:center;'><img src='/public/home/images/loading.gif' style='margin-top:25%;' /></div>");
			$.ajax({
				type:"post",
				url:"<?php echo U('Trade/sell');?>",
				data:{sellprice:$("#coinpriceout").val(),sellnum:$("#numberout").val(),sellpwd:$("#pwdtradeout").val(),'currency_id':$("#currency_id").val()},
				async:true,
				success: function(d){
					$("#loading").remove();
					if(d.status!=1){
					$("#trustmsgout").text(d.info).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);	
					//加一个提示
					layer.msg(d.info);
					}else{
					layer.msg(d.info);
					//刷新页面
					setTimeout(window.location.reload(),2000);
					}
				}
			});
}, function(){
  layer.msg('已取消');
});
	
	<?php if(($_SESSION['is_phone']) == "1"): else: ?>$('.layui-layer-dialog').css({position:'absolute',left:'45%',top:'55%'})<?php endif; ?>
	

}
function buy(){
	if($("#coinpricein").val()==""){
		$("#trustmsgin").text("买入价格不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if($("#numberin").val()==""){
		$("#trustmsgin").text("买入数量不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if($("#pwdtradein").val()==""){
		$("#trustmsgin").text("交易密码不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if(($("#coinpricein").val())*($("#numberin").val())<1){
		$("#trustmsgin").text("交易额不能低于1元").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	layer.confirm('确定买入?', {
	  btn: ['确定','取消'] //按钮
	}, function(index){
		layer.close(index);
		$("body").append("<div id='loading' style='z-index:19891014; background-color:#000; opacity:0.3; filter:alpha(opacity=30);top: 0;left: 0;width: 100%;height: 100%;position: fixed;_position: absolute;text-align:center;'><img src='/public/home/images/loading.gif' style='margin-top:25%;' /></div>");
		$.ajax({
			type:"post",
			url:"<?php echo U('Trade/buy');?>",
			data:{buyprice:$("#coinpricein").val(),buynum:$("#numberin").val(),buypwd:$("#pwdtradein").val(),currency_id:$("#currency_id").val()},
			async:true,
			success: function(d){
				$("#loading").remove();
				if(d.status!=1){
				$("#trustmsgin").text(d.info).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);	
				//加一个提示
				layer.msg(d.info);
				}else{
				layer.msg(d.info);
				//刷新页面
				setTimeout(window.location.reload(),2000);
				}
			}
		});
	}, function(){
  layer.msg('已取消');
});
		<?php if(($_SESSION['is_phone']) == "1"): else: ?> $('.layui-layer-dialog').css({position:'absolute',left:'3%',top:'55%'});<?php endif; ?>
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
//格式化小数
//@f float 传入小数: 123; 1.1234; 1.000001;
//@size int 保留位数
//@add bool 进位: 0舍 1进
function formatfloat(f, size, add){
    f = parseFloat(f);
    if(size == 0) conf = [1,1];
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
function vNum(o, len){
	if($("#coinpricein").val()!="" || $("#coinpricein").val()!="此出价为1个币的价格" && $("#numberin").val()!=""){

    if(badFloat(o.value, len))
		  o.value=formatfloat(o.value,len,0);

      var zuidakemai = $(".maxcoin").text();
       zuidakemai=formatfloat(zuidakemai,len,0);
      if($("#numberin").val() > zuidakemai){
        $("#numberin").val(zuidakemai);
      }
		  var fee2 = <?php echo ($currency["currency_buy_fee"]); ?> / 100;
		  var ci = $("#coinpricein").val()*$("#numberin").val();
		  var ct2 = ci ;//+ ci * fee2;


		$("#feebuy").text(Math.round(ci*fee2*10000)/10000);
		$("#coinin_sumprice").val(Math.round(ct2*10000)/10000);
	}
}

function vNum2(o, len){
	var zuida = $("#coinsale_max").text();
	//alert(zuida);
	
		//$("#numberout").val()=formatfloat($("#numberout").val(), len, 0);
		zuida=formatfloat(zuida, len, 4);
		//alert(o.value);
	
	if($("#numberout").val() > zuida){
		$("#numberout").val(zuida);
		//alert(234);
	}
	//alert(o.value);
	if($("#coinpriceout").val()!="" || $("#coinpriceout").val()!="此出价为1个币的价格" && $("#numberout").val()!=""){
	if(badFloat(o.value, len))
		o.value=formatfloat(o.value, len, 0);
	var nt = $("#coinpriceout").val()*$("#numberout").val();
	var fee = <?php echo ($currency["currency_sell_fee"]); ?> /100;
	var ct = nt;// - nt * fee;
  // alert(nt);
  // alert(fee);

	
	$("#fee").text(Math.round(nt*fee*10000)/10000);
	$("#coinout_sumprice").val(Math.round(ct*10000)/10000);
	}
	
}

function total_in(o,len){
	var max = $('#to_over').html();
	//alert(o.value);
	
		max = formatfloat(max, len, 4);
		o.value = formatfloat(o.value, len, 4);
		//alert(o.value);
		if(o.value > max) o.value = max;
		if($("#coinpricein").val()!="" || $("#coinpricein").val()!="此出价为1个币的价格" && $("#numberin").val()!=""){
		if(badFloat(o.value, len))
			o.value=formatfloat(o.value, len, 4);
			var nt = o.value/$("#coinpricein").val();
			var fee = <?php echo ($currency["currency_sell_fee"]); ?> /100;
			var ct = nt;// - nt * fee;
			
			$("#fee").text(Math.round(o.value*fee*10000)/10000);
			$("#numberin").val(Math.round(ct*10000)/10000);
		}
		
	
}
function total_out(o,len){
	var max = $('#from_over').html();
	//alert(o.value);
	
		max = formatfloat(max, len, 0);
		o.value = formatfloat(o.value, len, 0);
		//alert(o.value);
		if(o.value > max) o.value = max;
		if($("#coinpriceout").val()!="" || $("#coinpriceout").val()!="此出价为1个币的价格" && $("#numberout").val()!=""){
		if(badFloat(o.value, len))
			o.value=formatfloat(o.value, len, 0);
			var nt = o.value/$("#coinpriceout").val();
			var fee = <?php echo ($currency["currency_sell_fee"]); ?> /100;
			var ct = nt;// - nt * fee;
			
			$("#fee").text(Math.round(o.value*fee*10000)/10000);
			$("#numberout").val(Math.round(ct*10000)/10000);
		}
		
	
}



//5秒自动刷新挂单记录
setInterval(function(){
	$.post('/Home/Orders/getOrders',{"type":'sell',"currency_id":$("#currency_id").val()},function(data){
		$("#coinsalelist").empty();
		var length=parseInt(data.length)
		for(var i=0;i<data.length;i++){
			$("#coinsalelist").append(
				"<tr class='list_con2' onclick='getsell(this)' onmouseover='chufa1(this)' onmouseout='likai1(this)'><td class='sell left_sell' style='width:55px;'>卖("+(length-i)+")</td><td class='sell left_sell'  style='width:70px;cursor:pointer;'>¥"+numberfomate(data[i]['price'],<?php echo ($currency["currency_digit_num"]); ?>)+"</td><td class='sell left_sell' >"+(numberfomate(((data[i]['num']-data[i]['trade_num'])),<?php if(($currency["currency_name"]) == "比特币"): ?>3<?php else: ?> 2<?php endif; ?>))+"</td><td class='sell left_sell'  style='width:80px;'>¥"+(numberfomate((data[i]['price']*(data[i]['num']-data[i]['trade_num'])),2))+"</td></tr>"
			);
		}
	});
		$.post('/Home/Orders/getOrders',{"type":'buy',"currency_id":$("#currency_id").val()},function(data){
		$("#coinbuylist").empty();
		var length=parseInt(data.length)
		for(var i=0;i<data.length;i++){
			$("#coinbuylist").append(
				"<tr class='list_con2' onclick='buynum(this)' onmouseover='chufa(this)' onmouseout='likai(this)'><td class='buy left_sell'  style='width:55px;'>买("+(parseInt(i)+1)+")</td><td  class='buy left_sell' style='width:70px;cursor:pointer;'>¥"+numberfomate(data[i]['price'],<?php echo ($currency["currency_digit_num"]); ?>)+"</td><td  class='buy left_sell' onclick='buynum(this);'>"+(numberfomate(((data[i]['num']-data[i]['trade_num'])),<?php if(($currency["currency_name"]) == "比特币"): ?>3<?php else: ?> 2<?php endif; ?>))+"</td><td  class='buy left_sell' style='width:80px;'>¥"+(numberfomate((data[i]['price']*(data[i]['num']-data[i]['trade_num'])),2))+"</td></tr>"
			);
		}
	})		
},15000);



</script>
<script>



function zuidakemai(){
	if($("#coinpricein").val()!="" && $("#coinpricein").val()!=0){
		var m = <?php echo ((isset($user_currency_money["currency_trade"]["num"]) && ($user_currency_money["currency_trade"]["num"] !== ""))?($user_currency_money["currency_trade"]["num"]):0); ?>;
		var fee=<?php echo ($currency["currency_buy_fee"]); ?>/100;
		m=m*(1-fee);
		var n = parseFloat($("#coinpricein").val());
		
		$(".maxcoin").text(Math.round(m/n*10000)/10000);
	}else{
		$(".maxcoin").text(0);
	}
}
</script>
<script>
	function cexiao(_this){
		layer.confirm('确定撤销委托？', {
	  btn: ['确定','取消'], //按钮
	  title: '撤销委托'
	}, function(){
	  $.post('<?php echo U('Entrust/cancel');?>',{status:-1,order_id:_this},function(data){
				   if(data['status'] == 1){
					   layer.msg(data['info']);
					   setTimeout(window.location.reload(),1000);
				   }else{
					   layer.msg(data['info']);
				   }
			})
	}, function(){
	  layer.msg('已取消');
	});

	}
	
	 function getsell(_this){
    var reg = /[a-zA-Z|¥|,]/g;
    var moneyStrmai= _this.children[1].innerText;
    var numberSremai= _this.children[2].innerText;	 
	var dnumberSremai = parseInt(numberSremai);
    var moneymai = moneyStrmai.replace(reg,"");
    var numbermai = dnumberSremai;
    coinbuymai = $("#coinbuy_aa").text();
    $("#coinpricein").val(moneymai);
    if(parseFloat(numbermai)>parseFloat(coinbuymai)){
      var num = moneymai*coinbuymai;
      $("#coinin_sumprice").val(num.toFixed(4));
      $("#numberin").val(coinbuymai);
      return false;
    }
    var num = moneymai*numbermai;
    $("#coinin_sumprice").val(num.toFixed(4));
    $("#numberin").val(numbermai);
    
    
  }
  
	
	function buynum(_this){
		var reg = /[a-zA-Z|¥|,]/g;
		var moneyStr= _this.children[1].innerText;
		var numberSre= _this.children[2].innerText;
		var money = moneyStr.replace(reg,"");
		var number = numberSre.replace(reg,"");
		var coinsale_max = $("#coinsale_max").text()
		$("#coinpriceout").val(money);
		if(parseFloat(number)>parseFloat(coinsale_max)){
			var num = money*coinsale_max;
			$("#coinout_sumprice").val(num.toFixed(4));
			$("#numberout").val(coinsale_max);
			return false;
		}
		var num = money*number;
		$("#coinout_sumprice").val(num.toFixed(4));
		$("#numberout").val(number);
	}

	function chufa(_this){
	 $(_this).css('background-color','#CCC');
	}
	function likai(_this){
	$(_this).css('background-color','#f6f6f6');
	}
	function chufa1(_this){
	 $(_this).css('background-color','#CCC');
	}
	function likai1(_this){
	$(_this).css('background-color','#f6f6f6');
	}

</script>
</html>