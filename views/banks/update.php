<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Banks */

$this->title = 'Update Banks: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Banks', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="banks-update">

   <div class="panel panel-info">
        <div class="panel-heading"><i class="glyphicon glyphicon-edit"></i> ธนาคาร</div>
        <div class="panel-body">
       
    <?= $this->render('_form', [
        'model' => $model,        
    ]) ?>

</div>
</div>
</div>
