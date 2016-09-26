<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ChatSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Chats';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="chat-index">
<div class="row">
    <section class="col-lg-9 connectedSortable ui-sortable">

        <!-- Chat box -->
        <?php
        echo \sintret\chat\ChatRoom::widget([
            'url' => \yii\helpers\Url::to(['/ajax/send-chat']),
            'userModel' => dektrium\user\models\User::className(),
            'userField' =>  'avatarImage'
                       
               
        ]);
        ?>
       

    </section>
</div>
    
</div>
