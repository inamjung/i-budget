<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Receivedetail;

/**
 * ReceivedetailSearch represents the model behind the search form about `app\models\Receivedetail`.
 */
class ReceivedetailSearch extends Receivedetail
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'receive_id', 'item_id', 'qty'], 'integer'],
            [['pack', 'unit'], 'safe'],
            [['price'], 'number'],
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
        $query = Receivedetail::find();

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
            'receive_id' => $this->receive_id,
            'item_id' => $this->item_id,
            'qty' => $this->qty,
            'price' => $this->price,
        ]);

        $query->andFilterWhere(['like', 'pack', $this->pack])
            ->andFilterWhere(['like', 'unit', $this->unit]);

        return $dataProvider;
    }
}
