<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "inven".
 *
 * @property integer $id
 * @property integer $department_id
 * @property string $inven_date
 * @property string $createdate
 * @property integer $user_id
 */
class Inven extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'inven';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['department_id', 'user_id'], 'integer'],
            [['inven_date', 'createdate'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'เลขที่จ่าย',
            'department_id' => 'หน่วยงาน',
            'inven_date' => 'วันที่จ่าย',
            'createdate' => 'วันที่บันทึก',
            'user_id' => 'ผู้บันทึก',
        ];
    }
}
