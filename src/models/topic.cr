class Topic < BaseModel
  table :topics do
    field title : String
    field description : String?
  end
end
