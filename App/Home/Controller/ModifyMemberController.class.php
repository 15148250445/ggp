<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-3-8
 * Time: 下午4:29
 */

namespace Home\Controller;

use Common\Controller\CommonController;

class ModifyMemberController extends CommonController {
    /**
     * 添加个人信息
     */
    public function modify(){
        //判断是否是已经完成reg基本注册

       $login=$this->checkLogin();
     
       if(!$login){
      	 	$this->redirect('User/index');
       		return;
       }
       if(session('STATUS')!=0){
            $this->redirect('User/index');
            return;
        }

        if(IS_POST){
			
            $M_member = D('Member');
            $id = session('USER_KEY_ID');
            $_POST['member_id']=$id;
            $_POST['status'] = 1;//0=有效但未填写个人信息1=有效并且填写完个人信息2=禁用
            if (!$data=$M_member->create()){ // 创建数据对象
                // 如果创建失败 表示验证没有通过 输出错误提示信息
                $data['status'] = 0;
                $data['info'] = $M_member->getError();
                $this->ajaxReturn($data);
//                $this->error($M_member->getError());
                return;
            }else {
                $where['member_id'] = $id;
                $r = $M_member->where($where)->save();
                if($r){
                    session('procedure',2);//SESSION 跟踪第二步
                    session('STATUS',1);
					//产生推荐奖励
					$info = M('Member')->where("`member_id`={$id}")->find();
					$this->reward_reg($id,$info['pid']);  //本控制器内方法
					
                    $data['status'] = 1;
                    $data['info'] = "提交成功";
                    $this->ajaxReturn($data);
//                    $this->redirect('Reg/regSuccess');
                }else{
                    $data['status'] = 0;
                    $data['info'] = '服务器繁忙,请稍后重试';
                    $this->ajaxReturn($data);
//                    $this->error('服务器繁忙,请稍后重试');
//                    return;
                }
            }
        }else{
			$login=$this->checkLogin();
		   if(!$login){
				$this->redirect('User/index');
				return;
		   }
		   if(session('STATUS')!=0){
				$this->redirect('User/index');
				return;
			}
            $this->display();
        }
    }
	
	/*********************************为上级ID进行奖励   GS 2016.12.27*******************/
	/*参数  $id是下级id  对下级进行奖励  $pid 为上级ID  若是存在则进行奖励 不存在则都不进行奖励*/
	function reward_reg($id,$pid){
		//给上级进行奖励
		
		if(!empty($pid)){  //只有存在上级的时候才会进行奖励
			$list_reward = M('Reward_conf')->Field('id,currency_id,money,day,type,status,sum')->select();
			
			
			
			foreach($list_reward as $k=>$v){
				//统计总量总和
				if($v['type'] == 1){
					$rer = M('Reward_reg')->Field('sum(money)')->where("currency_id={$v['currency_id']} AND down_id <> 0")->select();
				}else{
					$rer = M('Reward_reg')->Field('sum(money)')->where("currency_id={$v['currency_id']} AND down_id = 0")->select();
				}
				
				//若是总量超过总量则进行下一次循环处理
				if( ( $rer[0]['sum(money)'] + $v['money'] ) > $v['sum']){
					continue;
				}					
				
				
				if($v['type'] == 1){ //若是type等于1则是上级奖励
					if(!empty($v['money']) && !empty($v['day'])){
						$arr['member_id'] = $pid;
						$arr['currency_id'] = $v['currency_id'];
						$arr['money'] = $v['money'];
						$arr['surplus_day'] = $v['day'];
						$arr['sum_day'] = $v['day'];
						$arr['down_id'] = $id;
						$arr['add_time'] = time();
						$arr['status'] = 0;
						M('Reward_reg')->add($arr);
					}  
				}else{   //若是不等于1则是下级奖励
					if(!empty($v['money']) && !empty($v['day'])){
						$arr['member_id'] = $id;
						$arr['currency_id'] = $v['currency_id'];
						$arr['money'] = $v['money'];
						$arr['down_id'] = 0;
						$arr['add_time'] = time();
						$arr['surplus_day'] = $v['day'];
						$arr['sum_day'] = $v['day'];
						$arr['status'] = 0;
						M('Reward_reg')->add($arr);
					}
				}
				
			}
		}
	}
					
					
					
	/****************************************************************************************/
	
	
	
	
    /**
     * ajax验证昵称是否存在
     */
    public function ajaxCheckNick($nick){
        $nick = urldecode($nick);
        $data =array();
        $M_member = M('Member');
        $where['nick']  = $nick;
        $r = $M_member->field('member_id')->where($where)->find();
        if($r){
            $data['msg'] = "昵称已被占用";
            $data['status'] = 0;
        }else{
            $data['msg'] = "";
            $data['status'] = 1;
        }
        $this->ajaxReturn($data);
    }
    /**
     * ajax手机验证
     */
    function ajaxCheckPhone($phone) {
        $phone = urldecode($phone);
        $data = array();
        if(!checkMobile($phone)){
            $data['msg'] = "手机号不正确！";
            $data['status'] = 0;
        }else{
            $M_member = M('Member');
            $where['phone']  = $phone;
            $r = $M_member->field('member_id')->where($where)->find();
            if($r){
                $data['msg'] = "此手机已经绑定过！请更换手机号";
                $data['status'] = 0;
            }else{
                $data['msg'] = "";
                $data['status'] = 1;
            }
        }
        $this->ajaxReturn($data);
    }

    /**
     * ajax验证手机验证码
     */
    public function ajaxSandPhone(){
        $phone = urldecode($_POST['phone']);
        if(empty($phone)){
            $data['status']=0;
            $data['info'] = "参数错误";
            $this->ajaxReturn($data);
        }
        if(!preg_match("/^1[34578]{1}\d{9}$/",$phone)){  
            $data['status']=-1;
            $data['info'] = "手机号码不正确";
            $this->ajaxReturn($data);
        }  
        $user_phone=M("Member")->field('phone')->where("phone='$phone'")->find();
        if (!empty($user_phone)){
            $data['status']=-2;
            $data['info'] = "手机号码已经存在";
            $this->ajaxReturn($data);
        }
		$ip = get_ip();
		$v = S('ip_phone'.$ip);
		$sss = S('limit_phone_ip');
		if($v > 10){
			$sss[$ip] = 1;
			S('limit_phone_ip',$sss);
		}
		if($sss[$ip] == 1){
			$data['status'] = -8;
			$data['info'] = '此IP已经被禁止发送短信';
			$this->ajaxReturn($data);
		}
        $r = sandPhone($phone,$this->config['CODE_NAME'],$this->config['CODE_USER_NAME'],$this->config['CODE_USER_PASS']);
        if($r!="短信发送成功"){
			
			$time = S('ip_phone_time'.$ip);
			if( $time == null || time() - $time > 60 ){
				S('ip_phone_time'.$ip,time());
				S('ip_phone'.$ip,1);
			}else{
				++$v;
				S('ip_phone'.$ip,$v);
				S('ip_phone_time'.$ip,time());
			}
			
            $data['status']=0;
            $data['info'] = $r;
            $this->ajaxReturn($data);
        }else{
            $data['status']=1;
            $data['info'] = $r;
            $this->ajaxReturn($data);
        }
    }
}