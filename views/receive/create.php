<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Receive */

$this->title = 'Create Receive';
$this->params['breadcrumbs'][] = ['label' => 'Receives', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="receive-create">

    <div class="panel panel-info">
        <div class="panel-heading"> บันทึกรายละเอียดใบส่งของ</div>
        <div class="panel-body">
            
   

    <?= $this->render('_form', [
        'model' => $model,
        //'modelDetails' => $modelDetails
    ]) ?>

</div>
     </div>
    </div>