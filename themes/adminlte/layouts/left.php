<?php

use yii\helpers\Url;
use yii\helpers\Html;
?>

<aside class="main-sidebar">

    <section class="sidebar">

        <!-- Sidebar user panel -->
        <div class="user-panel">
            
            <div class="pull-left image">
                <?= Html::img('avatars/' . Yii::$app->user->identity->profile->avatar,
                        ['class' => 'img-circle', 'width' => '40px;'])
                ?>                

            </div>

            <!--        //แสดงชื่อผู้ใช้งาน-->
            <div class="pull-left info">
                <p>
<?php echo Yii::$app->user->identity->username; ?>
                </p>


            </div><br><hr/>
        </div>

<!--        //เมนูการตั้งค่า-->


        <ul class="sidebar-menu">
<!--        //เมนูการตั้งค่าให้ยุบ-ย่อได้-->            
            <li class="treeview">
                <a href="#">
                    <i class="glyphicon glyphicon-cog"></i> <span>ตั้งค่าระบบ</span>
                    <i class="fa pull-right fa-angle-down"></i>
                </a>
                <ul class="treeview-menu">
                   
<!--                    <li><a href="<?php echo Url::to(['site/index']); ?>">
                            <i class="fa fa-circle text-aqua"></i> <span>หน้าหลัก</span><small class="label pull-right bg-red"></small>
                        </a>
                    </li>-->
<!--                    <li><a href="<?php echo Url::to(['user/security/login']); ?>">
                            <i class="fa fa-circle text-green"></i> <span>เข้าสู่ระบบ</span> <small class="label pull-right bg-blue"></small>
                        </a> 
                    </li>-->
<!--                    <li><a href="<?php echo Url::to(['user/registration/register']); ?>">
                            <i class="fa fa-circle text-red"></i> <span>สมัครใช้งาน</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>-->
<!--                    <li><a href="<?php echo Url::to(['budgets/index']); ?>">
                            <i class="fa fa-circle text-red"></i> <span>ตั้งค่างบ</span>
                            <i class="fa pull-right fa-angle-down"></i>
                        </a>

                        <ul class="treeview-menu">

                            <li><a href="<?php echo Url::to(['years/index']); ?>"><i class="fa fa-circle text-yellow"></i> 
                                <span>
                                    ตั้งค่าปีงบประมาณ</span><small class="label pull-right bg-aqua"></small>
                            </a>
                            </li>
                            <li><a href="<?php echo Url::to(['banks/index']); ?>">
                                    <i class="fa fa-circle text-red"></i> <span>ตั้งธนาคาร</span><small class="label pull-right bg-aqua"></small>
                                </a>
                            </li>


                        </ul>


                    </li>-->



                   <li><a href="<?php echo Url::to(['years/index']); ?>"><i class="fa fa-circle text-yellow"></i> 
                            <span>
                                ตั้งค่าปีงบประมาณ</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li><a href="<?php echo Url::to(['budgets/index']); ?>"><i class="fa fa-circle text-yellow"></i> 
                            <span>
                                ตั้งค่าวงเงิน</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li><a href="<?php echo Url::to(['banks/index']); ?>">
                            <i class="fa fa-circle text-red"></i> <span>ตั้งธนาคาร</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
<?php  if(Yii::$app->user->identity->role == dektrium\user\models\User::ROLE_ADMIN) {?>
                    <li><a href="<?php echo Url::to(['admin/assignment']); ?>">
                            <i class="fa fa-circle text-red"></i> <span>กำหนดสิทธิ์</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
<?php }?>                    
                     <li><a href="<?php echo Url::to(['companys/index']); ?>"><i class="fa fa-circle text-yellow"></i> 
                            <span><i class="glyphicon glyphicon-pencil"></i>
                                รายชื่อบริษัท</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                </ul>
                    </ul>
            

 <!--   เมนู จนท.คลัง-->
                <ul class="sidebar-menu">
                    <li class="header"><h5><div class="label label-default"> จนท.คลัง</div></h5></li>
                    <li><a href="<?php echo Url::to(['companys/index']); ?>"><i class="fa fa-circle text-yellow"></i> 
                            <span><i class="glyphicon glyphicon-pencil"></i>
                                รายชื่อบริษัท</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                   <li>                        
                        <a href="<?php echo Url::to(['receipt/create']); ?>"><i class="fa fa-circle text-green"></i> 
                            <span>
                                ตรวจรับของ</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
<!--                    <li>                        
                        <a href="<?php echo Url::to(['receivedata/index']); ?>"><i class="fa fa-circle text-green"></i> 
                            <span>
                                บันทึกรายการบิล</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>-->
                    
                    <li><a href="<?php echo Url::to(['receive/index']); ?>"><i class="fa fa-circle text-green"></i> 
                            <span>
                                ทะเบียนตรวจรับทั้งหมด</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li><a href="<?php echo Url::to(['receive/productrec']); ?>"><i class="fa fa-circle text-green"></i> 
                            <span><i class="glyphicon glyphicon-search"></i>
                                รายการที่ตรวจรับ</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                 
<!--                    <li><a href="<?php echo Url::to(['companys/index']); ?>"><i class="fa fa-circle text-yellow"></i> 
                            <span><i class="glyphicon glyphicon-pencil"></i>
                                เพิ่มบริษัท</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>-->
                </ul>
