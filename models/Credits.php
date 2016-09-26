<?php

namespace app\models;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "credits".
 *
 * @property integer $id
 * @property integer $type_id
 * @property string $date_receive
 * @property integer $company_id
 * @property string $number_anumad
 * @property string $bill_no
 * @property string $invoice
 * @property string $amount
 * @property string $budget
 * @property string $date_instock
 * @property string $number_instock
 * @property integer $send_credit
 * @property integer $send_boss
 * @property string $number_pay
 * @property string $year
 * @property integer $user_id
 * @property string $send_credit_date
 * @property string $credit_confirm_date
 * @property integer $pay_confirm
 * @property string $pay_date
 * @property string $updatedate
 */
class Credits extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'credits';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type_id', 'company_id', 'send_credit', 'send_boss', 'user_id', 'pay_confirm','receive_id'], 'integer'],
            [['date_receive', 'date_instock', 'send_credit_date', 'credit_confirm_date', 'pay_date', 'updatedate','date_check','send_boss_date'], 'safe'],
            [['amount'], 'number'],
            [['number_anumad'], 'string', 'max' => 8],
            [['bill_no'], 'string', 'max' => 255],
            [['invoice', 'budget','bank'], 'string', 'max' => 100],
            [['number_instock'], 'string', 'max' => 10],
            [['number_pay','number_check'], 'string', 'max' => 20],
            [['year'], 'string', 'max' => 4],
            [['invoice'], 'unique','targetClass'=>'app\models\Credits','message'=>'ซ้ำ'],
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
            'date_receive' => 'รับจากขนส่ง',
            'company_id' => 'บริษัท',
            'number_anumad' => 'เลขที่อนุมัติ',
            'bill_no' => 'เลขที่ใบส่งของ',
            'invoice' => 'ตรวจสอบใบส่งของ',
            'amount' => 'มูลค่า',
            'budget' => 'เงินงบ',
            'date_instock' => 'วันที่รับเข้าคลัง',
            'number_instock' => 'เลขที่รับเข้าคลัง',
            'send_credit' => 'รายงานเจ้าหนี้',
            'send_boss' => 'เสนอ ผอก.',
            'number_pay' => 'เลขที่อนุมัติจ่าย',
            'year' => 'ปีงบประมาณ',
            'user_id' => 'User ID',
            'send_credit_date' => 'วันที่ส่งเจ้าหนี้',
            'credit_confirm_date' => 'วันที่รับรู้หนี้',
            'pay_confirm' => 'ชำระแล้ว',
            'pay_date' => 'วันที่ชำระ',
            'updatedate' => 'Updatedate',
            'date_check'=>'วันที่ออกเช็ค',
            'bank'=>'ธนาคาร',
            'number_check'=>'เลขที่เช็ค',
            'send_boss_date'=>'วันที่เสนอผอก.',
            'receive_id'=>'เลขที่'
        ];
    }
    public static function itemsAlias($key){
        $items = [
            'pay_confirm'=> [
                0 =>'ยังไม่ชำระ',
                1 => 'ชำระแล้ว'
            ]
        ];
        return ArrayHelper::getValue($items, $key,[]);
    }    
    
    public function getPay_confirm(){
        return self::itemsAlias('pay_confirm');
    }    
    
    
    public function getTypecredit(){ // จากโมเดล Credits ไปหา โมเดล Types
        return $this->hasOne(Types::className(), ['id'=>'type_id']);
    }
    public function getCompanycredit(){ // จากโมเดล Credits ไปหา โมเดล Companys
        return $this->hasOne(Companys::className(), ['id'=>'company_id']);
    }
    public function getRecivecredit(){ // // จากโมเดล Credits ไปหา โมเดล Receive
        return $this->hasOne(Receive::className(), ['invoice'=>'invoice']);
    }
     public function getReceipts(){  // // จากโมเดล Credits ไปหา โมเดล Receipt
        return $this->hasOne(Receipt::className(), ['id'=>'receive_id']);
    }
}
