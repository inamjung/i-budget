<?php
use yii\helpers\Html;
use yii\helpers\Url;
/* @var $this \yii\web\View */
/* @var $content string */
use dektrium\user\models\User;
use dektrium\user\models\Profile;
?>

<header class="main-header">

    <?= Html::a('<span class="logo-mini"><img style="height:40px; margin-top:12px;" src="./images/budget1.png"></span><span class="logo-lg">' . Yii::$app->name . '</span>', Yii::$app->homeUrl, ['class' => 'logo']) ?>

    <nav class="navbar navbar-static-top" role="navigation">

        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">

            <ul class="nav navbar-nav">

            

                <!-- Messages: style can be found in dropdown.less-->
                
                <!-- Tasks: style can be found in dropdown.less -->
                
                <!-- User Account: style can be found in dropdown.less -->

                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">           
                        <i class="glyphicon glyphicon-user"></i>                           

                        <span class="hidden-xs">
                            <?php echo Yii::$app->user->identity->username;?>
                        </span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <div> <?= Html::img('avatars/' . Yii::$app->user->identity->profile->avatar, 
                            ['class' => 'img-circle','width' => '120px;']) ?>
                            </div>
                            <p>
                                <?php echo Yii::$app->user->identity->username;?>
                            </p>

                        </li>
                        <!-- Menu Body -->
                        
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="<?php echo Url::to(['/user/settings/profile']); ?>" class="btn btn-default btn-flat">ข้อมูลส่วนตัว</a>
                            </div>
                            <div class="pull-right">
                                <?= Html::a(
                                    'ออกจากระบบ',
                                    ['/site/logout'],
                                    ['data-method' => 'post', 'class' => 'btn btn-default btn-flat']
                                ) ?>
                            </div>
                        </li>
                    </ul>
                </li>

                <!-- User Account: style can be found in dropdown.less -->
<!--               <li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li>-->
            </ul>
        </div>
    </nav>
</header>
