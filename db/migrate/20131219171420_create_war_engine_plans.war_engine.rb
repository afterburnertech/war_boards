# This migration comes from war_engine (originally 20131219162823)
class CreateWarEnginePlans < ActiveRecord::Migration
  def change
    create_table :war_engine_plans do |t|
      t.string :name
      t.float :price
      t.string :braintree_id

      t.timestamps
    end
  end
end
