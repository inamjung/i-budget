<?php

namespace app\controllers;

use Yii;
use app\models\Receipt;
use app\models\ReceiptSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\ReceiptDetail;
use yii\data\ActiveDataProvider;
use yii\base\Model;
use app\models\Receive;

/**
 * ReceiptController implements the CRUD actions for Receipt model.
 */
class ReceiptController extends Controller {

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
     * Lists all Receipt models.
     * @return mixed
     */
    public function actionIndex() {
        $dataProvider = new ActiveDataProvider([
            'query' => Receipt::find(),
        ]);

        return $this->render('index', [
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Receipt model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id) {
        return $this->renderAjax('view', [
                    'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Receipt model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    
    public function actionCreate() {
        $model = new Receipt();
        $modelDetails = [];

        $formDetails = Yii::$app->request->post('ReceiptDetail', []);
        foreach ($formDetails as $i => $formDetail) {
            $modelDetail = new ReceiptDetail(['scenario' => ReceiptDetail::SCENARIO_BATCH_UPDATE]);
            $modelDetail->setAttributes($formDetail);
            $modelDetails[] = $modelDetail;
        }

        //handling if the addRow button has been pressed
        if (Yii::$app->request->post('addRow') == 'true') {
            $model->load(Yii::$app->request->post());
            $modelDetails[] = new ReceiptDetail(['scenario' => ReceiptDetail::SCENARIO_BATCH_UPDATE]);
            return $this->render('create', [
                        'model' => $model,
                        'modelDetails' => $modelDetails
            ]);
        }

        if ($model->load(Yii::$app->request->post())) {            
            if (Model::validateMultiple($modelDetails) && $model->validate()) {
                $model->invoice = $model->company_id . '-' . $model->bill_no;


                if ($model-> $model->invoice = $model->company_id . '-' . $model->bill_no()) {

                Yii::$app->getSession()->setFlash('success', 'Check your email for further instructions.');
                  $model->save();
                return $this->redirect(Yii::$app->urlManager->createAbsoluteUrl('create'));
            } else {
                Yii::$app->getSession()->setFlash('error', 'Sorry, we are unable to reset password for email provided.');
            }

              
                foreach ($modelDetails as $modelDetail) {
                    $modelDetail->receive_id = $model->id;
                    $modelDetail->save();
                }
                Yii::$app->session->setFlash('danger','บิลนี้ซ้ำ โปรดตรวจสอบ');
                return $this->redirect(['create']);
            }
        }

        return $this->render('create', [
                    'model' => $model,
                    'modelDetails' => $modelDetails
        ]);
    }

    /*
     public function actionCreate() {
        $model = new Receipt();
        $modelDetails = [];

        $formDetails = Yii::$app->request->post('ReceiptDetail', []);
        foreach ($formDetails as $i => $formDetail) {
            $modelDetail = new ReceiptDetail(['scenario' => ReceiptDetail::SCENARIO_BATCH_UPDATE]);
            $modelDetail->setAttributes($formDetail);
            $modelDetails[] = $modelDetail;
        }

        //handling if the addRow button has been pressed
        if (Yii::$app->request->post('addRow') == 'true') {
            $model->load(Yii::$app->request->post());
            $modelDetails[] = new ReceiptDetail(['scenario' => ReceiptDetail::SCENARIO_BATCH_UPDATE]);
            return $this->render('create', [
                        'model' => $model,
                        'modelDetails' => $modelDetails
            ]);
        }

        if ($model->load(Yii::$app->request->post())) {            
            if (Model::validateMultiple($modelDetails) && $model->validate()) {
                $model->invoice = $model->company_id . '-' . $model->bill_no;
                $model->save();
                foreach ($modelDetails as $modelDetail) {
                    $modelDetail->receive_id = $model->id;
                    $modelDetail->save();
                }
                return $this->redirect(['create']);
            }
        }

        return $this->render('create', [
                    'model' => $model,
                    'modelDetails' => $modelDetails
        ]);
    }
    */
    /**
     * Updates an existing Receipt model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id) {
        $model = $this->findModel($id);
        $modelDetails = $model->receiptDetails;

        $formDetails = Yii::$app->request->post('ReceiptDetail', []);
        foreach ($formDetails as $i => $formDetail) {
            //loading the models if they are not new
            if (isset($formDetail['id']) && isset($formDetail['updateType']) && $formDetail['updateType'] != ReceiptDetail::UPDATE_TYPE_CREATE) {
                //making sure that it is actually a child of the main model
                $modelDetail = ReceiptDetail::findOne(['id' => $formDetail['id'], 'receive_id' => $model->id]);
                $modelDetail->setScenario(ReceiptDetail::SCENARIO_BATCH_UPDATE);
                $modelDetail->setAttributes($formDetail);
                $modelDetails[$i] = $modelDetail;
                //validate here if the modelDetail loaded is valid, and if it can be updated or deleted
            } else {
                $modelDetail = new ReceiptDetail(['scenario' => ReceiptDetail::SCENARIO_BATCH_UPDATE]);
                $modelDetail->setAttributes($formDetail);
                $modelDetails[] = $modelDetail;
            }
        }

        //handling if the addRow button has been pressed
        if (Yii::$app->request->post('addRow') == 'true') {
            $modelDetails[] = new ReceiptDetail(['scenario' => ReceiptDetail::SCENARIO_BATCH_UPDATE]);
            return $this->render('update', [
                        'model' => $model,
                        'modelDetails' => $modelDetails
            ]);
        }

        if ($model->load(Yii::$app->request->post())) {
            if (Model::validateMultiple($modelDetails) && $model->validate()) {
                $model->save();
                foreach ($modelDetails as $modelDetail) {
                    //details that has been flagged for deletion will be deleted
                    if ($modelDetail->updateType == ReceiptDetail::UPDATE_TYPE_DELETE) {
                        $modelDetail->delete();
                    } else {
                        //new or updated records go here
                        $modelDetail->receive_id = $model->id;
                        $modelDetail->save();
                    }
                }
                return $this->redirect(['receive/index']);
            }
        }


        return $this->renderAjax('update', [
                    'model' => $model,
                    'modelDetails' => $modelDetails
        ]);
    }

    public function actionUpdatepas($id) {
        $model = $this->findModel($id);
        $modelDetails = $model->receiptDetails;

        $formDetails = Yii::$app->request->post('ReceiptDetail', []);
        foreach ($formDetails as $i => $formDetail) {
            //loading the models if they are not new
            if (isset($formDetail['id']) && isset($formDetail['updateType']) && $formDetail['updateType'] != ReceiptDetail::UPDATE_TYPE_CREATE) {
                //making sure that it is actually a child of the main model
                $modelDetail = ReceiptDetail::findOne(['id' => $formDetail['id'], 'receive_id' => $model->id]);
                $modelDetail->setScenario(ReceiptDetail::SCENARIO_BATCH_UPDATE);
                $modelDetail->setAttributes($formDetail);
                $modelDetails[$i] = $modelDetail;
                //validate here if the modelDetail loaded is valid, and if it can be updated or deleted
            } else {
                $modelDetail = new ReceiptDetail(['scenario' => ReceiptDetail::SCENARIO_BATCH_UPDATE]);
                $modelDetail->setAttributes($formDetail);
                $modelDetails[] = $modelDetail;
            }
        }

        //handling if the addRow button has been pressed
        if (Yii::$app->request->post('addRow') == 'true') {
            $modelDetails[] = new ReceiptDetail(['scenario' => ReceiptDetail::SCENARIO_BATCH_UPDATE]);
            return $this->render('updatepas', [
                        'model' => $model,
                        'modelDetails' => $modelDetails
            ]);
        }

        if ($model->load(Yii::$app->request->post())) {
            if (Model::validateMultiple($modelDetails) && $model->validate()) {
                $model->save();
                foreach ($modelDetails as $modelDetail) {
                    //details that has been flagged for deletion will be deleted
                    if ($modelDetail->updateType == ReceiptDetail::UPDATE_TYPE_DELETE) {
                        $modelDetail->delete();
                    } else {
                        //new or updated records go here
                        $modelDetail->receive_id = $model->id;
                        $modelDetail->save();
                    }
                }
                return $this->redirect(['receive/indexpas']);
            }
        }


        return $this->renderAjax('updatepas', [
                    'model' => $model,
                    'modelDetails' => $modelDetails
        ]);
    }

    /**
     * Deletes an existing Receipt model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id) {
        $model = $this->findModel($id);

        foreach ($model->receiptDetails as $modelDetail) {
            $modelDetail->delete();
        }

        $model->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Receipt model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Receipt the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = Receipt::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
