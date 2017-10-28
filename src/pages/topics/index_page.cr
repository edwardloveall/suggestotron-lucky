class Topics::IndexPage < BasePage
  needs topics : TopicQuery

  render do
    h1 "Topics"

    link "New Topic", to: Topics::New

    ul do
      @topics.each do |topic|
        li do
          link topic.title, to: Topics::Show.route(topic)
          link "Edit", to: Topics::Edit.route(topic)
          link "Delete", to: Topics::Delete.route(topic)
        end
      end
    end
  end
end
