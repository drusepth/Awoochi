# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Awoochi_session',
  :secret      => 'cffe324d64c0eb8306f43e4c4ef26093ed898912c2e82a3aa6af9a496b87106638f97bcfcaf5bf6722cda3641185bee6a10bf0b594983a0772392340c22c5d7a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
