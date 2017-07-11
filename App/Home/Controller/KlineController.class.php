<?php
namespace Home\Controller; 
use Common\Controller\CommonController;
use Common\Logic\TradeLogic;
use Home\Model\OrdersModel;
class KlineController extends CommonController
{

    public function _initialize()
    {
        parent::_initialize();
    }

    public function index()
    {
        if(empty($_GET['currency_id'])){
            $this->display('Public:b_stop');
            return;
        }
        $_GET['currency']=$_GET['currency_id'];      
        $currency_id=I('get.currency');
        $currency=M('Currency')->where("currency_id='$currency_id' and is_line=1")->find();
        $currency['aa'] = ltrim($currency['detail_url']," https:// ");
        
        
        if(empty($currency)){
            $this->display('Public:b_stop');
            return;
        }
        $currency['currency_digit_num']=$currency['currency_digit_num']?$currency['currency_digit_num']:0;//设置限制位数
        //显示委托记录
        $buy_record=$this->getOrdersByType($currency['currency_id'],'buy', 3, 'desc');
        $sell_record=$this->getOrdersByType($currency['currency_id'],'sell', 3, 'asc');
        $this->assign('buy_record',$buy_record);
        $this->assign('sell_record',$sell_record);
        //格式化手续费
        $currency['currency_sell_fee']=floatval($currency['currency_sell_fee']);
        $currency['currency_buy_fee']=floatval($currency['currency_buy_fee']);
        //币种信息
//         $currency_message=$this->getCurrencyMessageById($currency['currency_id']);
// 		//调用买一卖一方法去写
// 		$min_order =$this->getOneOrdersByPrice($currency['currency_id'], 'sell');
// 		$max_order =$this->getOneOrdersByPrice($currency['currency_id'], 'buy');
// 		$currency_message['buy_one_price'] = $max_order;
// 		$currency_message['sell_one_price'] = $min_order;
//         $currency_trade=$this->getCurrencynameById($currency['trade_currency_id']);
// 		//总成交额  从文件里读取
// 		if(S('Trade_allnum_'.$currency['currency_id'])){
// 			$currency_message['trade_total'] = S('Trade_allnum_'.$currency['currency_id']);
// 		}else{
// 			$trade_total = M('Trade_'.$currency['currency_id'])->where("currency_id={$currency['currency_id']}")->sum('money');
// 			$currency_message['trade_total'] = number_format($trade_total/2,3);
// 			S('Trade_allnum_'.$currency_id,$currency_message);
// 		}
		
		
// 		//涨跌停查询
// 		$price_time = strtotime(date('Y-m-d',time()));
// 		$count_price['add_time'] = array('lt',$price_time);
// 		$count_price['currency_id'] = $currency['currency_id'];
// 		$price_last = M('Trade_'.$currency['currency_id'])->Field('price')->where($count_price)->order('add_time desc')->find();
// 		$currencys=$this->getCurrencyByCurrencyId($currency['currency_id']);
		
		
// 		$down = ( ( 1 - $currencys['price_down']/100) * $price_last['price']  );
// 		$up = ( ( 1 + $currencys['price_up']/100) * $price_last['price']  );
		
// 		$this->assign('up',$up);
// 		$this->assign('down',$down);
//         $this->assign('currency_message',$currency_message);
//         $this->assign('currency_trade',$currency_trade);
        $TLogin=new TradeLogic($currency['currency_id']);
        $tlfield="type,price,num,add_time";
        //个人账户资产
        if (!empty($_SESSION['USER_KEY_ID'])){
        	//个人资金优化 ，getuserallmoney
			$user_info_money = $this->getuserallmoney($currency['currency_id']);
// 			dump($user_info_money);die();
			$user_currency_money['currency']['num'] = $user_info_money['num'];
			$user_currency_money['currency']['forzen_num'] = $user_info_money['forzen_num'];
			$user_currency_money['currency']['all_num'] = $user_currency_money['currency']['num']+$user_currency_money['currency']['forzen_num'];
		    $user_info_trade_money = $this->getuserallmoney($currency['trade_currency_id']);
            $user_currency_money['currency_trade']['num']=$user_info_trade_money['num'];
            $user_currency_money['currency_trade']['forzen_num']=$user_info_trade_money['forzen_num'];
            $user_currency_money['currency_trade']['all_num'] = $user_currency_money['currency_trade']['num']+$user_currency_money['currency_trade']['forzen_num'];
            if($currency['trade_currency_id']==0){
                $user_currency_money['currency_trade']['num']=$this->member['rmb'];
                $user_currency_money['currency_trade']['forzen_num']=$this->member['forzen_rmb'];
            }
            //--------------new--↓-------//
            foreach ($this->currency as $vo){
            	$all_num = $this->getuserallmoney($vo['currency_id']);
            	$price = $this->getCurrencyMessageById ( $vo ['currency_id'] );
            	$all_num['price']  = $price['new_price']?$price['new_price']:0;
            	$my_all_list[] = $all_num;
            }
            $shizhi = 0;
            foreach ($my_all_list  as $vo){
            	$shizhi+=formatOrderNum($vo['num']*$vo['price']);
            }
            $user_currency_money['currency_trade']['cysz'] = $shizhi;
            //--------------new--↑-------//
//             dump($user_currency_money);
            
            $this->assign('user_currency_money',$user_currency_money);
            //个人挂单记录
            $this->assign('user_orders',$this->getOrdersByUser(5,$currency['currency_id']));
            //最大可买
            if (!empty($sell_record)){
            		  $buy_num=sprintf('%.4f',$user_currency_money['currency_trade']['num']/$sell_record[0]['price']);
            }else {
                $buy_num=0;
            }
			
            $this->assign('buy_num',$buy_num);
			//个人成交记录
			$mytwhere['member_id']=$_SESSION['USER_KEY_ID'];
            $chengjiao=  $TLogin->getTradeALLByUid($tlfield,10,$mytwhere);

			$this->assign('chengjiao',$chengjiao);
			
            //最大可卖
            $sell_num=sprintf('%.4f',$user_currency_money['currency_trade']['num']);
//             dump($user_currency_money);
//             die();
            $this->assign('sell_num',$sell_num);
        }
        
        $this->assign('session',$_SESSION['USER_KEY_ID']);
        //成交记录
      
      //这块是有问题的，最新成交记录里，还要带上部分成交的
   	   $trade=  $TLogin->getTradeALLByUid($tlfield,20);

   	   
        $this->assign('trade',$trade);
		
		
		
// 		dump($currency);
// 		die();

   
        
        $this->assign("currency",$currency);
        
        //我的持仓
        
//         $where['member_id']=$_SESSION['USER_KEY_ID'];
//         $where['num']=array("GT",0);
		$where="member_id = '{$_SESSION['USER_KEY_ID']}' and (num>0 or forzen_num >0)";
        $currency_user = M ( 'Currency_user' )
							->alias('C_U')
							->field ('C_U.*,C_U.num+C_U.forzen_num AS count,C.currency_name,C.currency_mark' )
							->join ("__CURRENCY__ AS C on C.currency_id= C_U.currency_id" )
							->where ( $where )->order ( 'sort' )->select ();
        foreach ($currency_user as $k=>$v){
        	$x = M ( 'Trade_' . $v ['currency_id'] )->order ( "trade_id desc" )->find ();
			$list = $this->getCurrencyMessageById ( $v ['currency_id'] );
			// 市值
// 			$currency_user [$k] ['shizhi'] = ($v ['num'] + $v ['forzen_num']) * $x ['price'];
			// 持有均价
			$t = M ( "Trade_" . $v ['currency_id'] )
						->where ( "member_id = '{$_SESSION['USER_KEY_ID']}'" )
						->field ( "avg(price) as price" )
						->select();
			$currency_user [$k] ['chiyoujunjia'] = formatOrderNum($t[0]['price']); // *$v['num']
			$currency_user [$k] ['num'] = $v['count'];
			$currency_user [$k] ['shizhi'] = formatOrderNum(($list ['new_price'] ? $list ['new_price'] : 0)*$currency_user [$k]['num']);
			$currency_user [$k] ['yk']  = formatOrderNum($list['new_price'] - $currency_user [$k] ['chiyoujunjia']);
			$currency_user [$k] ['ykbl']  =  formatOrderNum(($currency_user [$k] ['yk']/$currency_user [$k] ['chiyoujunjia'])*100);
        } 
//         dump($currency_user);
        $this->assign("currency_user",$currency_user);
        
        
        $currency_or = M('Currency')->where('is_line=1')->order('sort')->select();//时间降序排列，越接近当前时间越高
        $this->assign("currency_or",$currency_or);
        
        //撤单
        $ORDERS=new OrdersModel();
        $sell_order=$ORDERS->getAllByMemberIdAndTypeAndStatus($currency['currency_id'],$_SESSION['USER_KEY_ID'], 'sell', -1);//撤单卖单
        $buy_order=$ORDERS->getAllByMemberIdAndTypeAndStatus($currency['currency_id'],$_SESSION['USER_KEY_ID'], 'buy', -1);//撤单卖单
//         dump($buy_order);
        $this->assign("sell_order",$sell_order);
        $this->assign("buy_order",$buy_order);
        
        $this->display();
    }

