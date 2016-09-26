<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Credits */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="credits-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'type_id')->textInput() ?>

    <?= $form->field($model, 'date_receive')->textInput() ?>

    <?= $form->field($model, 'company_id')->textInput() ?>

    <?= $form->field($model, 'number_anumad')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'bill_no')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'invoice')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'amount')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'budget')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date_instock')->textInput() ?>

    <?= $form->field($model, 'number_instock')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'send_credit')->textInput() ?>

    <?= $form->field($model, 'send_boss')->textInput() ?>

    <?= $form->field($model, 'number_pay')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'year')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <?= $form->field($model, 'send_credit_date')->textInput() ?>

    <?= $form->field($model, 'credit_confirm_date')->textInput() ?>

    <?= $form->field($model, 'pay_confirm')->textInput() ?>

    <?= $form->field($model, 'pay_date')->textInput() ?>

    <?= $form->field($model, 'updatedate')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
