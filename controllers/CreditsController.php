<?php

namespace app\controllers;

use Yii;
use app\models\Credits;
use app\models\CreditsSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ArrayDataProvider;

/**
 * CreditsController implements the CRUD actions for Credits model.
 */
class CreditsController extends Controller
{
    public $enableCsrfValidation = false;
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all Credits models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CreditsSearch(['send_boss'=>0]);
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionIndexpaydetail()
    {
        $searchModel = new CreditsSearch(['send_boss'=>1]);
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('indexpaydetail', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Credits model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Credits model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Credits();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Credits model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }
    public function actionUpdatepay($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {
            
            $model->send_boss_date = date('Y-m-d');
            $model->save();
            return $this->redirect(['index']);
        } else {
            return $this->renderAjax('updatepay', [
                'model' => $model,
            ]);
        }
    }
    public function actionUpdatepaydetail($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {
            
            $model->pay_date = date('Y-m-d');
            $model->save();
            return $this->redirect(['indexpaydetail']);
        } else {
            return $this->renderAjax('updatepaydetail', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Credits model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Credits model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Credits the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Credits::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    public function actionBudgetbyyear(){
        $year ="";
        if (Yii::$app->request->isPost) {
            $year = $_POST['year'];
           
        }
        
        $sql="SELECT p.`year`,t.type,b.money ,SUM(p.amount) as sumamount 
,(b.money) - SUM(p.amount) as remain,if(p.pay_confirm =1,'จ่ายแล้ว','ยังไม่จ่าย') as status
FROM credits p 
LEFT JOIN types t on t.id=p.type_id
JOIN budgets b ON b.`year`=p.`year` and b.type_id=p.type_id
WHERE p.`year` in  (SELECT b1.`year` from budgets b1) 
AND p.type_id in (SELECT b2.type_id from budgets b2) 
AND p.pay_confirm='1' AND p.`year` = '$year'
GROUP BY t.id
UNION
SELECT p.`year`,t.type,b.money ,SUM(p.amount) as tt 
,(b.money) - SUM(p.amount) as t1 ,if(p.pay_confirm =1,'จ่ายแล้ว','ยังไม่จ่าย') as status
FROM credits p 
LEFT JOIN types t on t.id=p.type_id
JOIN budgets b ON b.`year`=p.`year` and b.type_id=p.type_id
WHERE p.`year` in  (SELECT b1.`year` from budgets b1) 
AND p.type_id in (SELECT b2.type_id from budgets b2) 
AND p.pay_confirm='0' AND p.`year` = '$year'
GROUP BY t.id";
        
        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();

        //for($i=0;$i<sizeof($data);$i++){
        // for($i=0;$i<5;$i++){
            //$ampur[] = $data[$i]['ccode'].'-'.$data[$i]['cname'];
            //$persen[] = $data[$i]['persen']*1;
       // }

        $dataProvider = new ArrayDataProvider([
                'allModels'=>$data,
                //'sort'=>['attributes'=>['ccode','cname','total','goal','persen']],
            ]);

        return $this->render('budgetbyyear', [

            'dataProvider' => $dataProvider,
            'sql' => $sql,
            'year'=>$year          

        ]);
        
    }
    
    public function actionBudgettomon(){
        
        $date1 = "";
        $date2 = "";
        if (Yii::$app->request->isPost) {          
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
           
        }
         $sql="SELECT p.`year`,t.type,b.money ,SUM(p.amount) as sum_amount 
,ifnull((select sum(amount) from credits where  invoice=p.invoice AND pay_confirm=1),0) as au
,SUM(p.amount)-ifnull((select sum(amount) from credits where  invoice=p.invoice AND pay_confirm=1),0) as tt
            ,(b.money) - SUM(p.amount) as remain,if(p.credit_confirm =1,'แจ้งหนี้แล้ว','ยังไม่แจ้ง') as status
            FROM receive p 
            LEFT JOIN types t on t.id=p.type_id
            LEFT JOIN credits c on c.invoice=p.invoice
            JOIN budgets b ON b.`year`=p.`year` and b.type_id=p.type_id
            WHERE p.`year` in (SELECT b1.`year` from budgets b1) 
            AND p.type_id in (SELECT b2.type_id from budgets b2) 
            AND p.credit_confirm='1' OR c.pay_confirm='1' AND p.date_receive BETWEEN '$date1' AND '$date2'
            GROUP BY t.id 
            UNION
            SELECT '' `year`,t.type,'' money ,SUM(r.amount) as sum_amount 
            ,'0' au, SUM(r.amount)-0 as tt,'' remain,'ยังไม่แจ้ง' as status
            FROM receive r
            LEFT JOIN types t on t.id=r.type_id
            WHERE r.credit_confirm='0'
            AND r.date_receive BETWEEN '$date1' AND '$date2'
            GROUP BY t.id";
        
        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();

        //for($i=0;$i<sizeof($data);$i++){
        // for($i=0;$i<5;$i++){
            //$ampur[] = $data[$i]['ccode'].'-'.$data[$i]['cname'];
            //$persen[] = $data[$i]['persen']*1;
       // }

        $dataProvider = new ArrayDataProvider([
                'allModels'=>$data,
                'sort'=>['attributes'=>['type','year']],
            ]);

        return $this->render('budgettomon', [

            'dataProvider' => $dataProvider,
            'sql' => $sql,            
            'date1'=>$date1,
            'date2'=>$date2

        ]);
        
    }
    public function actionBudgetbydate($date1 = null,$date2 = null){
        if($date1==null){
            $date1 = date('Y-m-d');
            $date2 = date('Y-m-d');
            } 
        
        $sql="SELECT t.type,ifnull((b1.money),0) mon,ifnull(SUM(r.amount),0) total_buy
,ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='1' AND pay_confirm='1'),0) total_pay 
,ifnull(b1.money-ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='1' AND pay_confirm='1'),0),0) remain_pay
,ifnull(b1.money-SUM(r.amount),0) remain_credit
FROM receive r
LEFT JOIN types t on t.id=r.type_id
LEFT JOIN credits c on c.invoice=r.invoice
LEFT JOIN budgets b on b.`year`=r.`year` 
LEFT JOIN budgets b1 on b1.type_id=t.id
WHERE t.id='1' AND r.date_receive BETWEEN '$date1' and '$date2'

UNION
SELECT t.type,ifnull((b1.money),0) mon,ifnull(SUM(r.amount),0) total_buy
,ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='2' AND pay_confirm='1'),0) total_pay 
,ifnull(b1.money-ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='2' AND pay_confirm='1'),0),0) remain_pay
,ifnull(b1.money-SUM(r.amount),0) remain_credit
FROM receive r
LEFT JOIN types t on t.id=r.type_id
LEFT JOIN credits c on c.invoice=r.invoice
LEFT JOIN budgets b on b.`year`=r.`year`
LEFT JOIN budgets b1 on b1.type_id=t.id
WHERE t.id='2' AND r.date_receive BETWEEN '$date1' and '$date2'

