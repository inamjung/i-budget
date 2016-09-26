<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use app\models\Receivedetail;
use yii\helpers\ArrayHelper;
use app\models\Items;
use kartik\widgets\Select2;
use app\models\Receive;

/* @var $this yii\web\View */
/* @var $model app\models\Receive */
/* @var $form yii\widgets\ActiveForm */
?>
<?php $this->registerJs("
    $('.delete-button').click(function() {
        var detail = $(this).closest('.receivedetail');
        var updateType = detail.find('.update-type');
        if (updateType.val() === " . json_encode(Receivedetail::UPDATE_TYPE_UPDATE) . ") {
            //marking the row for deletion
            updateType.val(" . json_encode(Receivedetail::UPDATE_TYPE_DELETE) . ");
            detail.hide();
        } else {
            //if the row is a new row, delete the row
            detail.remove();
        }

    });
");
?>
<div class="receive-form">

    <?php $form = ActiveForm::begin([
        'enableClientValidation' => false
    ]); ?>
    
    <div class="row">        
        <div class="col-xs-12 col-sm-12 col-md-12">
            <?= $form->field($model, 'type_id')->inline()->radioList(ArrayHelper::map(\app\models\Types::find()
                                    ->all(), 'id', 'type'));
            ?>
        </div>       
    </div>

    <hr>
    <div class="row">
        <div class="col-xs-2 col-sm-2 col-md-2">
            <?=
            $form->field($model, 'date_receive')->widget(\yii\jui\DatePicker::className(), [
                'language' => 'th',
                'dateFormat' => 'yyyy-MM-dd',
                'clientOptions' => [
                    'changeMonth' => true,
                    'changeYear' => TRUE
                ],
                'options' => ['class' => 'form-control']
            ])
            ?>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-">
            <?=
            $form->field($model, 'company_id')->widget(kartik\select2\Select2::className(), [
                'data' => yii\helpers\ArrayHelper::map(app\models\Companys::find()->all(), 'id', 'name'),
                'options' => ['placeholder' => '<--ระบุบริษัท-->', 'id' => 'toolType'],
                'pluginOptions' => ['allowClear' => true]
            ])
            ?>
        </div>
        <div class="col-xs-3 col-sm-3 col-md-3">
<?= $form->field($model, 'bill_no')->textInput(['maxlength' => true]) ?>
        </div>     

        <div class="col-xs-3 col-sm-3 col-md-3">
            <?= $form->field($model, 'amount')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <hr/>
<!--    <div class="page-header-line">
    <h3><label class="label label-success"> บันทึกรายการในใบส่งของ</label></h3>
</div>-->

    <?php foreach ($modelDetails as $i => $modelDetail) : ?>
        <div class="row receivedetail receivedetail-<?= $i ?>">
            <div class="col-md-6">
                <?= Html::activeHiddenInput($modelDetail, "[$i]id") ?>
                <?= Html::activeHiddenInput($modelDetail, "[$i]updateType", ['class' => 'update-type']) ?>
                
                <?= $form->field($modelDetail, "[$i]item_id")->widget(\kartik\select2\Select2::className(),[
                    'data'=> ArrayHelper::map(Items::find()->all(), 'code', 'name'),
                    'options'=>['placeholder'=>'<--รายการ-->'],
                    'pluginOptions'=>['allowClear'=>true]
                ]) ?>
                </div>
                <div class="col-md-2">
                <?= $form->field($modelDetail, "[$i]qty") ?>
                </div>
           
            <div class="col-md-2">
                <?= Html::button('x', ['class' => 'delete-button btn btn-danger', 'data-target' => "receivedetail-$i"]) ?>
            </div>
        </div>
    <?php endforeach; ?>

    <div class="form-group">
       
        <?= Html::submitButton('<i class="glyphicon glyphicon-plus"></i> บันทึกรายการ', ['name' => 'addRow', 'value' => 'true', 'class' => 'btn btn-info']) ?>
    </div>
    <div class="form-group">
            <div class="col-sm-offset-2 col-sm-9">
        <?= Html::submitButton($model->isNewRecord ? 'บันทึก' : 'Update', 
            ['class' => $model->isNewRecord ? 'btn btn-success btn-block' : 'btn btn-primary btn-block']) ?>
    </div>
</div>

    <?php ActiveForm::end(); ?>

</div>
