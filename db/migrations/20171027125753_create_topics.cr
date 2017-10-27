class CreateTopics::V20171027125753 < LuckyMigrator::Migration::V1
  def migrate
    create :topics do
      add title : String
      add description : String?
    end
  end

  def rollback
    drop :topics
  end
end
