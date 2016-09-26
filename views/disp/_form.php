<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use app\models\Types;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;
use app\models\Departments;

/* @var $this yii\web\View */
/* @var $model app\models\Disp */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="disp-form">

    <?php $form = ActiveForm::begin(); ?>
    <div class="row">
        <div class="col-sm-offset-4 col-sm-4">
            <?=
            $form->field($model, 'createdate')->widget(yii\jui\DatePicker::className(), [
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
    </div>
    <div class="row">
        <div class="col-sm-offset-4 col-sm-4">
            <?=
            $form->field($model, 'type_id')->widget(kartik\widgets\Select2::className(), [
                'data' => \yii\helpers\ArrayHelper::map(app\models\Types::find()->all(), 'id', 'type'),
                'options' => ['placeholder' => '<--ระบุหมวด-->'],
                'pluginOptions' => ['allowClear' => true]
                    ]
            )
            ?>   
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-4 col-sm-4">
            <?= $form->field($model, 'amount')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-4 col-sm-4">
                <?= $form->field($model, 'remark')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-offset-7 col-sm-2">
            <div class="form-group">
    <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>
    </div>
<?php ActiveForm::end(); ?>

</div>
