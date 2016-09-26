
<?php
$this->title = 'STEP - 1';

use kartik\grid\GridView;
use miloschuman\highcharts\Highcharts;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\data\ArrayDataProvider;
use yii\helpers\ArrayHelper;
use yii\widgets\Pjax;
use yii\widgets\ActiveForm;
use yii\bootstrap\Modal;
use yii\widgets\ListView;
use app\models\Companys;
use kartik\select2\Select2;

$this->params['breadcrumbs'][] = $this->title;
$datas = $dataProvider->getModels();
?>

<?php
$form = ActiveForm::begin(['method' => 'get',
            'action' => Url::to(['receive/step1'])]);
?>

<div class='well'>
    <form method="POST">       
        <div class="row">
            <div class="col-xs-4 col-sm-4 col-md-4">
               <?php echo \yii\jui\DatePicker::widget([
                   'name'=>'date1',
                   'value'=> $date1,
                   'language'=>'TH',
                   'dateFormat'=>'yyyy-MM-dd',
                   'clientOptions' => [
                    'changeMonth' => true,
                    'changeYear' => true,
                ],
                'options' => [
                    'class' => 'form-control'
                ],
               ]);                    
                ?> 
            </div>
        </div><br>
        <div class="row">
            <div class="col-xs-4 col-sm-4 col-md-4">
                <?php echo \yii\jui\DatePicker::widget([
                   'name'=>'date2',
                   'value'=> $date2,
                   'language'=>'TH',
                   'dateFormat'=>'yyyy-MM-dd',
                   'clientOptions' => [
                    'changeMonth' => true,
                    'changeYear' => true,
                ],
                'options' => [
                    'class' => 'form-control'
                ],
               ]);                    
                ?> 
            </div>             
        </div><br>
        <div class="row">            
            <div class="col-xs-2 col-sm-2 col-md-2">                
                <button class='btn btn-danger'> ค้นหา</button>
            </div>
        </div>
    </form>
</div><br>
<?php ActiveForm::end(); ?>
<?php
if (count($datas) == 0) {
    echo "<div class='alert alert-info'>ยังไม่มีผลลัพธ์จากการค้นหาข้อมูล</div>";
    return;
}
?>

<?php
$gridColumns = [
    //['class' => 'kartik\grid\SerialColumn'],
    [
        'label' => 'หมวด',
        'attribute' => 'type',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        //'class' => 'kartik\grid\DataColumn',
        'label' => 'เฉลี่ยวันรับเข้า',
        'attribute' => 'dd',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [       
        'label'=>'เกณฑ์',
        'attribute'=>'d',
    ],
    
];
echo GridView::widget([
    'dataProvider' => $dataProvider,
    
    'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
    'columns' => $gridColumns,
    'responsive' => true,
    'hover' => true,
    'striped' => false,
    'floatHeader' => FALSE,
    //'showPageSummary' => true,
    'toolbar' => [
        '{export}' => false,
        '{toggleData}' => false
    ],
    'panel' => [
        'type' => GridView::TYPE_INFO,
        //'heading' => 'บริษัท : ' . $datas[0]['cname'] ,
//        'footer' => 'PID : ' . $datas[0]['PID'] . ' | ที่อยู่ : ' . $datas[0]['addr'],
    ],
]);
?>


<div class="footerrow" style="padding-top: 60px">

</div>
<!--///-->
           