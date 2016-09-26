<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\Budgets */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="budgets-form">

    <?php $form = ActiveForm::begin(); ?>
     <?= $form->field($model, 'type_id')->label('หมวด')->widget(\kartik\widgets\Select2::className(),[
         'data'=> yii\helpers\ArrayHelper::map(app\models\Types::find()->all(), 'id', 'type'),
         'options'=>['placeholder'=>'<--เลือกหมวด-->'],
         'pluginOptions'=>['allowClear'=>true]
     ]) ?>

    <?= $form->field($model, 'year')->label('ปีงบประมาณ')->widget(Select2::className(),[
        'data'=> ArrayHelper::map(app\models\Years::find()->all(), 'year', 'year'),
        'options'=>['placeholder'=>'<--เลือกปีงบประมาณ-->'],
        'pluginOptions'=>[
            'allowClear'=>true
        ]
    ]) ?>

    <?= $form->field($model, 'money')->label('วงเงิน')->textInput(['maxlength' => true]) ?>

   

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'บันทึก' : 'บันทึก', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
