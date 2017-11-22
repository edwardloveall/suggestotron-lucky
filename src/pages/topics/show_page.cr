class Topics::ShowPage < MainLayout
  needs topic : Topic

  def inner
    para do
      strong "Title: "
      text @topic.title
    end
    if description = @topic.description
      para do
        strong "Description: "
        text description
      end
    end
    link "Edit", to: Topics::Edit.route(@topic)
    text " | "
    link "Back", to: Topics::Index
  end
end
