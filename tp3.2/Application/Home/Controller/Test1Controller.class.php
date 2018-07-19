<?php
namespace Home\Controller;
use Think\Controller;
class Test1Controller extends Controller {
    public function index(){
        echo 666;
    }
    public function index2(){
    	$data1 = '张三'; 
		$data2 = [ 'name' => '李四', 'age'  => 18, 'sex'  => '女'];
		$data3 = [
    		[ 'name' => '李四1', 'age'  => 181, 'sex'  => '男1'],
    		[ 'name' => '李四2', 'age'  => 182, 'sex'  => '男2'],
    		[ 'name' => '李四3', 'age'  => 183, 'sex'  => '男3']
		];
		$this->assign('data1',$data1);
		$this->assign('data2',$data2);
		$this->assign('data3',$data3);
    	$this->display();
    }
    public function add(){
    	$data['uname'] = 'd';
		$data['pwd'] = 'ddddd';
		$t2=M('t2');
		$rs=$t2->add($data);
		print_r($rs);
    }
    public function select(){
    	$rs=M('t2')->where('id=3')->select();
    	print_r($rs);
    }
    public function update(){
    	$data['uname']='ggg';
    	$rs=M('t2')->where('id=5')->save($data);
    	print_r($rs);
    }
    public function delete(){
    	$rs=M('t2')->where('id=5')->delete();
    	print_r($rs);
    }
}