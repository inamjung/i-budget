<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;
use app\models\Items;
use kartik\checkbox\CheckboxX;

/* @var $this yii\web\View */
/* @var $model app\models\Receive */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="receive-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">        
        <div class="col-xs-12 col-sm-12 col-md-12">
          
            <?=
            $form->field($model, 'type_id')->widget(kartik\select2\Select2::className(), [
                'data' => yii\helpers\ArrayHelper::map(app\models\Types::find()->all(), 'id', 'type'),
                'options' => ['placeholder' => '<--ระบุบริษัท-->','disabled'=>true],
                'pluginOptions' => ['allowClear' => true]
            ])
            ?>
        </div>       
    </div>

  
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
                'options' => ['class' => 'form-control','disabled'=>true]
            ])
            ?>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-">
            <?=
            $form->field($model, 'company_id')->widget(kartik\select2\Select2::className(), [
                'data' => yii\helpers\ArrayHelper::map(app\models\Companys::find()->all(), 'id', 'name'),
                'options' => ['placeholder' => '<--ระบุบริษัท-->','disabled'=>true],
                'pluginOptions' => ['allowClear' => true]
            ])
            ?>
        </div>
        <div class="col-xs-3 col-sm-3 col-md-3">
<?= $form->field($model, 'bill_no')->textInput(['maxlength' => true,'readonly'=>true]) ?>
        </div>     

        <div class="col-xs-3 col-sm-3 col-md-3">
            <?= $form->field($model, 'amount')->textInput(['maxlength' => true,'readonly'=>true]) ?>
        </div>
    </div>
  <hr>
    <div class="row"> 
        <div class="col-xs-3 col-sm-3 col-md-3">
<?php
echo $form->field($model, 'confirm')->widget(CheckboxX::classname(), [
    'pluginOptions' => ['threeState' => false],
]);?>            
        </div>
    </div>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'บันทึก' : 'บันทึก', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
