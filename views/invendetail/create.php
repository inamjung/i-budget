<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Invendetail */

$this->title = 'Create Invendetail';
$this->params['breadcrumbs'][] = ['label' => 'Invendetails', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="invendetail-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
