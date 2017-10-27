class Topics::IndexPage < BasePage
  needs topics : TopicQuery

  render do
    h1 "Topics"

    link "New Topic", to: Topics::New

    ul do
      @topics.each do |topic|
        li topic.title
      end
    end
  end
end
