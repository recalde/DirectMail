# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_DirectMail_session',
  :secret      => '8d7c7b5227b7bab9895605a79b8a769afd143c954c61b1eac67875804b396f4f0b7fd827a6336daec019115a9c9e914d623a152a5cc3b996c6591c2b3bf21d60'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
