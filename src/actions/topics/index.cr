class Topics::Index < BaseAction
  get "/" do
    render topics: TopicQuery.new.newest_first
  end
end
