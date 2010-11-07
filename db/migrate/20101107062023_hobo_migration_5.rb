class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :suggested_articles, :viewed, :boolean
  end

  def self.down
    remove_column :suggested_articles, :viewed
  end
end
