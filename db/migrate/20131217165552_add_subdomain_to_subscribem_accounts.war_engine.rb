# This migration comes from war_engine (originally 20131212160224)
class AddSubdomainToSubscribemAccounts < ActiveRecord::Migration
  def change
    add_column :war_engine_accounts, :subdomain, :string
    add_index :war_engine_accounts, :subdomain
  end
end
