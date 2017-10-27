class Topics::New < BaseAction
  action do
    render topic_form: TopicForm.new
  end
end
