<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pbudgets".
 *
 * @property integer $id
 * @property string $name
 */
class Pbudgets extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pbudgets';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'ประเภทงบ',
        ];
    }
}
