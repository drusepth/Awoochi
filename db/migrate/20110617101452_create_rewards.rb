class CreateRewards < ActiveRecord::Migration
  def self.up
    create_table :rewards do |t|
      t.integer :achievement_id
      t.string :type
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :rewards
  end
end