UNION
SELECT t.type,ifnull((b1.money),0) mon,ifnull(SUM(r.amount),0) total_buy
,ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='3' AND pay_confirm='1'),0) total_pay 
,ifnull(b1.money-ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='3' AND pay_confirm='1'),0),0) remain_pay
,ifnull(b1.money-SUM(r.amount),0) remain_credit
FROM receive r
LEFT JOIN types t on t.id=r.type_id
LEFT JOIN credits c on c.invoice=r.invoice
LEFT JOIN budgets b on b.`year`=r.`year` 
LEFT JOIN budgets b1 on b1.type_id=t.id
WHERE t.id='3' AND r.date_receive BETWEEN '$date1' and '$date2'

UNION
SELECT t.type,ifnull((b1.money),0) mon,ifnull(SUM(r.amount),0) total_buy
,ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='4' AND pay_confirm='1'),0) total_pay 
,ifnull(b1.money-ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='4' AND pay_confirm='1'),0),0) remain_pay
,ifnull(b1.money-SUM(r.amount),0) remain_credit
FROM receive r
LEFT JOIN types t on t.id=r.type_id
LEFT JOIN credits c on c.invoice=r.invoice
LEFT JOIN budgets b on b.`year`=r.`year` 
LEFT JOIN budgets b1 on b1.type_id=t.id
WHERE t.id='4' AND r.date_receive BETWEEN '$date1' and '$date2'

