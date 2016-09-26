<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Credits */

$this->title = 'Create Credits';
$this->params['breadcrumbs'][] = ['label' => 'Credits', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="credits-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
