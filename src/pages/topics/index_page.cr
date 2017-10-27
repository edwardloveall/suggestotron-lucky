class Topics::IndexPage < BasePage
  needs topics : TopicQuery

  render do
    h1 "Topics"

    ul do
      @topics.each do |topic|
        li topic.title
      end
    end
  end
end
