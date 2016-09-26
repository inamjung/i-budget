<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "commitees".
 *
 * @property integer $id
 * @property string $committee
 * @property string $position
 * @property integer $depart_id
 */
class Commitees extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'commitees';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['depart_id'], 'integer'],
            [['committee', 'position'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'committee' => 'กรรมการ',
            'position' => 'ตำแหน่ง',
            'depart_id' => 'หน่วยงาน',
        ];
    }
}
