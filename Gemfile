source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


gem 'pry', git: 'https://github.com/pry/pry.git', ref: '272b3290b5250d28ee82a5ff65aa3b29b825e37b'

ruby '2.6.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.4'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# DWH gem
gem 'pg', '~> 0.21.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'actionpack-cloudflare'
gem 'excon'

#DROPBOX API
gem 'dropbox_api'

#BOOTSTRAP
gem 'bootstrap', '~> 4.4.1'

# USER RELATED
gem 'devise'
gem 'simple_form'
# FOR NOTIFICATIONS
gem 'toastr-rails', '~> 1.0'
gem 'jquery-rails'
# ADMIN SECTION
gem 'rails_admin', '~> 2.0'
gem 'rails_admin_rollincode', '~> 1.0'
gem 'rails_admin_material'
gem 'chartkick', '~> 3.4', '>= 3.4.2'
gem 'groupdate', '~> 5.2', '>= 5.2.1'
# PERMISSIONS
gem 'cancancan', '~> 3.1'
# FAKE DATA
gem 'addressy', '~> 0.0.2'
gem 'faker', '~> 2.14'
# Store API keys & other secrets in ENV variables
gem 'figaro'
# HTTP client
#gem 'excon', '~> 0.78.0'
# gem to convert addresses into lat/long
gem 'geocoder', '~> 1.3', '>= 1.3.7'
# Watson API client
gem 'ibm_watson', '~> 1.6'

# Suppressing RangeError during type casting
gem 'activerecord-suppress_range_error', '~> 0.1.1'

gem 'database_cleaner-active_record'

gem 'client_side_validations'
gem 'client_side_validations-simple_form'

gem 'carrierwave', '~> 2.0'

# Recaptcha
gem 'new_google_recaptcha'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Provides a better error page for Rails and other Rack apps. Includes source code inspection, a live REPL and local/instance variable inspection for all stack frames.
  gem 'better_errors', '~> 2.8', '>= 2.8.3'

  # Retrieve the binding of a method's caller. Can also retrieve bindings even further up the stack.
  gem 'binding_of_caller', '~> 0.8.0'

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
# CAPISTRANO
  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-bundler', '>= 1.1.0'
  gem 'rvm1-capistrano3', require: false
  gem 'capistrano3-puma'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  # or :staging or :beta or whatever environments you are using cloudflare in.
  # you probably don't want this for :test or :development
end

#twilio gem
gem "twilio-ruby"

#sendgrid gem
gem "sendgrid-ruby"

gem "zendesk_api"

#Slack API
gem "slack-notifier"

gem 'formtastic', '~> 3.0'

gem 'ed25519'
gem 'bcrypt_pbkdf'

# Run against the latest stable release
group :development, :test do
  gem 'rspec-rails', '~> 4.0.1'
end

gem 'owlcarousel-rails'
