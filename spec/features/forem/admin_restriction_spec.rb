require'spec_helper' 
require'war_engine/testing_support/factories/account_factory' 
require'war_engine/testing_support/authentication_helpers' 
feature "Forum scoping" do
	include WarEngine::TestingSupport::AuthenticationHelpers 
	let!(:account_a) { FactoryGirl.create(:account_with_schema) } 
	let!(:account_b) { FactoryGirl.create(:account_with_schema) } 
	before do
		Apartment::Database.switch(account_a.subdomain) 
		account_a.owner.forem_admin = true 
		account_a.owner.save
		Apartment::Database.reset
		account_b.users << account_a.owner 
	end
	scenario "is only the forum admin for one account" do 
		visit "http://#{account_a.subdomain}.example.com" 
		fill_in "Email", :with => account_a.owner.email 
		fill_in "Password", :with => "password" 
		click_button "Sign in"
		page.should have_content("Admin Area")
		visit "http://#{account_b.subdomain}.example.com" 
		page.should_not have_content("Please sign in.") 
		page.should_not have_content("Admin Area")
	end 
end