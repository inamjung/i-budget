<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "years".
 *
 * @property integer $id
 * @property string $year
 * @property string $date_start
 * @property string $date_end
 */
class Years extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'years';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date_start', 'date_end'], 'safe'],
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
            'date_start' => 'ตั้งแต่วันที่',
            'date_end' => 'ถึงวันที่',
        ];
    }
}
