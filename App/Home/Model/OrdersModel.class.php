<?php
namespace Home\Model;
use Think\Model;
class OrdersModel extends Model{
    protected $_auto = array (          
        array('status','0'),  
        array('add_time','time',1,'function'),
        array('trade_time','time',2,'function'),
    );
    
    public function getAllByMemberIdAndTypeAndStatus($currency_id,$member_id,$type,$status){
    	$where['member']=$member_id;
    	$where['currency_id']=$currency_id;
    	$where['type']=$type;
    	$where['status']=-1;
    	$re=$this->where($where)->order("orders_id desc")->limit(10)->select();
    	return $re;
    }
}

?>