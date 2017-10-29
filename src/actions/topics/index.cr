class Topics::Index < BaseAction
  get "/" do
    render topics: TopicQuery.new.newest_first, vote_form: VoteForm.new
  end
end
