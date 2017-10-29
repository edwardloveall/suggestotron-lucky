class Topic < BaseModel
  table :topics do
    has_many votes, Vote

    field title : String
    field description : String?
  end
end
