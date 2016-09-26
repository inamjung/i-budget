<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Companys */

$this->title = 'Create Companys';
$this->params['breadcrumbs'][] = ['label' => 'Companys', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="companys-create">

    <div class="panel panel-info">
        <div class="panel-heading"> เพิ่มบริษัท</div>

            <div class="panel-body">
            <?=
            $this->render('_form', [
                'model' => $model,
            ])
            ?>

        </div>
    </div>
</div>
