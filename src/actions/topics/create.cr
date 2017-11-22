class Topics::Create < BrowserAction
  action do
    TopicForm.create params do |form, topic|
      if topic
        redirect to: Topics::Index
      else
        render NewPage, topic_form: form
      end
    end
  end
end
