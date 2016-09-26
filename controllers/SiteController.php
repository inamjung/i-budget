<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use yii\data\ArrayDataProvider;
use app\models\Years;


class SiteController extends Controller {

    public $enableCsrfValidation = false;
    public function behaviors() {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actions() {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex() {
        if (\Yii::$app->user->isGuest) {
            return $this->redirect(['user/security/login']);
        }        
        return $this->render('index');
    }

    public function actionLogin() {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
                    'model' => $model,
        ]);
    }

    public function actionLogout() {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionContact() {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
                    'model' => $model,
        ]);
    }

    public function actionAbout() {
        return $this->render('about');
    }

    public function actionShowgrap() {
        
        $sql ="SELECT p.`year`,t.type,b.money ,SUM(p.amount) as sumamount 
                ,(b.money) - SUM(p.amount) as remain
                ,ROUND((SUM(p.amount) * 100)/b.money,2) as persen
                FROM credits p 
                LEFT JOIN types t on t.id=p.type_id
                JOIN budgets b ON b.`year`=p.`year` and b.type_id=p.type_id
                WHERE p.`year` in  (SELECT b1.`year` from budgets b1) 
                AND p.type_id in (SELECT b2.type_id from budgets b2) 
                AND p.`year` = '2558'
                GROUP BY t.id
               ";   
        
        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();

        for($i=0;$i<sizeof($data);$i++){
        // for($i=0;$i<5;$i++){
            $type[] = $data[$i]['type'];
            $persen[] = $data[$i]['persen']*1;
        }

        $dataProvider = new ArrayDataProvider([
                'allModels'=>$data,
                //'sort'=>['attributes'=>['ccode','cname','total','goal','persen']],
            ]);

        return $this->render('showgrap', [

            'dataProvider' => $dataProvider,
            'sql' => $sql,
            //'year'=>$year
            'type'=>$type,
            'persen'=>$persen

        ]);
    }

}
