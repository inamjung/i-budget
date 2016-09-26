<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Receipt */

//$this->title = 'Create Receipt';
//$this->params['breadcrumbs'][] = ['label' => 'Receipts', 'url' => ['index']];
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="receipt-create">

    <div class="panel panel-success">
        <div class="panel-heading"> บันทึกรายละเอียดใบส่งของ</div>
        <div class="panel-body">

            <?=
            $this->render('_form', [
                'model' => $model,
                'modelDetails' => $modelDetails
            ])
            ?>

        </div>
    </div>
</div>
