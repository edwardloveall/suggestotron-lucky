class Topics::Votes::Create < BaseAction
  nested_action do
    VoteForm.save params do |form, vote|
      if vote
        redirect to: Topics::Index
      else
        redirect to: Topics::Index
      end
    end
  end
end
