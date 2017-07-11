<?php
namespace Home\Controller;
use Common\Controller\CommonController;
use Common\Logic\TradeLogic;
class TestController extends CommonController {

	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	
	public function test(){
		$T=new TradeLogic(3);
// 		$data['trade_no']=rand(0000, 9999);
// 		$data['member_id']=1;
// 		$data['currency_id']=26;
// 		$data['currency_trade_id']=1;
// 		$data['price']=10;
// 		$data['num']=20;
// 		$data['money']=200;
// 		$data['fee']=0.2;
// 		$data['type']='buy';
// 		$data['add_time']=time();
// 		$data['status']=0;
// 		$p=$T->addTradeOne($data);
// 		dump($p);
// 		$x=$T->getTradeALLByUid();
		$xx=$T->getTradeAllView();
	
	
		$this->assign("list",$xx['list']);
		$this->assign("page",$xx['page']);
		$this->display();
	}
	
// 	public function 
	
// 	public function xxx(){
// 		$userid = 'test';
// 		$key   = 'testkey';
// 		$sign  = md5($userid.$key);
// 		$data='data';
// 		$data_string=json_encode(array('userid'=>$userid,'sign'=>$sign,'data'=>$data));
// 		$url = "http://xxx.WWW.com/quick/test";
// 		$ch = curl_init($url);
// 		curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
// 		curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);//$data JSON类型字符串
// 		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
// 		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json', 'Content-Length: ' . strlen($data_string)));
// 		$result = curl_exec($ch);
// 		echo "<pre>";
// // 		print_r($result);
// 		dump($result);
// 		echo "</pre>";
// 	}

}