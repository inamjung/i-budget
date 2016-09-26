<?php
$titles = 'I-Budget';
$this->title = $titles;
$this->params['breadcrumbs'][] = $this->title;

use kartik\grid\GridView;
use yii\helpers\Html;
use miloschuman\highcharts\Highcharts;
use yii\helpers\ArrayHelper;
use kartik\widgets\Select2;
use app\models\Years;

?>

<div class="well-transparent">
    <div class="text-center" style="margin-top: 150px;"  >       

        <?php echo html::img('@web/images/PDCA.png', 
        ['class' => 'img-responsive center-block img-round']) ?>
    </div> 
</div>


