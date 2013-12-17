# This migration comes from war_engine (originally 20131213162019)
class CreateWarEngineMembers < ActiveRecord::Migration
  def change
    create_table :war_engine_members do |t|
      t.integer :account_id
      t.integer :user_id

      t.timestamps
    end
  end
end
