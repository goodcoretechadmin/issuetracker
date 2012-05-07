# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_IssueTracker_session',
  :secret      => '9399db8d8e90382d1bf1009d8b70f16f99c9b8b74b6fb93c79fc1c9c7e0e3f5fae4b33616732770334b1faa17b603857a13431cd52c359f2e08d2bef86a0af16'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
