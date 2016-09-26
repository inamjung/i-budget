<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "budgets".
 *
 * @property integer $id
 * @property string $year
 * @property string $money
 * @property integer $type_id
 */
class Budgets extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'budgets';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['money'], 'number'],
            [['type_id'], 'integer'],
            [['year'], 'string', 'max' => 4]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'year' => 'ปีงบประมาณ',
            'money' => 'วงเงิน',
            'type_id' => 'หมวด',
        ];
    }
   
    public function getType4(){
        return $this->hasOne(Types::className(), ['id'=>'type_id']);
    }
}
