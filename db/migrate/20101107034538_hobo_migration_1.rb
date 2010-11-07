class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string   :title
      t.string   :url
      t.string   :content
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :articles
  end
end
