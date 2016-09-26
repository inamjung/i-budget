<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ReceivedetailSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Receivedetails';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="receivedetail-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Receivedetail', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'receive_id',
            'item_id',
            'qty',
            'pack',
            // 'price',
            // 'unit',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
