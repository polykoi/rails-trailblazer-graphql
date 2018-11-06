source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.3'

# System
gem 'pg'
gem 'puma'
gem 'rails'
gem 'sidekiq'

# Trailblazer bundle
# gem 'dry-types'
gem 'dry-validation', '0.11.1'
gem 'trailblazer', '~> 2.1.0.rc1'
gem 'trailblazer-rails'
gem 'trailblazer-endpoint', github: 'trailblazer/trailblazer-endpoint', branch: 'rui'

# Authentication
gem 'bcrypt'
gem 'jwt_sessions'

# Decorators/View-Models for Rails Applications
gem 'draper'

# GraphQL serializer
gem 'graphql'

# Role management
# gem 'rolify'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'awesome_print'
  gem 'bullet'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers'

  # Code quality
  gem 'brakeman', require: false
  gem 'bundle-audit', require: false
  gem 'fasterer', require: false
  gem 'overcommit', require: false
  # gem 'rails_best_practices', require: false
  # gem 'reek', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  # gem 'rubycritic', require: false
  gem 'simplecov'
  gem 'simplecov-lcov'
  gem 'undercover'
end

group :development do
  gem 'letter_opener'
  gem 'letter_opener_web', github: 'fgrehm/letter_opener_web', ref: 'd6c6455' # branch with fixed sprockets dependency
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# group :test do
#   # API documentation
#   gem 'dox', require: false
# end
