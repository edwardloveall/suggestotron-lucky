class Topics::Show < BrowserAction
  action do
    render topic: TopicQuery.new.find(id)
  end
end
