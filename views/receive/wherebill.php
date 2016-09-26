
<?php
$this->title = 'WHERE-BILL';

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
            'action' => Url::to(['receive/wherebill'])]);
?>
<label><i class="glyphicon glyphicon-search"></i> ค้นหาใบส่งของ ให้ระบุชื่อบริษัท หรือ เลขที่ใบส่งของที่ต้องการ หรือ จะระบุทั้งสองช่องก็ได้</label>
<div class='well'>
    <form method="POST">       
        <div class="row">
            <div class="col-xs-4 col-sm-4 col-md-4">
               <?php
                    $list = ArrayHelper::map(\app\models\Companys::find()->all(), 'id', 'name');
                    echo Select2::widget([
                        'name' => 'id',
                        'data' => $list,
                        'value' => $id,
                        'size' => Select2::MEDIUM,
                        'options' => ['placeholder' => 'เลือก บริษัท...'],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]);
                ?> 
            </div>
        </div><br>
        <div class="row">
            <div class="col-xs-4 col-sm-4 col-md-4">
                 ระบุเลขที่ใบส่งของ 
                <input type="text" name="bill" class="form-control">
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
        'label' => 'ปีงบประมาณ',
        'attribute' => 'ybudget',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-center'],
    ],
    [
        'label' => 'เลขที่ใบส่งของ',
        'attribute' => 'bill_no',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'label' => 'บริษัท',
        'attribute' => 'cname',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'label' => 'มูลค่า',
        'attribute' => 'amount',
        'format' => ['decimal', 2],
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'label' => 'วันที่ตรวจรับ',
        'attribute' => 'date_receive',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'label' => 'คลัง',
        'attribute' => 'instock',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'label' => 'วันที่รับเข้าคลัง',
        'attribute' => 'date_instock',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'class' => 'kartik\grid\BooleanColumn',
        'label' => 'ส่งแจ้งหนี้',
        'attribute' => 'send_credit',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'class' => 'kartik\grid\BooleanColumn',
        'label' => 'รับแจ้งหนี้',
        'attribute' => 'credit_confirm',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'label' => 'วันที่รับรับแจ้งหนี้',
        'attribute' => 'credit_confirm_date',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'class' => 'kartik\grid\BooleanColumn',
        'label' => 'จ่ายหนี้',
        'attribute' => 'pay_confirm',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'label' => 'วันที่จ่าย',
        'attribute' => 'pay_date',
        'headerOptions'=>['class'=>'text-center'],
        'contentOptions' => ['class' => 'text-left'],
    ],
    [
        'label' => 'เลขที่เช็ค',
        'attribute' => 'number_check',
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
        'heading' => 'บริษัท : ' . $datas[0]['cname'] ,
//        'footer' => 'PID : ' . $datas[0]['PID'] . ' | ที่อยู่ : ' . $datas[0]['addr'],
    ],
]);
?>


<div class="footerrow" style="padding-top: 60px">

</div>
<!--///-->
           