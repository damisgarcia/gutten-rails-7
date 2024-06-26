# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.7", ">= 7.0.7.2"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use the Devise for Authentication feature [https://github.com/heartcombo/devise]
gem "devise", "~> 4.9", ">= 4.9.2"


# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"

# Think of ViewComponents as an evolution of the presenter pattern, inspired by React.
# https://viewcomponent.org/
gem "view_component"

# Use simple form for Rails form manage [https://github.com/heartcombo/simple_form]
gem "simple_form", "~> 5.1.0"

# Use Will Paginate for pagination in consult ActiveRecord [https://github.com/mislav/will_paginate]
gem "will_paginate", "~> 4.0"

# User for simples search in ActiveRecord
gem "ransack", "~> 3.2.1" # search forms

gem "enum_help", "~> 0.0.17" # model enum to view

group :development, :test do
  # https://www.rubydoc.info/gems/factory_bot/file/GETTING_STARTED.md
  gem "factory_bot_rails"
  # https://github.com/faker-ruby/faker
  gem "faker", require: false
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri mingw x64_mingw]

  # See https://www.rubydoc.info/gems/annotate_models/0.0.4
  gem "annotate", "~> 3.2"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # gem 'rubocop'
  gem "rubocop-rails", require: false
  gem "rubocop-performance", require: false

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "ruby-lsp-rails"

  # https://github.com/threedaymonk/htmlbeautifier
  gem "htmlbeautifier"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "tailwindcss-rails", "~> 2.0"
