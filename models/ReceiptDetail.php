<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "receivedetail".
 *
 * @property integer $id
 * @property integer $receive_id
 * @property integer $item_id
 * @property integer $qty
 * @property string $pack
 * @property string $price
 * @property string $unit
 */
class ReceiptDetail extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    const UPDATE_TYPE_CREATE = 'create';
    const UPDATE_TYPE_UPDATE = 'update';
    const UPDATE_TYPE_DELETE = 'delete';

    const SCENARIO_BATCH_UPDATE = 'batchUpdate';


    private $_updateType;

    public function getUpdateType()
    {
        if (empty($this->_updateType)) {
            if ($this->isNewRecord) {
                $this->_updateType = self::UPDATE_TYPE_CREATE;
            } else {
                $this->_updateType = self::UPDATE_TYPE_UPDATE;
            }
        }

        return $this->_updateType;
    }

    public function setUpdateType($value)
    {
        $this->_updateType = $value;
    }
    
    public static function tableName()
    {
        return 'receivedetail';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['updateType', 'required', 'on' => self::SCENARIO_BATCH_UPDATE],
            ['updateType',
                'in',
                'range' => [self::UPDATE_TYPE_CREATE, self::UPDATE_TYPE_UPDATE, self::UPDATE_TYPE_DELETE],
                'on' => self::SCENARIO_BATCH_UPDATE]
            ,
           // [['receive_id'], 'required'],
            [[ 'item_id', 'qty'], 'integer'],
            [['price'], 'number'],
            [['pack', 'unit'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'receive_id' => 'เลขที่',
            'item_id' => 'รายการ',
            'qty' => 'จำนวน',
            'pack' => 'ขนาดบรรจุ',
            'price' => 'ราคา/หน่วย',
            'unit' => 'หน่วยนับ',
        ];
    }
    public function getReceipt() // จากโมเดล ReceiptDetail ไปหา โมเดล Receipt
    {
        return $this->hasOne(Receipt::className(), ['id' => 'receive_id']);
    }    
    public function getItem() // จากโมเดล ReceiptDetail ไปหา โมเดล Items
    {
        return $this->hasOne(Items::className(), ['id' => 'item_id']);
    }
}
