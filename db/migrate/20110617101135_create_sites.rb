class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.integer :account_id
      t.string :name
      t.string :url
      t.string :api_token

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
