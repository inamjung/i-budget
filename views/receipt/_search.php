<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ReceiptSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="receipt-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'date_receive') ?>

    <?= $form->field($model, 'type_id') ?>

    <?= $form->field($model, 'bill_no') ?>

    <?= $form->field($model, 'company_id') ?>

    <?php // echo $form->field($model, 'invoice') ?>

    <?php // echo $form->field($model, 'amount') ?>

    <?php // echo $form->field($model, 'confirm') ?>

    <?php // echo $form->field($model, 'budget') ?>

    <?php // echo $form->field($model, 'year') ?>

    <?php // echo $form->field($model, 'number_anumad') ?>

    <?php // echo $form->field($model, 'date_instock') ?>

    <?php // echo $form->field($model, 'number_instock') ?>

    <?php // echo $form->field($model, 'send_credit') ?>

    <?php // echo $form->field($model, 'send_credit_date') ?>

    <?php // echo $form->field($model, 'credit_confirm') ?>

    <?php // echo $form->field($model, 'credit_confirm_date') ?>

    <?php // echo $form->field($model, 'user_id') ?>

    <?php // echo $form->field($model, 'createdate') ?>

    <?php // echo $form->field($model, 'updatedate') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
