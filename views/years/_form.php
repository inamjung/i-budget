<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Years */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="years-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'year')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date_start')->widget(yii\jui\DatePicker::className(),[
         'language'=>'th',
        'dateFormat'=>'yyyy-MM-dd',
        'clientOptions'=>[
            'changeMonth'=>true,
            'changeYear'=>TRUE
        ],
        'options'=>['class'=>'form-control']
    ]) ?>
   

    <?= $form->field($model, 'date_end')->widget(yii\jui\DatePicker::className(),[
         'language'=>'th',
        'dateFormat'=>'yyyy-MM-dd',
        'clientOptions'=>[
            'changeMonth'=>true,
            'changeYear'=>TRUE
        ],
        'options'=>['class'=>'form-control']
    ]) ?>
    

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
