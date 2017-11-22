class Topics::NewPage < MainLayout
  needs topic_form : TopicForm

  def inner
    h1 "Create a new Topic"
    render_topic_form(@topic_form)
  end

  private def render_topic_form(form)
    form_for Topics::Create do
      label_for form.title
      text_input form.title, autofocus: "true"
      errors_for form.title

      label_for form.description
      textarea form.description
      errors_for form.description

      input type: "submit", value: "Create Topic"
    end
  end
end
