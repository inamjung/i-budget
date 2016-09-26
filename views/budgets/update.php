<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Budgets */

$this->title = 'Update Budgets: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Budgets', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="budgets-update">

   <div class="panel panel-primary">
        <div class="panel-heading"><i class="glyphicon glyphicon-edit"></i> วงเงินงบประมาณ</div>
        <div class="panel-body">
       
    <?= $this->render('_form', [
        'model' => $model,        
    ]) ?>

</div>
</div>
</div>
