class Topics::Edit < BrowserAction
  action do
    topic = TopicQuery.new.find(id)
    render topic: topic, topic_form: TopicForm.new(topic)
  end
end