UNION
SELECT t.type,ifnull((b1.money),0) mon,ifnull(SUM(r.amount),0) total_buy
,ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='5' AND pay_confirm='1'),0) total_pay 
,ifnull(b1.money-ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='5' AND pay_confirm='1'),0),0) remain_pay
,ifnull(b1.money-SUM(r.amount),0) remain_credit
FROM receive r
LEFT JOIN types t on t.id=r.type_id
LEFT JOIN credits c on c.invoice=r.invoice
LEFT JOIN budgets b on b.`year`=r.`year` 
LEFT JOIN budgets b1 on b1.type_id=t.id
WHERE t.id='5' AND r.date_receive BETWEEN '$date1' and '$date2'

UNION
SELECT t.type,ifnull((b1.money),0) mon,ifnull(SUM(r.amount),0) total_buy
,ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='6' AND pay_confirm='1'),0) total_pay 
,ifnull(b1.money-ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='6' AND pay_confirm='1'),0),0) remain_pay
,ifnull(b1.money-SUM(r.amount),0) remain_credit
FROM receive r
LEFT JOIN types t on t.id=r.type_id
LEFT JOIN credits c on c.invoice=r.invoice
LEFT JOIN budgets b on b.`year`=r.`year` 
LEFT JOIN budgets b1 on b1.type_id=t.id
WHERE t.id='6' AND r.date_receive BETWEEN '$date1' and '$date2'

UNION
SELECT t.type,ifnull((b1.money),0) mon,ifnull(SUM(r.amount),0) total_buy
,ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='7' AND pay_confirm='1'),0) total_pay 
,ifnull(b1.money-ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='7' AND pay_confirm='1'),0),0) remain_pay
,ifnull(b1.money-SUM(r.amount),0) remain_credit
FROM receive r
LEFT JOIN types t on t.id=r.type_id
LEFT JOIN credits c on c.invoice=r.invoice
LEFT JOIN budgets b on b.`year`=r.`year`
LEFT JOIN budgets b1 on b1.type_id=t.id
WHERE t.id='7' AND r.date_receive BETWEEN '$date1' and '$date2'

UNION
SELECT t.type,ifnull((b1.money),0) mon,ifnull(SUM(r.amount),0) total_buy
,ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='8' AND pay_confirm='1'),0) total_pay 
,ifnull(b1.money-ifnull((SELECT sum(amount) FROM credits WHERE date_receive BETWEEN '$date1' and '$date2' 
AND type_id='8' AND pay_confirm='1'),0),0) remain_pay
,ifnull(b1.money-SUM(r.amount),0) remain_credit
FROM receive r
LEFT JOIN types t on t.id=r.type_id
LEFT JOIN credits c on c.invoice=r.invoice
LEFT JOIN budgets b on b.`year`=r.`year`
LEFT JOIN budgets b1 on b1.type_id=t.id
WHERE t.id='8' AND r.date_receive BETWEEN '$date1' and '$date2'";
        
        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();

       for($i=0;$i<sizeof($data);$i++){
            $type[] = $data[$i]['type'];
            $mon[] = $data[$i]['mon']*1;
            $total_buy[] = $data[$i]['total_buy']*1;
            $total_pay[] = $data[$i]['total_pay']*1;
            $remain_pay[] = $data[$i]['remain_pay']*1;
            $remain_credit[] = $data[$i]['remain_credit']*1;
        }

        $dataProvider = new ArrayDataProvider([
                'allModels'=>$data,
                //'sort'=>['attributes'=>['ccode','cname','total','goal','persen']],
            ]);

        return $this->render('budgetbydate', [

            'dataProvider' => $dataProvider,
            'sql' => $sql,
            'date1'=>$date1,
            'date2'=>$date2,
            'type'=>$type,'mon'=>$mon,'total_buy'=>$total_buy,'total_pay'=>$total_pay,
            'remain_pay'=>$remain_pay,'remain_credit'=>$remain_credit

        ]);
        
    }    
}
