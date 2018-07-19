<?php
namespace frontend\controllers;

use Yii;
use common\models\T1;
use yii\web\Controller;
class TestController extends Controller{
    public $layout = false;
    public $enableCsrfValidation = false;
    public function actionIndex()
    {
        return $this->render('index', [
            'username' => '苍苍',
            'order' => [
                'a' => '啪啪啪',
                'b' => '哒哒哒'
            ],
        ]);
    }
    public function actionAdd(){
        $t1=new T1();
        $t1->uname='abc';
        $t1->pwd='123';
        $rs=$t1->save();
        echo $t1->id;
        var_dump($rs);
    }
}
    