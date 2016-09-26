<?php
$titles = 'รายการที่ตรวจรับ';
$this->title = $titles;
$this->params['breadcrumbs'][] = $this->title;

use kartik\grid\GridView;
use yii\helpers\Html;
use yii\helpers\ArrayHelper;
use kartik\widgets\Select2;
use app\models\Years;
use yii\widgets\Pjax;
?>



<div class='well'>
    <form method="POST">    
        <div class="row">
            <div class="col-xs-3 col-sm-3 col-md-3">
                <?php
                    $list = ArrayHelper::map(app\models\Types::find()->all(), 'id', 'type');
                    echo Select2::widget([
                        'name' => 'type',
                        'data' => $list,
                        'value' => $type,
                        'size' => Select2::MEDIUM,
                        'options' => ['placeholder' => 'เลือก หมวด...'],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]);
                    ?>
            </div>
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
        <?php Pjax::begin()?>
<?php
echo GridView::widget([
    'dataProvider' => $dataProvider,
    'panel' => [
        'heading' => '<b class="tsb f24p"><i class="glyphicon glyphicon-list"></i> ' . $titles . '</b>',
        'type' => 'success',
        // 'after' => Html::a('<i class="glyphicon glyphicon-repeat"></i> โหลดข้อมูลใหม่', [''], ['class' => 'btn btn-info']),
        'footer' => false
    ],
    'responsive' => true,
    'hover' => true,
    'striped' => FALSE,   
    'exportConfig' => [
        GridView::EXCEL => [],
        //GridView::PDF => [],        
    ],
    'toolbar' => [        
        '{export}',
        '{toggleData}'=>false
    ],
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],
        
        [
            'label' => 'หมวด',
            'attribute' => 'type',
        ],
        [
            'label' => 'วันที่ตรวจรับ',
            'attribute' => 'date_receive',
        ],
        [
            'label' => 'บริษัท',
            'attribute' => 'company',            
        ],
        [
            'label' => 'เลขที่ใบส่งของ',
            'attribute' => 'bill_no',            
        ],
        [
            'label' => 'รายการ',
            'attribute' => 'product',            
        ],
        [
            'label' => 'จำนวน',
            'attribute' => 'qty',
        ],
    ],
]);
?>
        <?php Pjax::end() ?>
    </div>
</div>

