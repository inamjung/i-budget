<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Credits;

/**
 * CreditsSearch represents the model behind the search form about `app\models\Credits`.
 */
class CreditsSearch extends Credits
{
    /**
     * @inheritdoc
     */
    public $date1;
    public $date2;
    
    public function rules()
    {
        return [
            [['id', 'type_id', 'company_id', 'send_credit', 'send_boss', 'user_id','receive_id'], 'integer'],
            [['date_receive','date1','date2','pay_confirm','number_anumad', 'bill_no', 'invoice', 'budget', 'date_instock', 'number_instock', 'number_pay', 'year', 'send_credit_date', 'credit_confirm_date', 'pay_date', 'updatedate','date_check','bank','number_check','send_boss_date'], 'safe'],
            [['amount'], 'number'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Credits::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort'=>[
                'defaultOrder'=>[
                    'id'=>'sort_desc'
                ]
            ]
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            //'type_id' => $this->type_id,
            'receive_id' => $this->receive_id,
            'date_receive' => $this->date_receive,
            //'company_id' => $this->company_id,
            'amount' => $this->amount,
            'date_instock' => $this->date_instock,
            'send_credit' => $this->send_credit,
            'send_boss' => $this->send_boss,
            'user_id' => $this->user_id,
            'send_credit_date' => $this->send_credit_date,
            //'credit_confirm_date' => $this->credit_confirm_date,
            //'pay_confirm' => $this->pay_confirm,
            'pay_date' => $this->pay_date,
            'date_check' => $this->date_check,
            'bank' => $this->bank,
            'send_boss_date' => $this->send_boss_date,
            'updatedate' => $this->updatedate,
        ]);

        $query->andFilterWhere(['like', 'number_anumad', $this->number_anumad])
            ->andFilterWhere(['in', 'bill_no', $this->bill_no])
            ->andFilterWhere(['like', 'invoice', $this->invoice])
            ->andFilterWhere(['like', 'number_check', $this->number_check])    
            ->andFilterWhere(['in', 'budget', $this->budget])
            ->andFilterWhere(['like', 'number_instock', $this->number_instock])
            ->andFilterWhere(['like', 'number_pay', $this->number_pay])
            ->andFilterWhere(['>=', 'credit_confirm_date', $this->date1]) 
            ->andFilterWhere(['<=', 'credit_confirm_date', $this->date2])  
            ->andFilterWhere(['in', 'pay_confirm', $this->pay_confirm]) 
            ->andFilterWhere(['in', 'company_id', $this->company_id])     
            ->andFilterWhere(['in', 'type_id', $this->type_id])     
            ->andFilterWhere(['like', 'year', $this->year]);

        return $dataProvider;
    }
}
