# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

group :development do
  gem 'pry'
end

group :development, :test do
  gem 'byebug', '~> 11.1'
  gem 'database_cleaner-sequel', '~> 2.0'
  gem 'rspec', '~> 3.11'
  gem 'rubocop', '~> 1.36'
  gem 'rubocop-rspec', '~> 2.13'
  gem 'rubocop-sequel', '~> 0.3.4'
end

gem 'config', '~> 4.0'
gem 'i18n', '~> 1.12'
gem 'rake', '~> 13.0'

gem 'dry-initializer', '~> 3.1'
gem 'dry-validation', '~> 1.8'

gem 'jsonapi-serializer', '~> 2.2'
gem 'oj', '~> 3.13'

gem 'puma', '~> 5.6'
gem 'sinatra', '~> 3.0.2', require: 'sinatra/base'
gem 'sinatra-contrib', '~> 3.0.2'

gem 'activesupport', '~> 7.0', require: false
gem 'pg', '~> 1.4'
gem 'sequel', '~> 5.60'
gem 'sqlite3', '~> 1.5'
