
<?php
$this->title = 'MONEY';

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
$tbldata = $dataProvider->getModels();
?>

<?php
$form = ActiveForm::begin(['method' => 'get',
            'action' => Url::to(['receive/moneydr'])]);
?>


<?php ActiveForm::end(); ?>
<?php
if (count($datas) == 0) {
    echo "<div class='alert alert-info'>ยังไม่มีผลลัพธ์จากการค้นหาข้อมูล</div>";
    return;
}
?>
<div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6">
        <?php
$gridColumns = [
    //['class' => 'kartik\grid\SerialColumn'],
   
    [
        'label' => 'เดือน',
        'attribute' => 'my',       
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-center'],
    ],
    [
        'class' => 'kartik\grid\DataColumn',
        'label' => 'รายรับOPD',
        'attribute' => 'Getopd',
        'format' => ['decimal', 2],
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'class' => 'kartik\grid\DataColumn',
        'label' => 'รายรับIPD',
        'attribute' => 'Getipd',
        'format' => ['decimal', 2],
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'class' => 'kartik\grid\DataColumn',
        'label' => 'รายรับOPD+IPD',
        'attribute' => 'Allget',
        'format' => ['decimal', 2],
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'class' => 'kartik\grid\DataColumn',
        'label' => 'รายจ่าย',
        'attribute' => 'Pay',
        'format' => ['decimal', 2],
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
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
       'heading' => 'แสดงรายรับ-รายจ่าย ของยา',
//        'footer' => 'PID : ' . $datas[0]['PID'] . ' | ที่อยู่ : ' . $datas[0]['addr'],
    ],
]);
?>
    </div>
    <div class="col-xs-6 col-sm-6 col-md-6">
        <div style="display: none">
    <?=
    Highcharts::widget([
        'scripts' => [
            'highcharts-more', // enables supplementary chart types (gauge, arearange, columnrange, etc.)
            //'modules/exporting', // adds Exporting button/menu to chart
            'themes/grid', // applies global 'grid' theme to all charts
            'highcharts-3d',
        // 'modules/drilldown'
        ]
    ]);
    ?>
        </div>
    <?php
echo Highcharts::widget([
    'options' => [
        'title' => ['text' => 'แสดงรายรับ-รายจ่าย ของยา'],
        'credits' => ['enabled' => false],
        'xAxis' => [
            'categories' => $my
        ],
        'yAxis' => [
            'title' => ['text' => '']
        ],
        'series' => [
            [
                'type' => 'column',
                'name' => 'รายรับOPD+IPD',
                'data' => $Allget,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
//            [
//                'type' => 'column',
//                'name' => 'รายรับIPD',
//                'data' => $Getipd,
//                'dataLabels' => [
//                    'enabled' => true,
//                ]
//            ],
            [
                'type' => 'column',
                'name' => 'รายจ่าย',
                'data' => $Pay,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
            
        ]
    ]
]);
?>            
            
</div>
    </div>

<div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6">
        <div style="display: none">
    <?=
    Highcharts::widget([
        'scripts' => [
            'highcharts-more', // enables supplementary chart types (gauge, arearange, columnrange, etc.)
            //'modules/exporting', // adds Exporting button/menu to chart
            'themes/grid',       // applies global 'grid' theme to all charts
            'highcharts-3d',
            'modules/drilldown'
        ]
    ]);
    ?>
</div>
        <div id="chart2"></div>
     <?php
            $sql = "
select year(date) year1,month(date) month1
,concat(month(date),'-' ,year(date)+543) my1
,sum(if(type='Getopd',amount,0)) Getopd1 
,sum(if(type='Getipd',amount,0)) Getipd1
,sum(if(type='Pay',amount,0)) Pay1
,sum(if(type='Getopd',amount,0)) + sum(if(type='Getipd',amount,0)) Allget1
from (
select 'Pay' as type,date_instock date,amount
from receive r
where r.date_instock between '2015-10-01' and '2016-09-30' and r.type_id='2'
union all
select 'Getopd' as type,vstdate,inc_nondrug
from hos.vn_stat 
where vstdate between '2015-10-01' and '2016-09-30'
union all
select 'Getipd' as type,dchdate,inc05
from hos.an_stat 
where dchdate between '2015-10-01' and '2016-09-30'
) a
group by year1,month1";
        $connection = Yii::$app->db;
        $data = $connection->createCommand($sql)->queryAll();
        
        for($i=0;$i<sizeof($data);$i++){
            $my1[] = $data[$i]['my1'];
            $Getopd1[] = $data[$i]['Getopd1']*1;
            $Getipd1[] = $data[$i]['Getipd1']*1;
            $Pay1[] = $data[$i]['Pay1']*1;
            $Allget1[] = $data[$i]['Allget1']*1;
            $month1[] = $data[$i]['month1'];
            $year1[] = $data[$i]['year1'];
          
        }
?>
        
    <?php
echo Highcharts::widget([
    'options' => [
        'title' => ['text' => 'แสดงรายรับ-รายจ่าย ของเวชภัณฑ์มิใช่ยา'],
        'credits' => ['enabled' => false],
        'xAxis' => [
            'categories' => $my1
        ],
        'yAxis' => [
            'title' => ['text' => '']
        ],
        'series' => [
            [
                'type' => 'column',
                'name' => 'รายรับOPD+IPD',
                'data' => $Allget1,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
            [
                'type' => 'column',
                'name' => 'รายจ่าย',
                'data' => $Pay1,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
            
        ]
    ]
]);
?>  


    </div>
</div>