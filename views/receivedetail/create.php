<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Receivedetail */

$this->title = 'Create Receivedetail';
$this->params['breadcrumbs'][] = ['label' => 'Receivedetails', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="receivedetail-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
