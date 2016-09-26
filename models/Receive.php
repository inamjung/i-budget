<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "receive".
 *
 * @property integer $id
 * @property string $date_receive
 * @property integer $type_id
 * @property string $bill_no
 * @property integer $company_id
 * @property string $invoice
 * @property string $amount
 * @property integer $confirm
 * @property string $budget
 * @property string $year
 * @property string $number_anumad
 * @property string $date_instock
 * @property string $number_instock
 * @property integer $send_credit
 * @property integer $credit_confirm
 * @property integer $user_id
 * @property string $createdate
 * @property string $updatedate
 */
class Receive extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'receive';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date_receive', 'date_instock', 'createdate', 'updatedate','send_credit_date','credit_confirm_date'], 'safe'],
            [['type_id', 'company_id', 'confirm', 'send_credit', 'credit_confirm', 'user_id'], 'integer'],
            [['amount'], 'number'],
            [['bill_no'], 'string', 'max' => 255],
            [['invoice', 'budget'], 'string', 'max' => 100],
            [['year'], 'string', 'max' => 4],
            [['number_anumad'], 'string', 'max' => 8],
            [['number_instock'], 'string', 'max' => 10],
            [['invoice'], 'unique','targetClass'=>'app\models\Receive','message'=>'ซ้ำ'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date_receive' => 'วันที่ตรวจรับ',
            'type_id' => 'หมวด',
            'bill_no' => 'เลขที่ใบส่งของ',
            'company_id' => 'บริษัท',
            'invoice' => 'ตรวจสอบใบส่งของ',
            'amount' => 'มูลค่า',
            'confirm' => 'จนท.พัสดุรับ',
            'budget' => 'เงินงบ',
            'year' => 'ปีงบประมาณ',
            'number_anumad' => 'เลขที่อนุมัติ',
            'date_instock' => 'วันที่รับเข้าคลัง',
            'number_instock' => 'เลขที่รับเข้าคลัง',
            'send_credit' => 'รายงานเจ้าหนี้',
            'credit_confirm' => 'จนท.การเงิน',
            'user_id' => 'User ID',
            'createdate' => 'วันที่บันทึก',
            'updatedate' => 'Updatedate',
            'credit_confirm_date'=>'วันที่รับรู้หนี้',
            'send_credit_date'=>'วันที่ส่งเจ้าหนี้'
        ];
    }
    
    public function getReceivedetails(){ // โมเดล Receive ไปหา โมเดล Receivedetail
        return $this->hasMany(Receivedetail::className(), ['receive_id'=>'id']);
    }
    public function getCompany(){ // โมเดล Receive ไปหา โมเดล Companys
        return $this->hasOne(Companys::className(), ['id'=>'company_id']);
    }
    public function getType(){ // โมเดล Receive ไปหา โมเดล Types
        return $this->hasOne(Types::className(), ['id'=>'type_id']);
    }
}
