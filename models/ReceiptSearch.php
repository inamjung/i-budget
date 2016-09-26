<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Receipt;

/**
 * ReceiptSearch represents the model behind the search form about `app\models\Receipt`.
 */
class ReceiptSearch extends Receipt
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'type_id', 'company_id', 'confirm', 'send_credit', 'credit_confirm', 'user_id'], 'integer'],
            [['date_receive', 'bill_no', 'invoice', 'budget', 'year', 'number_anumad', 'date_instock', 'number_instock', 'send_credit_date', 'credit_confirm_date', 'createdate', 'updatedate'], 'safe'],
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
        $query = Receipt::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'date_receive' => $this->date_receive,
            'type_id' => $this->type_id,
            'company_id' => $this->company_id,
            'amount' => $this->amount,
            'confirm' => $this->confirm,
            'date_instock' => $this->date_instock,
            'send_credit' => $this->send_credit,
            'send_credit_date' => $this->send_credit_date,
            'credit_confirm' => $this->credit_confirm,
            'credit_confirm_date' => $this->credit_confirm_date,
            'user_id' => $this->user_id,
            'createdate' => $this->createdate,
            'updatedate' => $this->updatedate,
        ]);

        $query->andFilterWhere(['like', 'bill_no', $this->bill_no])
            ->andFilterWhere(['like', 'invoice', $this->invoice])
            ->andFilterWhere(['like', 'budget', $this->budget])
            ->andFilterWhere(['like', 'year', $this->year])
            ->andFilterWhere(['like', 'number_anumad', $this->number_anumad])
            ->andFilterWhere(['like', 'number_instock', $this->number_instock]);

        return $dataProvider;
    }
}
