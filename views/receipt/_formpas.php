<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use app\models\Receipt;
use app\models\ReceiptDetail;
use yii\helpers\ArrayHelper;
use kartik\widgets\Select2;
use app\models\Items;
use yii\widgets\DetailView;
use kartik\checkbox\CheckboxX;

/* @var $this yii\web\View */
/* @var $model app\models\Receipt */
/* @var $form yii\widgets\ActiveForm */
?>
<?php $this->registerJs("
    $('.delete-button').click(function() {
        var detail = $(this).closest('.receipt-detail');
        var updateType = detail.find('.update-type');
        if (updateType.val() === " . json_encode(ReceiptDetail::UPDATE_TYPE_UPDATE) . ") {
            //marking the row for deletion
            updateType.val(" . json_encode(ReceiptDetail::UPDATE_TYPE_DELETE) . ");
            detail.hide();
        } else {
            //if the row is a new row, delete the row
            detail.remove();
        }

    });
");
?>
<div class="receipt-form">

    <?php
    $form = ActiveForm::begin([
                'enableClientValidation' => false
    ]);
    ?>

            <?=
            DetailView::widget([
                'model' => $model,
                'attributes' => [

                    [
                        'attribute' => 'type_id',
                        'value' => $model->type->type,
                    ],
                    'date_receive',
                    [
                        'attribute' => 'company_id',
                        'value' => $model->company->name,
                    ],
                    'bill_no',
                    'amount',
                ],
            ])
            ?>
   
    <h2>รายการในบิล</h2>
    <table class="receipt-details table">
        <tr>
            <th>ลำดับ</th>
            <th>รายการ</th>
            <th>จำนวนรับ</th>
        </tr>
        <?php $i = 1; ?>
        <?php //foreach($model->receiptDetails as $receiptDetail) :?>
        <?php foreach (app\models\ReceiptDetail::find()->where(['receive_id' => $model->id])->all() as $row): ?>
            <tr>
                <td><?= $i++; ?></td>
                <td><?= $row->item->name; ?></td>
                <td><?= $row->qty; ?></td>
            </tr>
        <?php endforeach; ?>
    </table>     
    <hr>

    <div class="row"> 
        <div class="col-xs-3 col-sm-3 col-md-3">
            <?php
            echo $form->field($model, 'confirm')->widget(CheckboxX::classname(), [
                'pluginOptions' => ['threeState' => false],
            ]);
            ?>            
        </div>
    </div>
    <div class="row">                
        <div class="col-xs-3 col-sm-3 col-md-3">
            <div class="form-group">
<?= Html::submitButton($model->isNewRecord ? '<i class="glyphicon glyphicon-ok"></i> บันทึก' : '<i class="glyphicon glyphicon-ok"></i> บันทึก', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-success btn btn-block']) ?>
            </div>
        </div>
    </div>
<?php ActiveForm::end(); ?>

</div>

