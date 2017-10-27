class Topics::IndexPage < BasePage
  needs topics : TopicQuery

  render do
    h1 "Topics"

    link "New Topic", to: Topics::New

    ul do
      @topics.each do |topic|
        li do
          text topic.title
          link "Delete", to: Topics::Delete.route(topic)
        end
      end
    end
  end
end
