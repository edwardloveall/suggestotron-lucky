class Topics::IndexPage < BasePage
  needs topics : TopicQuery
  needs vote_form : VoteForm

  render do
    h1 "Topics"

    link "New Topic", to: Topics::New

    ul do
      @topics.each do |topic|
        li do
          text topic.votes.size.to_s
          link topic.title, to: Topics::Show.route(topic)
          link "Edit", to: Topics::Edit.route(topic)
          link "Delete", to: Topics::Delete.route(topic)
          link "+1", to: Topics::Votes::Create.route(topic_id: topic)
        end
      end
    end
  end
end
