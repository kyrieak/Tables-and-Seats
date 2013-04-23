source "https://rubygems.org"

gem "rails", "3.2.11"

# Bundle edge Rails instead:
# gem "rails", :git => "git://github.com/rails/rails.git"

gem "pg"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem "sass-rails",   "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "bootstrap-sass", "~> 2.2.2.0"
  gem "bourbon"

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem "therubyracer", :platforms => :ruby

  gem "uglifier", ">= 1.0.3"
end

gem "jquery-rails"

# To use ActiveModel has_secure_password
# gem "bcrypt-ruby", "~> 3.0.0"

# To use Jbuilder templates for JSON
# gem "jbuilder"

# Use unicorn as the app server
# gem "unicorn"

# Deploy with Capistrano
# gem "capistrano"

# To use debugger
# gem "debugger"

gem "devise"
gem "will_paginate"
gem "cancan"
gem "haml-rails"
gem "dynamic_form"
gem "active_hash"
gem "simplecov", :require => false, :group => :test
gem "immigrant"
gem "slim-rails"
gem "bootstrap-datepicker-rails"
gem "ember-rails"
gem "flutie"
gem 'simple_form'
gem 'jquery-ui-sass-rails'

group :development, :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "zeus"
  gem "immigrant"
  gem "faker"
  gem 'konacha'
  gem 'ember-konacha-rails', github: 'kristianmandrup/ember-konacha-rails'
  gem 'poltergeist'
end

group :development do
  gem "guard"
  gem "rb-inotify", :require => false
  gem "rb-fsevent", :require => false
  gem "rb-fchange", :require => false
  gem "guard-rspec"
  gem "guard-livereload"
  gem "database_cleaner"
  gem "rails-erd"
end

group :test do
  gem "capybara"
  gem "rails3_pg_deferred_constraints"
end

group :code_quality do
  gem "cane"
  gem "flog"
  gem "rails_best_practices"
  gem "bullet"
end
