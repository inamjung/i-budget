<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\bootstrap\Modal;
use yii\helpers\Url;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ReceiveSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Receives';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="receive-index">
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

  <?php
    Modal::begin([
        'id' => 'activity-modal',
        'header' => '<h4 class="modal-title"></h4>',
        'size' => 'modal-lg',
        'footer' => '<a href="#" class="btn btn-primary" data-dismiss="modal">ปิด</a>',
    ]);
    Modal::end();
    ?>
    
    <div class="panel panel-info">
        <div class="panel-heading"><i class="glyphicon glyphicon-list"></i> รายการบิลจากคลัง</div>
        <div class="panel-body">
            <?php Pjax::begin(['id' => 'receivepas_pjax_id']); ?>
            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                //'filterModel' => $searchModel,
                'formatter' => ['class' => 'yii\i18n\Formatter','nullDisplay' => '-'],
                'hover' =>true,	
                'striped'=>FALSE,
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
                    // 'invoice',
                   [
                        'attribute' => 'amount',
                        'label' => 'มูลค่า',
                        'format'=>['decimal',2]
                    ],
                    // 'confirm',
                    // 'budget',
                    // 'year',
                    // 'number_anumad',
                    // 'date_instock',
                    // 'number_instock',
                    // 'send_credit',
                    // 'credit_confirm',
                    // 'user_id',
                    // 'createdate',
                    // 'updatedate',
                    [
                        'attribute' => 'พัสดุรับ',
                        'format' => 'raw',
                        'value' => function($data, $key) {
                            //$path = ('index.php?r=/receivedata/updatestock&id=' . $data->id);                           
                            return Html::a(' <i class="glyphicon glyphicon-edit"> </i>', '#', ['target' => '_blank',
                                        'class' => 'activity-updatepas-link btn btn-warning btn-sm',
                                        'data-toggle' => 'modal',
                                        'data-target' => '#activity-modal',
                                        'data-id' => $key,
                                        'data-pjax' => 0,
                                        'title' => Yii::t('kvgrid', 'พัสดุรับ')]);
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
            
            $(".activity-updatepas-link").click(function(e) {
                    var fID = $(this).closest("tr").data("key");
                    $.get(
                        "?r=receipt/updatepas",
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

            
            $(".activity-updatepas-link").click(function(e) {
                    var fID = $(this).closest("tr").data("key");
                    $.get(
                        "?r=receipt/updatepas",
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
        $("#receivepas_pjax_id").on("pjax:success", function() {
          init_click_handlers(); //reactivate links in grid after pjax update
        });'); ?>