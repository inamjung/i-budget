<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Credits */

$this->title = 'Update Credits: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Credits', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="credits-update">

       <div class="panel panel-info">
    <div class="panel-heading"> บันทึกรายละเอียดการชำระหนี้</div>
    <div class="panel-body">

    <?= $this->render('_formpaydetail', [
        'model' => $model,
    ]) ?>

    </div>
</div>
</div>
