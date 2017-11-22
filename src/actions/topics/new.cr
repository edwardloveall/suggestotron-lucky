class Topics::New < BrowserAction
  action do
    render topic_form: TopicForm.new
  end
end
