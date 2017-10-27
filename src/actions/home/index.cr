class Home::Index < BaseAction
  get "/" do
    redirect to: Topics::Index
  end
end
