# This migration comes from war_engine (originally 20131211195735)
class AddOwnerIdToWarEngineAccounts < ActiveRecord::Migration
  def change
    add_column :war_engine_accounts, :owner_id, :integer
  end
end
