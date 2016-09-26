<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Credits */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Credits', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="credits-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'type_id',
            'date_receive',
            'company_id',
            'number_anumad',
            'bill_no',
            'invoice',
            'amount',
            'budget',
            'date_instock',
            'number_instock',
            'send_credit',
            'send_boss',
            'number_pay',
            'year',
            'user_id',
            'send_credit_date',
            'credit_confirm_date',
            'pay_confirm',
            'pay_date',
            'updatedate',
        ],
    ]) ?>

</div>
