class CreateUnlocks < ActiveRecord::Migration
  def self.up
    create_table :unlocks do |t|
      t.integer :user_id
      t.integer :achievement_id

      t.timestamps
    end
  end

  def self.down
    drop_table :unlocks
  end
end
