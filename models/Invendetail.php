<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "invendetail".
 *
 * @property integer $id
 * @property integer $inven_id
 * @property integer $item_id
 * @property integer $qty
 */
class Invendetail extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'invendetail';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['inven_id', 'item_id', 'qty'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'inven_id' => 'เลขที่จ่าย',
            'item_id' => 'รายการ',
            'qty' => 'จำนวนจ่าย',
        ];
    }
}
