# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test1_session',
  :secret      => '8f110f20edeaf4ed4c67a5e9e776b023e2ad5217e06912f086d6c5ebbd591200aa2067428b4baf3efd8d1aa4b85fb310926af5ace32d9e7fee45283d39e4b428'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
