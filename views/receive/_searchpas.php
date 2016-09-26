<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\widgets\DatePicker;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\ReceiveSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="receive-search">

    <div class="panel panel-default">
        <div class="panel-heading"><i class="glyphicon glyphicon-search"></i> ค้นหาข้อมูล</div>
        <div class="panel-body">
            <?php
            $form = ActiveForm::begin([
                        'action' => ['indexpastomon'],
                        'method' => 'get',
            ]);
            ?>

    

     <div class="row">
         <div class="col-xs-3 col-sm-3 col-md-3">
                    <?=
                    $form->field($model, 'date1')->label('ช่วงวันที่รับเข้า')->widget(
                            DatePicker::className(), [
                        'language' => 'th',
                        'options' => ['placeholder' => 'ระหว่างวันที่ ...'],
                        'pluginOptions' => [
                            'format' => 'yyyy-mm-dd',
                            'todayHighlight' => true
                        ]
                    ]);
                    ?>
                </div>
                 <div class="col-xs-3 col-sm-3 col-md-3">
                    <?=
                    $form->field($model, 'date2')->label('ถึงวันที่')->widget(
                            DatePicker::className(), [
                        'language' => 'th',
                        'options' => ['placeholder' => 'ถึงวันที่ ...'],
                        'pluginOptions' => [
                            'format' => 'yyyy-mm-dd',
                            'todayHighlight' => true
                        ]
                    ]);
                    ?>
                </div>
               <div class="col-xs-2 col-sm-2 col-md-2">
                    <?= $form->field($model, 'type_id')->widget(\kartik\widgets\Select2::className(),[
                        'data'=> ArrayHelper::map(app\models\Types::find()->all(), 'id', 'type'),
                        'options'=>['placeholder'=>'<-เลือกหมวด->'],
                        'pluginOptions'=>['allowClear'=>true]
                    ]);?>
                </div>
                <div class="col-xs-3 col-sm-3 col-md-3">
                    <?= $form->field($model, 'company_id')->widget(\kartik\widgets\Select2::className(),[
                        'data'=> ArrayHelper::map(app\models\Companys::find()->all(), 'id', 'name'),
                        'options'=>['placeholder'=>'<-เลือกบริษัท->'],
                        'pluginOptions'=>['allowClear'=>true]
                    ]);?>
                </div>
<!--                <div class="col-xs-2 col-sm-2 col-md-2">
                    <?= $form->field($model, 'bill_no') ?>
                </div>-->
                <div class="col-xs-3 col-sm-3 col-md-3">
                    
                </div>
            </div>    

   <div class="form-group">
                <?= Html::submitButton('ค้นหา', ['class' => 'btn btn-primary']) ?>
                <?= Html::resetButton('ล้าง', ['class' => 'btn btn-default']) ?>
            </div>

            <?php ActiveForm::end(); ?>

        </div>
    </div>
</div>