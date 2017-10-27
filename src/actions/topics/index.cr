class Topics::Index < BaseAction
  action do
    render topics: TopicQuery.new
  end
end
