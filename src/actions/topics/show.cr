class Topics::Show < BaseAction
  action do
    render topic: TopicQuery.new.find(id)
  end
end
