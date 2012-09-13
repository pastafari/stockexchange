source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'jquery-rails'
gem "thin", ">= 1.4.1"
gem "haml", ">= 3.1.7"
gem 'bcrypt-ruby'
gem 'simple_form'

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "twitter-bootstrap-rails", ">= 2.1.3"
  gem "therubyracer", ">= 0.10.2"
end

group :development do
  gem 'sqlite3'
  gem "heroku"
  gem "haml-rails", ">= 0.3.5"
  gem "hpricot", ">= 0.8.6"
  gem "ruby_parser", ">= 2.3.1"
  gem "hub", ">= 1.10.2", :require => nil
end

group :test do
  gem "capybara", ">= 1.1.2"
  gem "cucumber-rails", ">= 1.3.0", :require => false
  gem "database_cleaner", ">= 0.8.0"
  gem "launchy", ">= 2.1.2"
  gem "pry"
end

group :development, :test do
  gem "rspec-rails", ">= 2.11.0"
  gem "shoulda-matchers"
  gem "factory_girl_rails", ">= 4.0.0"
end

group :production do
  gem 'pg'
end