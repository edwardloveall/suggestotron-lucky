class VoteForm < Vote::BaseForm
  def call
    topic_id.value = params.get!(:topic_id).to_i
  end
end
