<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Years */

$this->title = 'Update Years: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Years', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="years-update">

   <div class="panel panel-success">
        <div class="panel-heading"><i class="glyphicon glyphicon-pencil"></i> ปีงบประมาณ</div>
        <div class="panel-body">
       
    <?= $this->render('_form', [
        'model' => $model,        
    ]) ?>

</div>
</div>
</div>
