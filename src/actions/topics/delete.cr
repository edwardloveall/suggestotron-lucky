class Topics::Delete < BaseAction
  action do
    TopicQuery.new.find(id).delete
    redirect to: Topics::Index
  end
end
