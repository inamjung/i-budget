<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Disp */

$this->title = 'Create Disp';
$this->params['breadcrumbs'][] = ['label' => 'Disps', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="disp-create">

<!--    <h1><?= Html::encode($this->title) ?></h1>-->
    <div class="panel panel-success" >
        <div class="panel-heading"> บันทึกมูลค่าจ่าย</div>
        <div class="panel-body">
            <?=
            $this->render('_form', [
                'model' => $model,
            ])
            ?>

        </div>
    </div>


</div>
