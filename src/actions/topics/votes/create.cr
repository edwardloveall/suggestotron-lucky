class Topics::Votes::Create < BrowserAction
  nested_action do
    VoteForm.new(topic_id: topic_id).save
    redirect to: Topics::Index
  end
end
