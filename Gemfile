source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.1.3'
# Intelligent search made easy with Rails and Elasticsearch
gem 'searchkick', '~> 4.1.0'
# Simple, efficient background processing for Ruby.
gem 'sidekiq', '~> 6.0.0'
# Run your data migration tasks in a db:migrate-like manner
gem 'rails-data-migrations', '~> 1.2.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', '~> 1.0.3'
# Autoload dotenv in Rails.
gem 'dotenv-rails', '~> 2.7.5'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # rspec-rails is a testing framework for Rails 3+.
  gem 'rspec-rails', '~> 3.8.2'
  # factory_bot_rails provides integration between factory_bot and rails 4.2 or newer
  gem 'factory_bot_rails', '~> 5.1.0'
  # Ffaker generates dummy data.
  gem 'ffaker', '~> 2.12.0'
end

group :development do
  # The Listen gem listens to file modifications and notifies you about the changes. Works everywhere!
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  #Makes spring watch files using the listen gem.
  gem 'spring-watcher-listen', '~> 2.0.0'
  # RubyCritic is a tool that wraps around various static analysis gems to provide a quality report of your Ruby code.
  gem 'rubycritic', '~> 4.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
