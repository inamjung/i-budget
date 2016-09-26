<?php
$titles = 'ยอดซื้อ-ยอดชำระ แยกตามหมวด';
$this->title = $titles;
$this->params['breadcrumbs'][] = $this->title;

use kartik\grid\GridView;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use kartik\widgets\Select2;
use app\models\Years;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
use miloschuman\highcharts\Highcharts;
use miloschuman\highcharts\HighchartsAsset;

$datas = $dataProvider->getModels();
?>

<?php
$form = ActiveForm::begin(['method' => 'get',
            'action' => Url::to(['credits/budgetbydate']),]);
?>
<div class='well'>   
    ระหว่างวันที่:
    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <?php
            echo yii\jui\DatePicker::widget([
                'name' => 'date1',
                'value' => $date1,
                'language' => 'th',
                'dateFormat' => 'yyyy-MM-dd',
                'clientOptions' => [
                    'changeMonth' => true,
                    'changeYear' => true,
                ],
                'options' => [
                    'class' => 'form-control'
                ],
            ]);
            ?>
            ถึงวันที่:
            <?php
            echo yii\jui\DatePicker::widget([
                'name' => 'date2',
                'value' => $date2,
                'language' => 'th',
                'dateFormat' => 'yyyy-MM-dd',
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
        <div class="col-xs-2 col-sm-2 col-md-2">
            <button class='btn btn-danger'>ประมวลผล</button>
        </div>
    </div>
</div>
<?php ActiveForm::end(); ?>

<div class="row">
    <div class="col-md-12">
        <?php
        echo GridView::widget([
            'dataProvider' => $dataProvider,
            'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
            'panel' => [
                'heading' => '<b class="tsb f24p"><i class="fa fa-h-square"></i> ' . $titles . '</b>',
                'type' => 'success',
                // 'after' => Html::a('<i class="glyphicon glyphicon-repeat"></i> โหลดข้อมูลใหม่', [''], ['class' => 'btn btn-info']),
                'footer' => false
            ],
            'responsive' => true,
            'hover' => true,
            'striped' => FALSE,
            'exportConfig' => [
                GridView::EXCEL => [],
                GridView::PDF => [],
            ],
            'toolbar' => [
                '{export}' => false,
                '{toggleData}' => false
            ],
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                [
                    'label' => 'หมวด',
                    'attribute' => 'type',
                ],
                [
                    'label' => 'งบที่ตั้ง',
                    'attribute' => 'mon',
                    'format' => ['decimal', 2],
                ],
                [
                    'label' => 'ยอดซื้อทั้งหมด',
                    'attribute' => 'total_buy',
                    'format' => ['decimal', 2],
                ],
                [
                    'label' => 'ยอดชำระหนี้แล้ว',
                    'attribute' => 'total_pay',
                    'format' => ['decimal', 2],
                ],
                [
                    'label' => 'ยอดคงเหลือจากชำระหนี้',
                    'attribute' => 'remain_pay',
                    'format' => ['decimal', 2],
                ],
                [
                    'label' => 'ยอดคงเหลือจากเครดิต',
                    'attribute' => 'remain_credit',
                    'format' => ['decimal', 2],
                ],
            ],
        ]);
        ?>
    </div>
</div>


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
        'title' => ['text' => 'แสดงยอดซื้อ-ยอดชำระ แยกตามหมวด'],
        'xAxis' => [
            'categories' => $type
        ],
        'yAxis' => [
            'title' => ['text' => '']
        ],
        'series' => [
            [
                'type' => 'column',
                'name' => 'งบที่ตั้ง',
                'data' => $mon,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
            [
                'type' => 'column',
                'name' => 'ยอดซื้อ',
                'data' => $total_buy,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
            [
                'type' => 'column',
                'name' => 'ยอดชำระแล้ว',
                'data' => $total_pay,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
            [
                'type' => 'column',
                'name' => 'ยอดคงเหลือหักชำระแล้ว',
                'data' => $remain_pay,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
            [
                'type' => 'column',
                'name' => 'ยอดคงเหลือเครดิต',
                'data' => $remain_credit,
                'dataLabels' => [
                    'enabled' => true,
                ]
            ],
        ]
    ]
]);
?>
