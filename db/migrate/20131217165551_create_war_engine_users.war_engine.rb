# This migration comes from war_engine (originally 20131211195950)
class CreateWarEngineUsers < ActiveRecord::Migration
  def change
    create_table :war_engine_users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
