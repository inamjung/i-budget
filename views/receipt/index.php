<?php


use yii\helpers\Html;
use kartik\grid\GridView;
use yii\bootstrap\Modal;
use yii\helpers\Url;
use yii\widgets\Pjax;
use app\models\Credits;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ReceiptSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Receipts';
$this->params['breadcrumbs'][] = $this->title;
?>
<?php
    Modal::begin([
        'id' => 'activity-modal',
        'header' => '<h4 class="modal-title"></h4>',
        'size' => 'modal-lg',
        'footer' => '<a href="#" class="btn btn-primary" data-dismiss="modal">ปิด</a>',
    ]);
    Modal::end();
    ?>
<div class="receipt-index">
<?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <div class="panel panel-success">
        <div class="panel-heading"><i class="glyphicon glyphicon-list"></i> ทะเบียนรายการบิลที่ตรวจรับแล้ว</div>
        <div class="panel-body">
            <?php Pjax::begin(['id' => 'receiveindex_pjax_id']); ?>

            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                // 'filterModel' => $searchModel,
                'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
                'hover' => true,
                'striped' => FALSE,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                  //'id',
                    'date_receive',
                    [
                        'attribute' => 'type_id',
                        'value' => 'type.type'
                    ],
                    'bill_no',
                    [
                        'attribute' => 'company_id',
                        'value' => 'company.name'
                    ],
                     'amount',
                    // 'invoice',
                    
                    [
                        'header' => 'พัสดุ',
                        'attribute' => 'confirm',
                        'class' => 'kartik\grid\BooleanColumn',
                    ],
                    [
                        'header' => 'รับหนี้',
                        'attribute' => 'credit_confirm',
                        'class' => 'kartik\grid\BooleanColumn',
                    ],
                    
                    // 'invoice',
                    // 'amount',
                    // 'confirm',
                    // 'budget',
                    // 'year',
                    // 'number_anumad',
                    // 'date_instock',
                    // 'number_instock',
                    // 'send_credit',
                    // 'send_credit_date',
                    // 'credit_confirm',
                    // 'credit_confirm_date',
                    // 'user_id',
                    // 'createdate',
                    // 'updatedate',
                   [
                'class' => 'yii\grid\ActionColumn',
                'options'=>['style'=>'width:150px;'],
                'template'=>'<div class="btn-group btn-group-sm" role="group" aria-label="...">{view}{update}{delete}</div>',
                'buttons'=>[
                    'view'=>function($url,$model,$key){
                        return Html::a(' <i class="glyphicon glyphicon-search"> </i>', '#', ['target' => '_blank',
                                        'class' => 'activity-view-link btn btn-info btn-sm',
                                        'data-toggle' => 'modal',
                                        'data-target' => '#activity-modal',
                                        'data-id' => $key,
                                        'data-pjax' => 0,
                                        'title' => Yii::t('kvgrid', 'ดูรายการ')]);
                    }, 
                    'update'=>function($url,$model,$key){
                        return Html::a(' <i class="glyphicon glyphicon-pencil"> </i>', '#', ['target' => '_blank',
                                        'class' => 'activity-update-link btn btn-warning btn-sm',
                                        'data-toggle' => 'modal',
                                        'data-target' => '#activity-modal',
                                        'data-id' => $key,
                                        'data-pjax' => 0,
                                        'title' => Yii::t('kvgrid', 'ดูรายการ')]);
                    },
                    'delete'=>function($url,$model,$key){
                         return Html::a('<i class="glyphicon glyphicon-trash"></i>', $url,[
                                'title' => Yii::t('yii', 'Delete'),
                                'data-confirm' => Yii::t('yii', 'คุณต้องการลบไฟล์นี้?'),
                                'data-method' => 'post',
                                'data-pjax' => '0',
                                'class'=>'btn btn-danger'
                                ]);
                    }
                ]
            ],
                ],
            ]);
            ?>
<?php Pjax::end() ?>
        </div>
    </div>
</div>

<?php $this->registerJs('
        function init_click_handlers(){
            $("#activity-create-link").click(function(e) {
            $.get(
            "?r=receipt/create",
            function (data)
            {
            $("#activity-modal").find(".modal-body").html(data);
            $(".modal-body").html(data);
            $(".modal-title").html("");
            $("#activity-modal").modal("show");
            }
            );
            });
                
            $(".activity-update-link").click(function(e) {
                    var fID = $(this).closest("tr").data("key");
                    $.get(
                        "?r=receipt/update",
                        {
                            id: fID
                        },
                        function (data)
                        {
                            $("#activity-modal").find(".modal-body").html(data);
                            $(".modal-body").html(data);                            
                            $("#activity-modal").modal("show");
                        }
                    );
                });     
                $(".activity-view-link").click(function(e) {
                    var fID = $(this).closest("tr").data("key");
                    $.get(
                        "?r=receipt/view",
                        {
                            id: fID
                        },
                        function (data)
                        {
                            $("#activity-modal").find(".modal-body").html(data);
                            $(".modal-body").html(data);                            
                            $("#activity-modal").modal("show");
                        }
                    );
                });   
        }
        init_click_handlers(); //first run
        $("#receiveindex_pjax_id").on("pjax:success", function() {
          init_click_handlers(); //reactivate links in grid after pjax update
        });'); ?>
