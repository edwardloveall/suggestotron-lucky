class Topics::Index < BrowserAction
  get "/" do
    render topics: TopicQuery.new.newest_first, vote_form: VoteForm.new
  end
end
