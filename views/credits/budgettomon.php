<?php
$titles = 'ตรวจสอบการแจ้งหนี้';
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
                <div class="col-xs-2 col-sm-2 col-md-2">
              
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
                    'options'=>['class'=>'form-control','placeholder'=>'ช่วงวันที่..']
                ]);
                ?>
            </div>
            <div class="col-xs-2 col-sm-2 col-md-2">
               
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
                    'options'=>['class'=>'form-control','placeholder'=>'ถึงวันที่ ..']
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
            'formatter' => ['class' => 'yii\i18n\Formatter','nullDisplay' => '-'],
            'panel' => [
                'heading' => '<b class="tsb f24p"><i class="fa fa-h-square"></i> ' . $titles . '</b>',
                'type' => 'success',
                // 'after' => Html::a('<i class="glyphicon glyphicon-repeat"></i> โหลดข้อมูลใหม่', [''], ['class' => 'btn btn-info']),
                'footer' => false
            ],
            'responsive' => true,
            'pjax'=>true,
            'hover' => true,
            'striped' => FALSE,            
            'exportConfig'=>[
            GridView::EXCEL =>[],
            //GridView::PDF=>[],     
            ],
           'toolbar' => [        
                '{export}'=>false,
                '{toggleData}'=>false
            ],
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
//                [
//                    'label' => 'ปีงบ',
//                    'attribute' => 'year',
//                ],
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
                    'label' => 'ยอดหนี้ทั้งหมด',
                    'attribute' => 'sum_amount',
                    'format' => ['decimal', 4],
                ],
                [
                    'label' => 'ชำระแล้ว',
                    'attribute' => 'au',
                    'format' => ['decimal', 4],
                ],
                [
                    'label' => 'เหลือค้างชำระ',
                    'attribute' => 'tt',
                    'format' => ['decimal', 4],
                ],
                [
                    'label' => 'งบคงเหลือ',
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

