class Vote < BaseModel
  table :votes do
    belongs_to topic : Topic
  end
end
