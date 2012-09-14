source 'https://rubygems.org'

gem 'rails', '3.2.7'
gem 'pg'
gem 'listen', '0.4.7' #included to fix bug in Guard
gem 'jquery-rails'
gem "pry"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'twitter-bootstrap-rails'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem "rspec-rails", "~> 2.0"
  gem 'jazz_hands'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
  gem 'guard-livereload'
end

group :test do
  gem 'guard-spork'
  gem "capybara"
  gem 'ffaker'
  gem "factory_girl_rails", "~> 3.4.0"
  gem "shoulda-matchers"
  gem "launchy"
  gem 'simplecov', :require => false
end

