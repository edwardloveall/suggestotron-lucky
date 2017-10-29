class Topics::Votes::Create < BaseAction
  nested_action do
    VoteForm.new(topic_id: params.get!(:topic_id)).save
    redirect to: Topics::Index
  end
end
