<?php
$titles = 'สรุปงบประมาณรายปี';
$this->title = $titles;
$this->params['breadcrumbs'][] = $this->title;

use kartik\grid\GridView;
use yii\helpers\Html;
use miloschuman\highcharts\Highcharts;
use yii\helpers\ArrayHelper;
use kartik\widgets\Select2;
use app\models\Years;
?>
 
<div class="col-md-12">
        <div class="panel panel-primary">
            <div class="panel-heading tsb f24p"><i class="fa fa-bar-chart"></i> <?=$titles?></div>
            <div class="panel-body">

            <?php
                echo Highcharts::widget([
                    'options' => [
                        'title' => ['text' => $titles],
                        'xAxis' => [
                            'categories' => $type,
                        ],
                        'yAxis' => [
                            'title' => ['text' => 'ร้อยละ']
                        ],
                        'series' => [
                            [
                                'name' => 'ร้อยละ',
                                'data' => $persen,
                                'type'=>'column',

                                'dataLabels' => [
                                    'enabled' => true,
                                    //'rotation' => -90,
                                    'color' => '#FFFFFF',
                                    'align' => 'center',
                                    'y' => 10, 
                                    'style' => [
                                        'fontSize' => '13px',
                                        'fontFamily' => 'Verdana, sans-serif'
                                    ]
                                ]
                            ]
                        ],
                    ],
                    'scripts' => [
                        'highcharts-more',
                        'modules/exporting', 
                        'modules/drilldown'
                    ],
                ]);

            ?>

            </div>
        </div>
    </div>
<!--<div class="row">
    <div class="col-md-12">
        <?php
        echo GridView::widget([
            'dataProvider' => $dataProvider,
            'panel' => [
                'heading' => '<b class="tsb f24p"><i class="fa fa-h-square"></i> ' . $titles . '</b>',
                'type' => 'success',
                // 'after' => Html::a('<i class="glyphicon glyphicon-repeat"></i> โหลดข้อมูลใหม่', [''], ['class' => 'btn btn-info']),
                'footer' => false
            ],
            'responsive' => true,
            'hover' => true,
            'striped' => FALSE,
            'pjax' => true,
            'pjaxSettings' => [
                'neverTimeout' => true,
                'beforeGrid' => '',
                'afterGrid' => '',
            ],
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                [
                    'label' => 'ปีงบ',
                    'attribute' => 'year',
                ],
                [
                    'label' => 'หมวด',
                    'attribute' => 'type',
                ],
                [
                    'label' => 'งบที่ตั้ง',
                    'attribute' => 'money',
                    'format' => ['decimal', 4],
                ],
                [
                    'label' => 'ยอดจ่าย',
                    'attribute' => 'sumamount',
                    'format' => ['decimal', 4],
                ],
                [
                    'label' => 'ยอดคงเหลือ',
                    'attribute' => 'remain',
                    'format' => ['decimal', 4],
                ],
                [
                    'label' => 'ร้อยละ',
                    'attribute' => 'persen',
                ],
            ],
        ]);
        ?>
    </div>
</div>-->


