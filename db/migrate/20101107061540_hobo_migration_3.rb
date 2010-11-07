class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :suggested_articles, :user_id, :integer

    add_index :suggested_articles, [:user_id]
  end

  def self.down
    remove_column :suggested_articles, :user_id

    remove_index :suggested_articles, :name => :index_suggested_articles_on_user_id rescue ActiveRecord::StatementInvalid
  end
end
