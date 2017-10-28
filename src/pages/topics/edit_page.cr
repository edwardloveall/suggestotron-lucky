class Topics::EditPage < BasePage
  needs topic : Topic
  needs topic_form : TopicForm

  render do
    h1 "Edit Topic"
    render_topic_form(@topic, @topic_form)
  end

  private def render_topic_form(topic, form)
    form_for Topics::Update.route(topic) do
      label_for form.title
      text_input form.title, autofocus: "true"
      errors_for form.title

      label_for form.description
      textarea form.description
      errors_for form.description

      input type: "submit", value: "Update Topic"
    end
  end
end
