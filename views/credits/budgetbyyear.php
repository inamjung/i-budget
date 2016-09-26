<?php
$titles = 'สรุปงบประมาณรายปี';
$this->title = $titles;
$this->params['breadcrumbs'][] = $this->title;

use kartik\grid\GridView;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use kartik\widgets\Select2;
use app\models\Years;
?>



    <div class='well'>
        <form method="POST">    
            <div class="row">
                <div class="col-xs-4 col-sm-4 col-md-5">
                    <?php
                    $list = ArrayHelper::map(app\models\Years::find()->all(), 'year', 'year');
                    echo Select2::widget([
                        'name' => 'year',
                        'data' => $list,
                        'value' => $year,
                        'size' => Select2::MEDIUM,
                        'options' => ['placeholder' => 'เลือก ปีงบ...'],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]);
                    ?>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-2">
                    <button class='btn btn-danger'>ประมวลผล</button>
                </div>    

            </div>

        </form>

    </div>  
<div class="row">
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
            'exportConfig'=>[
            GridView::EXCEL =>[],
            GridView::PDF=>[],     
            ],
            'toolbar' => [        
                '{export}'=>false,
                '{toggleData}'=>false
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
                    'label' => 'สถานะ',
                    'attribute' => 'status',
                ],
            ],
        ]);
        ?>
    </div>
</div>

