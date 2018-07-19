<?php
class MsgController extends BaseController {
    public function indexAction(){
        $msgs=(new MsgModel())->get('select*from msg');
        $this->getView()->assign('msgs',$msgs);
        return $this->getView()->render('msg/index.phtml');
    }
    public function msgAction(){
        if($this->getRequest()->isPost()){
            $uname=$this->getRequest()->getPost('uname');
            $content=$this->getRequest()->getPost('content');
            $created_at=$this->getRequest()->getPost('created_at');
            $rs = (new MsgModel)->add("insert into msg (uname,content,created_at) 
			values 
			('{$uname}', '{$content}', ".time().")"
		);
                        if($rs){
                            $this->success('/msg/index', '添加成功');
                        }else{
                            $this->error('/msg/index', '添加失败');
                        }
        }
    }
}
