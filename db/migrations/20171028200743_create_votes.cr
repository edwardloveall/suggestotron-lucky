class CreateVotes::V20171028200743 < LuckyMigrator::Migration::V1
  def migrate
    create :votes do
     add topic_id : Int32
    end

    execute "CREATE INDEX votes_topic_id_index ON votes (topic_id);"
  end

  def rollback
    drop :votes
  end
end
