<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Disp */

$this->title = 'Update Disp: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Disps', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="disp-update">

<!--    <h1><?= Html::encode($this->title) ?></h1>-->

  <div class="panel panel-success" >
        <div class="panel-heading"> แก้ไขมูลค่าจ่าย</div>
        <div class="panel-body">
            <?=
            $this->render('_form', [
                'model' => $model,
            ])
            ?>

        </div>
    </div>
