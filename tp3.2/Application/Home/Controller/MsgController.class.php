<?php
namespace Home\Controller;
use Think\Controller;
class MsgController extends Controller {
   public function index(){
    $messages=M('msg')->select();
    $this->assign('messages',$messages);
    $this->display();
   }
   public function add(){
   		if(IS_POST){
   			$postData=I('post.');
   			$postData['created_at']=$postData['created_at']=time();
   			$rs=M('msg')->add($postData);
   			if($rs){
   				$this->success('添加成功',U('msg/index'));
   			}else{
   				$this->error('添加失败');
   			}
   		}
   }
}