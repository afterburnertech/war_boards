# Be sure to restart your server when you modify this file.

#WarBoards::Application.config.session_store :cookie_store, key: '_war_boards_session'
WarBoards::Application.config.session_store :cache_store, key: '_war_boards_session'

#WarBoards::Application.config.session_store :active_record_store

