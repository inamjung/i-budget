<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Receive */

$this->title = 'Update Receive: ' . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Receives', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="receive-update">

    <div class="panel panel-info">
    <div class="panel-heading"> รายละเอียดใบส่งของ</div>
    <div class="panel-body">

        <?=
        $this->render('_formpas', [
            'model' => $model,
        ])
        ?>

    </div>
</div>
</div>
