<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use app\models\ReceiptDetail;
use app\models\Items;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Receipt */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Receipts', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="receipt-view">

  <div class="panel panel-info">
        <div class="panel-heading"> รายละเอียดใบส่งของ</div>
        <div class="panel-body">

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [            
            
            [
                 'attribute'=>'type_id',
                 'value'=>$model->type->type,
            ],
            'date_receive',
            [
                 'attribute'=>'company_id',
                 'value'=>$model->company->name,
            ],
            
            'bill_no',
            'amount',
            
            /*            
            'confirm',
            'budget',
            'year',
            'number_anumad',
            'id',
            'invoice',
            'date_instock',
            'number_instock',
            'send_credit',
            'send_credit_date',
            'credit_confirm',
            'credit_confirm_date',
            'user_id',
            'createdate',
            'updatedate',
             
             */
        ],
    ]) ?>
     <h2>รายการในบิล</h2>
     <table class="receipt-details table">
        <tr>
            <th>ลำดับ</th>
            <th>รายการ</th>
            <th>จำนวนรับ</th>
        </tr>
        <?php $i = 1;?>
        <?php //foreach($model->receiptDetails as $receiptDetail) :?>
        <?php foreach (app\models\ReceiptDetail::find()->where(['receive_id' => $model->id])->all() as $row): ?>
            <tr>
                <td><?= $i++;?></td>
                <td><?= $row->item->name; ?></td>
                <td><?= $row->qty; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>

</div>
  </div>
    </div>