    public function getKline()
    { 
    	$type = I('type');
//     	 $this->test($type);
   
    	 
    	$filename = __APP__."KlineData/KLineData_kline_".I('type')."_".I('sharesId').".js";
    	$file = file_get_contents($filename);
    	$file_ex   = file_exists($filename);
    	if($file_ex == false || $file == ''){
    		echo false;
    	}else{
    		echo $file;
    	}

    	 
    }
    
    private function test($type){
    	// 	'zh-cn': {'line':'(分时)','0':'(1分钟)','1':'(5分钟)','2':'(15分钟)','9':'(30分钟)','10':'(1小时)','3':'(日线)','4':'(周线)'
    	// 			,'7':'(3分钟)', '11':'(2小时)','12':'(4小时)','13':'(6小时)','14':'(12小时)','15':'(3天)'},
    		
    	switch ($type){
    		case 0:
    			$type = '1min';
    			break;
    		case 1:
    			$type = '5min';
    			break;
    		case 2:
    			$type = '15min';
    			break;
    		case 9:
    			$type = '30min';
    			break;
    		case 10:
    			$type = '1hour';
    			break;
    		case 3:
    			$type = '1day';
    			break;
    		case 4:
    			$type = '1week';
    			break;
    		case 7:
    			$type = '3min';
    			break;
    		case 11:
    			$type = '2hour';
    			break;
    		case 12:
    			$type = '4hour';
    			break;
    		case 13:
    			$type = '6hour';
    			break;
    		case 14:
    			$type = '12hour';
    			break;
    		default:
    			$type = 0;
    			break ;
    	}
    	$url = "https://www.okcoin.cn/api/v1/kline.do?symbol=btc_cny&type=".$type."&size=100";
    	$ch = curl_init();
    	curl_setopt($ch, CURLOPT_URL,$url);
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
    	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    	$result = curl_exec($ch);
    	curl_close ($ch);
    	echo $result;
    	
    }
}