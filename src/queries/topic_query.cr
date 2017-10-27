class TopicQuery < Topic::BaseQuery
  def newest_first
    created_at.desc_order
  end
end
