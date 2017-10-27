class Topics::Index < BaseAction
  action do
    render topics: TopicQuery.new.newest_first
  end
end
