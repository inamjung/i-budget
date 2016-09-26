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
<?php
    Modal::begin([
        'id' => 'activity-modal',
        'header' => '<h4 class="modal-title"></h4>',
        'size' => 'modal-lg',
        'footer' => '<a href="#" class="btn btn-primary" data-dismiss="modal">ปิด</a>',
    ]);
    Modal::end();
    ?>
<div class="receive-index">

    
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <div class="panel panel-success">
        <div class="panel-heading"><i class="glyphicon glyphicon-list"></i> ทะเบียนรายการบิลที่ตรวจรับแล้ว</div>
        <div class="panel-body">
<?php Pjax::begin(['id' => 'receive_pjax_id']); ?>
            <?=
            GridView::widget([
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
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
                     'amount',
                    // 'invoice',
                    
                    [
                        'header' => '',
                        'attribute' => 'confirm',
                        'class' => 'kartik\grid\BooleanColumn',
                    ],
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
                    //['class' => 'yii\grid\ActionColumn'],
                    [
                'class' => 'yii\grid\ActionColumn',
                'options'=>['style'=>'width:120px;'],
                'template'=>'<div class="btn-group btn-group-sm" role="group" aria-label="...">{view}{update}{delete}</div>',
                'buttons'=>[
                    'view'=>function($url,$model,$key){
                        return Html::a('<i class="glyphicon glyphicon-eye-open"></i>',$url,[
                            'class'=>'btn btn-default',
                            'title' => Yii::t('yii', 'View'),
                            ]);
                    }, 
                    'update'=>function($url,$model,$key){
                        return Html::a('<i class="glyphicon glyphicon-pencil"></i>',['receive/updatecommit','id'=>$model->id],[
                            'class'=>'btn btn-default',
                            'title' => Yii::t('yii', 'Update'),
                            ]);
                    },
                    'delete'=>function($url,$model,$key){
                         return Html::a('<i class="glyphicon glyphicon-trash"></i>', $url,[
                                'title' => Yii::t('yii', 'Delete'),
                                'data-confirm' => Yii::t('yii', 'คุณต้องการลบไฟล์นี้?'),
                                'data-method' => 'post',
                                'data-pjax' => '0',
                                'class'=>'btn btn-default'
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
        $("#receive_pjax_id").on("pjax:success", function() {
          init_click_handlers(); //reactivate links in grid after pjax update
        });'); ?>
