<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "companys".
 *
 * @property integer $id
 * @property string $code
 * @property string $name
 * @property string $tel
 * @property string $adderss
 */
class Companys extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'companys';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            
            [['code', 'name', 'tel', 'adderss'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'code' => 'รหัส',
            'name' => 'บริษัท',
            'tel' => 'โทรศัพท์',
            'adderss' => 'ที่อยู่',
        ];
    }
    public function getReceivecompany(){
        return $this->hasMany(Receive::className(), ['company_id','id']);
    }
}
