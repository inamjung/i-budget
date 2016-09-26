<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "disp".
 *
 * @property integer $id
 * @property integer $type_id
 * @property integer $department_id
 * @property string $amount
 * @property string $createdate
 * @property string $updatedate
 * @property integer $user_id
 * @property string $remark
 */
class Disp extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'disp';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type_id', 'department_id', 'user_id'], 'integer'],
            [['createdate', 'updatedate'], 'safe'],
            [['amount', 'remark'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'type_id' => 'หมวด',
            'department_id' => 'แผนก',
            'amount' => 'จำนวนเงิน',
            'createdate' => 'วันที่จ่าย',
            'updatedate' => 'Updatedate',
            'user_id' => 'ผู้บันทึก',
            'remark' => 'อื่นๆ',
        ];
    }
}
