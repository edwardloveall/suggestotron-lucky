class Topics::Create < BaseAction
  action do
    TopicForm.save params do |form, topic|
      if topic
        redirect to: Topics::Index
      else
        render NewPage, topic_form: form
      end
    end
  end
end
