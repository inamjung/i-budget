<?php

namespace app\controllers;

use Yii;
use app\models\Receive;
use app\models\ReceiveSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use dektrium\user\models\User;
use app\models\Receivedetail;
use yii\data\ActiveDataProvider;
use yii\base\Model;
use app\models\Credits;
use yii\data\ArrayDataProvider;

/**
 * ReceiveController implements the CRUD actions for Receive model.
 */
class ReceiveController extends Controller {

    public $enableCsrfValidation = false;

    public function behaviors() {
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
     * Lists all Receive models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new ReceiveSearch();
        $searchModel->type_id = Yii::$app->user->identity->type_id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    public function actionIndexpas() {
        $searchModel = new ReceiveSearch(['confirm' => 0]);
        $searchModel->type_id = Yii::$app->user->identity->type_id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('indexpas', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    public function actionIndexpastomon1() {
        $searchModel = new ReceiveSearch(['confirm' => 1]);
        $searchModel->send_credit = 0;
        $searchModel->type_id = Yii::$app->user->identity->type_id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('indexpastomon1', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    public function actionIndexpastomon() {
        $searchModel = new ReceiveSearch(['confirm' => 1]);
        $searchModel->send_credit = 1;
        $searchModel->type_id = Yii::$app->user->identity->type_id;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('indexpastomon', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    public function actionIndexcredit() {
        $searchModel = new ReceiveSearch(['confirm' => 1]);
        $searchModel->send_credit = 1;
        $searchModel->credit_confirm = 0;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('indexcredit', [
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Receive model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->render('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Receive model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate() {
        $model = new Receive();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                        'model' => $model,
            ]);
        }
    }

    public function actionCreatecommit() {
        $model = new Receive();

        $modelDetails = [];

        $formDetails = Yii::$app->request->post('Receivedetail', []);
        foreach ($formDetails as $i => $formDetail) {
            $modelDetail = new Receivedetail(['scenario' => Receivedetail::SCENARIO_BATCH_UPDATE]);
            $modelDetail->setAttributes($formDetail);
            $modelDetails[] = $modelDetail;
        }

        //handling if the addRow button has been pressed
        if (Yii::$app->request->post('addRow') == 'true') {
            $model->load(Yii::$app->request->post());
            $modelDetails[] = new Receivedetail(['scenario' => Receivedetail::SCENARIO_BATCH_UPDATE]);
            return $this->render('createcommit', [
                        'model' => $model,
                        'modelDetails' => $modelDetails
            ]);
        }

        if ($model->load(Yii::$app->request->post())) {

            if (Model::validateMultiple($modelDetails) && $model->validate()) {

                $model->createdate = date('Y-m-d');
                $model->invoice = $model->company_id . '-' . $model->bill_no;
                $model->user_id = Yii::$app->user->identity->profile->user_id;
                $model->save();

                foreach ($modelDetails as $modelDetail) {
                    $modelDetail->receive_id = $model->id;
                    $modelDetail->save();
                }
                return $this->redirect(['view', 'id' => $model->id]);
            }
        }

        return $this->render('createcommit', [
                    'model' => $model,
                    'modelDetails' => $modelDetails
        ]);
    }

    public function actionUpdatecommit() {
        $model = $this->findModel($id);

        $modelDetails = $model->receivedetails;

        $formDetails = Yii::$app->request->post('Receivedetail', []);
        foreach ($formDetails as $i => $formDetail) {
            //loading the models if they are not new
            if (isset($formDetail['id']) && isset($formDetail['updateType']) && $formDetail['updateType'] != Receivedetail::UPDATE_TYPE_CREATE) {
                //making sure that it is actually a child of the main model
                $modelDetail = Receivedetail::findOne(['id' => $formDetail['id'], 'receive_id' => $model->id]);
                $modelDetail->setScenario(Receivedetail::SCENARIO_BATCH_UPDATE);
                $modelDetail->setAttributes($formDetail);
                $modelDetails[$i] = $modelDetail;
                //validate here if the modelDetail loaded is valid, and if it can be updated or deleted
            } else {
                $modelDetail = new Receivedetail(['scenario' => Receivedetail::SCENARIO_BATCH_UPDATE]);
                $modelDetail->setAttributes($formDetail);
                $modelDetails[] = $modelDetail;
            }
        }

        //handling if the addRow button has been pressed
        if (Yii::$app->request->post('addRow') == 'true') {
            $modelDetails[] = new Receivedetail(['scenario' => Receivedetail::SCENARIO_BATCH_UPDATE]);
            return $this->render('updatecommit', [
                        'model' => $model,
                        'modelDetails' => $modelDetails
            ]);
        }

        if ($model->load(Yii::$app->request->post())) {
            if (Model::validateMultiple($modelDetails) && $model->validate()) {

                $model->save();
                foreach ($modelDetails as $modelDetail) {
                    //details that has been flagged for deletion will be deleted
                    if ($modelDetail->updateType == Receiveldetail::UPDATE_TYPE_DELETE) {
                        $modelDetail->delete();
                    } else {
                        //new or updated records go here
                        $modelDetail->receive_id = $model->id;
                        $modelDetail->save();
                    }
                }
                return $this->redirect(['index']);
            }
        }
        return $this->render('updatecommit', [
                    'model' => $model,
                    'modelDetails' => $modelDetails
        ]);
    }

    /**
     * Updates an existing Receive model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
//    public function actionUpdate($id)
//    {
//        $model = $this->findModel($id);
//
//        if ($model->load(Yii::$app->request->post()) && $model->save()) {
//            return $this->redirect(['view', 'id' => $model->id]);
//        } else {
//            return $this->render('update', [
//                'model' => $model,
//            ]);
//        }
//    }

    public function actionUpdate() {
        $model = $this->findModel($id);

        $modelDetails = $model->receivedetails;

        $formDetails = Yii::$app->request->post('Receivedetail', []);
        foreach ($formDetails as $i => $formDetail) {
            //loading the models if they are not new
            if (isset($formDetail['id']) && isset($formDetail['updateType']) && $formDetail['updateType'] != Receivedetail::UPDATE_TYPE_CREATE) {
                //making sure that it is actually a child of the main model
                $modelDetail = Receivedetail::findOne(['id' => $formDetail['id'], 'receive_id' => $model->id]);
                $modelDetail->setScenario(Receivedetail::SCENARIO_BATCH_UPDATE);
                $modelDetail->setAttributes($formDetail);
                $modelDetails[$i] = $modelDetail;
                //validate here if the modelDetail loaded is valid, and if it can be updated or deleted
            } else {
                $modelDetail = new Receivedetail(['scenario' => Receivedetail::SCENARIO_BATCH_UPDATE]);
                $modelDetail->setAttributes($formDetail);
                $modelDetails[] = $modelDetail;
            }
        }

        //handling if the addRow button has been pressed
        if (Yii::$app->request->post('addRow') == 'true') {
            $modelDetails[] = new Receivedetail(['scenario' => Receivedetail::SCENARIO_BATCH_UPDATE]);
            return $this->render('updatecommit', [
                        'model' => $model,
                        'modelDetails' => $modelDetails
            ]);
        }

        if ($model->load(Yii::$app->request->post())) {
            if (Model::validateMultiple($modelDetails) && $model->validate()) {

                $model->save();
                foreach ($modelDetails as $modelDetail) {
                    //details that has been flagged for deletion will be deleted
                    if ($modelDetail->updateType == Receiveldetail::UPDATE_TYPE_DELETE) {
                        $modelDetail->delete();
                    } else {
                        //new or updated records go here
                        $modelDetail->receive_id = $model->id;
                        $modelDetail->save();
                    }
                }
                return $this->redirect(['index']);
            }
        }
        return $this->render('update', [
                    'model' => $model,
                    'modelDetails' => $modelDetails
        ]);
    }

    public function actionUpdatepas($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['indexpas']);
        } else {
            return $this->renderAjax('updatepas', [
                        'model' => $model,
            ]);
        }
    }

    public function actionUpdatepastostock($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {

            $model->send_credit_date = date('Y-m-d');
            $model->save();
            return $this->redirect(['indexpastostock']);
        } else {
            return $this->renderAjax('indexpastostock', [
                        'model' => $model,
            ]);
        }
    }

    public function actionUpdatepastomon($id) {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {

            $model->send_credit_date = date('Y-m-d');
            $model->save();
            return $this->redirect(['indexpastomon1']);
        } else {
            return $this->renderAjax('updatepastomon', [
                        'model' => $model,
            ]);
        }
    }

    public function actionUpdatecredit($id) {
        $model = $this->findModel($id);
        $credit = new Credits();

        if ($model->load(Yii::$app->request->post())) {
            $bill = Credits::find()->where(['invoice' => $model->invoice])->one();
            $model->credit_confirm_date = date('Y-m-d');

            $credit->user_id = Yii::$app->user->getId();
            $credit->type_id = $model->type_id;
            $credit->receive_id = $model->id;
            $credit->date_receive = $model->date_receive;
            $credit->send_credit_date = $model->send_credit_date;
            $credit->credit_confirm_date = $model->credit_confirm_date;
            $credit->company_id = $model->company_id;
            $credit->bill_no = $model->bill_no;
            $credit->invoice = $model->invoice;
            $credit->amount = $model->amount;

            $credit->budget = $model->budget;
            $credit->year = $model->year;
            $credit->number_anumad = $model->number_anumad;
            $credit->date_instock = $model->date_instock;
            $credit->number_instock = $model->number_instock;
            $credit->send_credit = $model->send_credit;

            if (empty($bill)) {
                $credit->save();
                $model->save();
                Yii::$app->getSession()->setFlash('success', 'รับรายงานเจ้าหนี้สำเร็จ');
            } else {
                Yii::$app->getSession()->setFlash('danger', 'เลขที่บิล : ' . $model->bill_no . ' : บริษัท ' . $model->company->name . ' : ' .
                        ' บิลนี้เคยส่งรายงานเจ้าหนี้แล้ว โปรดตรวจสอบ');
            }

            return $this->redirect(['indexcredit']);
        } else {
            return $this->renderAjax('updatecredit', [
                        'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Receive model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Receive model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Receive the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = Receive::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionProductrec() {
        $type = "";
        $date1 = "";
        $date2 = "";
        if (Yii::$app->request->isPost) {
            $type = $_POST['type'];
            $date1 = $_POST['date1'];
            $date2 = $_POST['date2'];
        }

        $sql = "SELECT t.type,r.date_receive,c.`name` company,r.bill_no,rd.item_id
            ,CONCAT(i.`name`,' ',i.strenge,' ',i.format) product,rd.qty 
            FROM receivedetail rd

            LEFT JOIN receive r on r.id=rd.receive_id
            LEFT JOIN items i on i.id=rd.item_id
            LEFT JOIN companys c on c.id=r.company_id
            LEFT JOIN types t on t.id=r.type_id
            WHERE r.date_receive BETWEEN '$date1' AND '$date2'
            AND r.type_id='$type'";

        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();

        $dataProvider = new ArrayDataProvider([
            'allModels' => $data,
            'pagination' => FALSE,
            'sort' => ['attributes' => ['company', 'product', 'type']],
        ]);

        return $this->render('productrec', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'type' => $type,
                    'date1' => $date1,
                    'date2' => $date2
        ]);
    }

    public function actionWherebill($id = null, $bill = null) {


        $sql = "SELECT r.bill_no,r.invoice,cn.id ,cn.`name` as cname,r.amount,t.type
            ,if(r.date_instock<>'','รับเข้าคลังแล้ว','ยังไม่รับเข้าคลัง') as instock
            ,r.send_credit,r.credit_confirm,r.credit_confirm_date
            ,c.pay_confirm,c.pay_date,c.date_check,c.number_check
            ,r.date_receive,r.date_instock ,DATEDIFF(r.date_instock,r.date_receive) as datein
            ,r.`year` as ybudget
            from  receive r
            LEFT JOIN credits c on r.invoice=c.invoice
            LEFT JOIN companys cn on cn.id=r.company_id
            LEFT JOIN types t on t.id=r.type_id
            WHERE cn.id ='$id' OR r.bill_no ='$bill' order by r.date_receive desc ";

        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();

        $dataProvider = new ArrayDataProvider([
            'allModels' => $data,
            'pagination' => FALSE,
                //'sort'=>['attributes'=>['company','product','type']],
        ]);

        return $this->render('wherebill', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'id' => $id,
                    'bill' => $bill,
        ]);
    }

    public function actionMoneydr() {


        $sql = "
select year(date) year,month(date) month
,concat(month(date),'-' ,year(date)+543) my
,sum(if(type='Getopd',amount,0)) Getopd 
,sum(if(type='Getipd',amount,0)) Getipd 
,sum(if(type='Pay',amount,0)) Pay
,sum(if(type='Getopd',amount,0)) + sum(if(type='Getipd',amount,0)) Allget
from (
select 'Pay' as type,date_instock date,amount
from receive r
where r.date_instock between '2015-10-01' and '2016-09-30' and r.type_id='1'
union all
select 'Getopd' as type,vstdate,inc_drug
from hos.vn_stat 
where vstdate between '2015-10-01' and '2016-09-30'
union all
select 'Getipd' as type,dchdate,inc12
from hos.an_stat 
where dchdate between '2015-10-01' and '2016-09-30'
) a
group by year,month ";

        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();

        for ($i = 0; $i < sizeof($data); $i++) {
            $my[] = $data[$i]['my'];
            $Getopd[] = $data[$i]['Getopd'] * 1;
            $Getipd[] = $data[$i]['Getipd'] * 1;
            $Pay[] = $data[$i]['Pay'] * 1;
            $Allget[] = $data[$i]['Allget'] * 1;
            $month[] = $data[$i]['month'];
            $year[] = $data[$i]['year'];
        }

        $dataProvider = new ArrayDataProvider([
            'allModels' => $data,
            'pagination' => FALSE,
                //'sort'=>['attributes'=>['company','product','type']],
        ]);

        return $this->render('moneydr', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'my' => $my,
                    'Getopd' => $Getopd, 'Getipd' => $Getipd, 'Allget' => $Allget, 'Pay' => $Pay, 'month' => $month, 'year' => $year
        ]);
    }

    public function actionStep1($date1 = null,$date2 = null) {
        if ($date1 == null) {
            $date1 = "";
            $date2 = "";
           
        }

        $sql = " SELECT t.type, if(SUM(DATEDIFF(r.date_instock,r.date_receive)+1) / COUNT(DATEDIFF(r.date_instock,r.date_receive)+1)>3,'ตกเกณฑ์','ผ่านเกณฑ์') as d
            ,round(SUM(DATEDIFF(r.date_instock,r.date_receive)+1) / COUNT(DATEDIFF(r.date_instock,r.date_receive)+1),0) as dd
                FROM receive r
                JOIN types t on t.id=r.type_id
                JOIN companys c on c.id=r.company_id
                WHERE t.id='1' and r.date_instock <>'' and r.date_receive between '$date1' and '$date2'
                union 
                SELECT t.type, if(SUM(DATEDIFF(r.date_instock,r.date_receive)+1) / COUNT(DATEDIFF(r.date_instock,r.date_receive)+1)>3,'ตกเกณฑ์','ผ่านเกณฑ์') as d
                ,round(SUM(DATEDIFF(r.date_instock,r.date_receive)+1) / COUNT(DATEDIFF(r.date_instock,r.date_receive)+1),0) as dd
                FROM receive r
                JOIN types t on t.id=r.type_id
                JOIN companys c on c.id=r.company_id
                WHERE t.id='2' and r.date_instock <>'' and r.date_receive between '$date1' and '$date2'
                union 
                SELECT t.type, if(SUM(DATEDIFF(r.date_instock,r.date_receive)+1) / COUNT(DATEDIFF(r.date_instock,r.date_receive)+1)>3,'ตกเกณฑ์','ผ่านเกณฑ์') as d
                ,round(SUM(DATEDIFF(r.date_instock,r.date_receive)+1) / COUNT(DATEDIFF(r.date_instock,r.date_receive)+1),0) as dd
                FROM receive r
                JOIN types t on t.id=r.type_id
                JOIN companys c on c.id=r.company_id
                WHERE t.id='7' and r.date_instock <>'' and r.date_receive between '$date1' and '$date2'
                union 
                SELECT t.type, if(SUM(DATEDIFF(r.date_instock,r.date_receive)+1) / COUNT(DATEDIFF(r.date_instock,r.date_receive)+1)>3,'ตกเกณฑ์','ผ่านเกณฑ์') as d
                ,round(SUM(DATEDIFF(r.date_instock,r.date_receive)+1) / COUNT(DATEDIFF(r.date_instock,r.date_receive)+1),0) as dd
                FROM receive r
                JOIN types t on t.id=r.type_id
                JOIN companys c on c.id=r.company_id
                WHERE t.id='5' and r.date_instock <>'' and r.date_receive between '$date1' and '$date2'";

        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();

//        for ($i = 0; $i < sizeof($data); $i++) {
//            $my[] = $data[$i]['my'];
//            $Getopd[] = $data[$i]['Getopd'] * 1;
//            $Getipd[] = $data[$i]['Getipd'] * 1;
//            $Pay[] = $data[$i]['Pay'] * 1;
//            $Allget[] = $data[$i]['Allget'] * 1;
//            $month[] = $data[$i]['month'];
//            $year[] = $data[$i]['year'];
//        }

        $dataProvider = new ArrayDataProvider([
            'allModels' => $data,
            'pagination' => FALSE,
                //'sort'=>['attributes'=>['company','product','type']],
        ]);

        return $this->render('step1', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'date1' => $date1,
                    'date2'=>$date2
                    
        ]);
    }

}
