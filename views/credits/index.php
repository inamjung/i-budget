<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\bootstrap\Modal;
use yii\helpers\Url;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel app\models\CreditsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Credits';
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
<div class="credits-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <div class="panel panel-warning">
        <div class="panel-heading"><i class="glyphicon glyphicon-list"></i> ทะเบียนเจ้าหนี้ ที่รับรู้หนี้แล้ว</div>
        <div class="panel-body">
 <?php Pjax::begin(['id' => 'credit_pjax_id']); ?>
            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                //'filterModel' => $searchModel,
                'formatter' => ['class' => 'yii\i18n\Formatter','nullDisplay' => '-'],
                'hover' =>true,	
                'striped'=>FALSE,
                'columns' => [
                    ['class' => 'yii\grid\SerialColumn'],
                    // 'id',
                    'send_credit_date',
                    [
                        'attribute' => 'type_id',
                        'value' => 'typecredit.type'
                    ],
                    'bill_no',
                    [
                        'attribute' => 'company_id',
                        'value' => 'companycredit.name'
                    ],                   
                                        
                   // 'number_anumad',
                     [
                        'attribute' => 'amount',
                        'label' => 'มูลค่า',
                        'format'=>['decimal',2]
                    ],
                    // 'bill_no',
                    // 'invoice',                    
                    // 'budget',
                    // 'date_instock',
                    // 'number_instock',
                    // 'send_credit',
                    // 'send_boss',
                    // 'number_pay',
                    // 'year',
                    // 'user_id',
                    // 'send_credit_date',
                    // 'credit_confirm_date',
                    // 'pay_confirm',
                    // 'pay_date',
                    // 'updatedate',
                   // ['class' => 'yii\grid\ActionColumn'],
                    [
                        'attribute' => 'เสนอ',
                        'format' => 'raw',
                        'value' => function($data, $key) {
                            //$path = ('index.php?r=/receivedata/updatestock&id=' . $data->id);                           
                            return Html::a(' <i class="glyphicon glyphicon-edit"> </i>', '#', ['target' => '_blank',
                                        'class' => 'activity-updatepay-link btn btn-warning btn-sm',
                                        'data-toggle' => 'modal',
                                        'data-target' => '#activity-modal',
                                        'data-id' => $key,
                                        'data-pjax' => 0,
                                        'title' => Yii::t('kvgrid', 'เสนอ')]);
                        },
                                'contentOptions' => ['style' => 'width: 50px;text-align:center']
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
            "?r=receivedata/create",
            function (data)
            {
            $("#activity-modal").find(".modal-body").html(data);
            $(".modal-body").html(data);
            $(".modal-title").html("บันทึกข้อมูลใบส่งของ");
            $("#activity-modal").modal("show");
            }
            );
            });
            
            $(".activity-updatepay-link").click(function(e) {
                    var fID = $(this).closest("tr").data("key");
                    $.get(
                        "?r=credits/updatepay",
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
                
            $(".activity-updatecredit-link").click(function(e) {
                    var fID = $(this).closest("tr").data("key");
                    $.get(
                        "?r=receive/updatecredit",
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
        $("#credit_pjax_id").on("pjax:success", function() {
          init_click_handlers(); //reactivate links in grid after pjax update
        });'); ?>