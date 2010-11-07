class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :suggested_articles do |t|
      t.string   :rating
      t.float    :probability_of_liking
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :suggested_articles
  end
end
