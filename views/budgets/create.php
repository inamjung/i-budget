<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Budgets */

$this->title = 'Create Budgets';
$this->params['breadcrumbs'][] = ['label' => 'Budgets', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="budgets-create">

    <div class="panel panel-info">
        <div class="panel-heading"> วงเงินงบประมาณ</div>

            <div class="panel-body">
            <?=
            $this->render('_form', [
                'model' => $model,
            ])
            ?>

        </div>
    </div>
</div>