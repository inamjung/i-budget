<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Inven */

$this->title = 'Create Inven';
$this->params['breadcrumbs'][] = ['label' => 'Invens', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="inven-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