<!--  เมนู จนท.พัสดุ             -->
<ul class="sidebar-menu">
                    <li class="header"><h5><div class="label label-default"> จนท.พัสดุ</div></h5></li>            
                   <li>                        
                        <a href="<?php echo Url::to(['receive/indexpas']); ?>">
                            <i class="fa fa-circle text-blue"></i> 
                             <small class="badge pull-right bg-blue-gradient">
                                <?php echo app\models\Receive::find()->where(['confirm'=>0])
                                        ->andWhere(['type_id'=>  Yii::$app->user->identity->type_id])
                                        ->count()?>
                            </small>
                            <span>
                                รับบิลจากคลัง</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo Url::to(['receive/indexpastomon1']); ?>">
                            <i class="fa fa-circle text-blue"></i> 
                            <small class="badge pull-right bg-blue-gradient">
                                <?php echo app\models\Receive::find()->where(['send_credit'=>0])
                                        ->andWhere(['confirm'=>1])
                                        ->andWhere(['type_id'=>  Yii::$app->user->identity->type_id])
                                        ->count()?>
                            </small>
                            <span>
                                บันทึกรับเข้าคลัง</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li>
                        <a href="<?php echo Url::to(['receive/indexpastomon']); ?>">
                            <i class="fa fa-circle text-blue"></i> 
                            <small class="badge pull-right bg-blue-gradient">
                                <?php echo app\models\Receive::find()->where(['send_credit'=>1])
                                        ->andWhere(['confirm'=>1])
                                        ->andWhere(['type_id'=>  Yii::$app->user->identity->type_id])
                                        ->count()?>
                            </small>
                            <span>
                                พิมพ์ใบแจ้งเจ้าหนี้</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li> 
                    <li><a href="<?php echo Url::to(['disp/create']); ?>">
                    <i class="fa fa-opencart"></i>                            
                            <span> ลงมูลค่าจ่าย</span>
                        </a>
                    </li>
                </ul>

<!--  เมนู การเงิน             -->
<ul class="sidebar-menu">
                    <li class="header"><h5><div class="label label-default"> จนท.การเงิน</div></h5></li>
                    <li><a href="<?php echo Url::to(['receive/indexcredit']); ?>">
                            <i class="fa fa-circle text-red"></i> 
                            <small class="badge pull-right bg-yellow-gradient">
                                <?php echo app\models\Receive::find()->where(['send_credit'=>1])
                                        ->andWhere(['credit_confirm'=>0])
                                        ->count()?>
                            </small>
                            <span>
                                รับรู้เจ้าหนี้</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li><a href="<?php echo Url::to(['credits/index']); ?>">
                            <i class="fa fa-circle text-red"></i> 
                            <small class="badge pull-right bg-yellow-gradient">
                                <?php echo \app\models\Credits::find()->where(['send_boss'=>0])->count()?>
                            </small>
                            <span>
                                เสนอ ผอก.</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li><a href="<?php echo Url::to(['credits/indexpaydetail']); ?>">
                            <i class="fa fa-circle text-red"></i> 
                            <small class="badge pull-right bg-yellow-gradient">
                                <?php echo \app\models\Credits::find()->where(['send_boss'=>1])
                                        ->andWhere(['pay_confirm'=>0])
                                        ->count()?>
                            </small>
                            <span>ชำระหนี้</span>
                        </a>                        
                    </li>
<!--                    <li><a href="<?php echo Url::to(['credits/budgetbyyear']); ?>">
                    <i class="fa fa-circle text-green"></i>                            
                            <span>สรุปวงเงิน</span>
                        </a>
                    </li>   -->
                    
                    
                </ul>
<ul class="sidebar-menu">
<!--        //เมนูการตั้งค่าให้ยุบ-ย่อได้-->            
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-line-chart"></i> <span>รายงาน-สถิติ</span>
                    <i class="fa pull-right fa-angle-down"></i>
                </a>
                <ul class="treeview-menu">

                   <li><a href="<?php echo Url::to(['credits/budgetbydate']); ?>">
                    <i class="fa fa-circle text-green"></i>                            
                            <span>สรุปยอดซื้อ-จ่าย</span>
                        </a>
                    </li>
                    <li><a href="<?php echo Url::to(['receive/moneydr']); ?>"><i class="fa fa-circle text-green"></i> 
                            <span><i class="glyphicon glyphicon-search"></i>
                                เทียบรายรับ-รายจ่าย</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li><a href="<?php echo Url::to(['receive/step1']); ?>"><i class="fa fa-circle text-green"></i> 
                            <span><i class="glyphicon glyphicon-search"></i>
                                จำนวนวันเฉลี่ยรับเข้าคลัง</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    
                </ul>
                <hr/>
                <li><a href="<?php echo Url::to(['receive/wherebill']); ?>">
                            <span><i class="glyphicon glyphicon-search"></i>
                                 เส้นทางบิล</span><small class="label pull-right bg-aqua"></small>
                        </a>
                    </li>
                    <li><a href="<?php echo Url::to(['chat/index']); ?>">
                    <i class="fa fa-comments-o"></i>                            
                            <span>ฝากข้อความ</span>
                        </a>
                    </li>
                    </ul>
            
    </section>

</aside>
