source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem "war_engine", :path => "../war_engine"
gem "forem", :github => "radar/forem", :branch => "rails4"
gem "forem-bootstrap", :github => "radar/forem-bootstrap", :branch => "master"

# Pagination gem
gem "kaminari", "0.14.1"

# Permalink plugin
gem 'friendly_id', github: "FriendlyId/friendly_id"

# Authorization gem that restricts what resources a given use is allowed to access
gem 'cancan', git: "https://github.com/nukturnal/cancan.git"

group :development, :test do 
	gem 'rspec-rails', '2.14.0' 
	gem 'capybara', '2.1.0'
	gem 'factory_girl', '4.2.0'
	gem 'database_cleaner', '1.0.1'
end


#cookie store was growing over 4kb
gem 'activerecord-session_store', github: 'rails/activerecord-session_store'
