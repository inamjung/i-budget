<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Receipt */

//$this->title = 'Update Receipt: ' . ' ' . $model->id;
//$this->params['breadcrumbs'][] = ['label' => 'Receipts', 'url' => ['index']];
//$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
//$this->params['breadcrumbs'][] = 'Update';
?>
<div class="receipt-update">

   <div class="panel panel-info">
        <div class="panel-heading"> บันทึกรายละเอียดใบส่งของ</div>
        <div class="panel-body">

            <?=
            $this->render('_formpas', [
                'model' => $model,
                'modelDetails' => $modelDetails
            ])
            ?>

        </div>
    </div>
</div>
