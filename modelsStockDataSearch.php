<?php

namespace app;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\StockData;

/**
 * modelsStockDataSearch represents the model behind the search form about `app\models\StockData`.
 */
class modelsStockDataSearch extends StockData
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'stock_confirm', 'type_id', 'receive_head_id', 'company_id', 'send_credit', 'credit_confirm', 'user_id'], 'integer'],
            [['date_receive', 'bill_no', 'budget', 'number_anumad', 'date_instock', 'number_instock', 'createdate', 'updatedate'], 'safe'],
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
        $query = StockData::find();

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
            'stock_confirm' => $this->stock_confirm,
            'type_id' => $this->type_id,
            'receive_head_id' => $this->receive_head_id,
            'date_receive' => $this->date_receive,
            'company_id' => $this->company_id,
            'amount' => $this->amount,
            'date_instock' => $this->date_instock,
            'send_credit' => $this->send_credit,
            'credit_confirm' => $this->credit_confirm,
            'user_id' => $this->user_id,
            'createdate' => $this->createdate,
            'updatedate' => $this->updatedate,
        ]);

        $query->andFilterWhere(['like', 'bill_no', $this->bill_no])
            ->andFilterWhere(['like', 'budget', $this->budget])
            ->andFilterWhere(['like', 'number_anumad', $this->number_anumad])
            ->andFilterWhere(['like', 'number_instock', $this->number_instock]);

        return $dataProvider;
    }
}
