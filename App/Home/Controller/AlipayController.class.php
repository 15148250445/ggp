<?php
namespace Home\Controller;
use Common\Controller\CommonController;
use Home\Controller\PaymentController;
class AlipayController extends CommonController {
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	public function index(){
		/*if($this->config['DISANFANG'] != 1){
			$this->error("第三方充值未开启！");
		}*/
		$this->User_status();
		$where="";
		if(!empty($_SESSION['USER_KEY_ID'])){
			$where['member_id']=$_SESSION['USER_KEY_ID'];
		}
		$list =  M('Payment')->Field('payment_id,member_id,price,status,pay_no,add_time,end_time')->where($where)->order("add_time desc")->select();
		$this->assign('list',$list);
		$this->display();
	}
	
	public function pay(){
		$this->display();
	}
	
}