class Topics::ShowPage < BasePage
  needs topic : Topic

  render do
    p do
      strong "Title: "
      text @topic.title
    end
    if description = @topic.description
      p do
        strong "Description: "
        text description
      end
    end
    link "Edit", to: Topics::Edit.route(@topic)
    text " | "
    link "Back", to: Topics::Index
  end
end
