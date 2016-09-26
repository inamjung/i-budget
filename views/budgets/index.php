<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\BudgetsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

//$this->title = 'Budgets';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="budgets-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('<i class="glyphicon glyphicon-plus"></i> เพิ่มวงเงินปีงบประมาณ', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <div class="panel panel-primary">
        <div class="panel-heading"> วงเงินงบประมาณ</div>
        <div class="panel-body">
            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    //'id',
                    'year',
                   
                    [
                        'attribute' =>  'money',
                        'format' => ['decimal',4],
                        'headerOptions' => ['class' => 'text-center'],
                    ],
                    [
                        'attribute' => 'type_id',
                        'value' => 'type4.type',
                        'headerOptions' => ['class' => 'text-center'],
                    ],

                    ['class' => 'yii\grid\ActionColumn'],
                ],
            ]);
            ?>

        </div>
    </div>
</div>