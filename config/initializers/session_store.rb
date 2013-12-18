# Be sure to restart your server when you modify this file.

#WarBoards::Application.config.session_store :cookie_store, key: '_war_boards_session'
#WarBoards::Application.config.session_store :cache_store, key: '_war_boards_session'

#WarBoards::Application.config.session_store :active_record_store

# We’ve added the domain option here which will scope the 
# session to the domain-level, rather than the subdomain level. 
if Rails.env.test? WarBoards::Application.config.session_store :cache_store,
    key: '_war_boards_session',
	domain: 'example.com' 
else
  WarBoards::Application.config.session_store :cookie_store,
    key: '_war_boards_session',
    domain: 'foremapp.com'
end

