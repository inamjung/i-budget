<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "items".
 *
 * @property integer $id
 * @property string $code
 * @property string $name
 * @property string $strenge
 * @property string $format
 * @property integer $type_id
 * @property integer $ed
 */
class Items extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'items';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['code'], 'required'],
            [['type_id', 'ed'], 'integer'],
            [['code'], 'string', 'max' => 10],
            [['name'], 'string', 'max' => 255],
            [['strenge', 'format'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'code' => 'รหัสรายการ',
            'name' => 'รายการ',
            'strenge' => 'ความแรง',
            'format' => 'รูปแบบ',
            'type_id' => 'หมวด',
            'ed' => 'ED/NED',
        ];
    }
    public function getItem2() // จากโมเดล Items ไปหา โมเดล ReceiptDetail
    {
        return $this->hasMany(ReceiptDetail::className(), ['item_id'=>'code']);
    }
}
