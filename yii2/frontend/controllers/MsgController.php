<?php
namespace frontend\controllers;
use Yii;
use yii\web\Controller;
use common\models\Msg;
class MsgController extends Controller{
    public $layout = false;
    public $enableCsrfValidation = false;
    public function actionIndex(){
        $msgs=Msg::find()->all();
       return $this->render('index',['msgs'=>$msgs]);
    }
    public function actionAdd(){
        if(Yii::$app->request->isPost){
            $uname=Yii::$app->request->post('uname');
            $content=Yii::$app->request->post('content');
            $created_at=$updated_at=time();
        }
        //入库
        $msg=new Msg();
        $msg->uname=$uname;
        $msg->content=$content;
        $msg->created_at=$created_at;
        $msg->updated_at=$created_at;
        if($msg->save()){
           Yii::$app->getSession()->setFlash('success','保存成功');
        }else{
           Yii::$app->getSession()->setFlash('error','保存失败');
        }
//        return $this->redirect(['/msg']);
    }
}
    