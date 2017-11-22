class Topics::Delete < BrowserAction
  action do
    TopicQuery.new.find(id).delete
    redirect to: Topics::Index
  end
end
