class Topics::Update < BrowserAction
  action do
    topic = TopicQuery.new.find(id)
    TopicForm.update topic, with: params do |form, topic|
      if topic
        redirect to: Topics::Show.route(topic)
      else
        render EditPage, topic: topic, topic_form: form
      end
    end
  end
end
