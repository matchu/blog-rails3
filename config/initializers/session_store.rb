# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_blog-rails3_session',
  :secret => 'ee34f708af13e7d631e3e00e302bd1944abd8e3d9083f6cbb70fbafd690d921c63aee73f36e7af2bc021c2723aef5e1e2e7f7d55f597457624230f4305ad5af4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
