class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :suggested_articles, :article_id, :integer

    add_index :suggested_articles, [:article_id]
  end

  def self.down
    remove_column :suggested_articles, :article_id

    remove_index :suggested_articles, :name => :index_suggested_articles_on_article_id rescue ActiveRecord::StatementInvalid
  end
end
