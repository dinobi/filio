source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.2.0", ">= 5.2.0"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 3.7"
# For env variables
gem "figaro"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use haml
gem "haml-rails"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Support for CORS
gem "rack-cors", { require: "rack/cors" }
# Rate limit
gem "rack-attack"
# Sanitize UTF-8
gem "rack-utf8_sanitizer"
# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"
# Use ActiveModel has_secure_password
gem "bcrypt", "~> 3.1.7"

# sftp
gem "gpgme", "~> 2.0", ">= 2.0.13"
gem "net-sftp"

# File sharing service
gem "aws-sdk-s3", require: false
gem "mini_magick", "~> 4.8"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry"
  gem "pry-rails"
  gem "pry-doc"
  gem "pry-byebug"
  gem "rubocop", require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "chromedriver-helper"
  gem 'geckodriver-helper', '~> 0.23.0'
  gem "codeclimate-test-reporter", "~> 1.0.0"
  gem "database_cleaner"
  gem "rails-controller-testing"
  gem "rspec-rails", "~> 3.5"
  gem "selenium-webdriver", "~> 3.141.0"
  gem "should_not"
  gem "shoulda-matchers", "~> 3.1"
  gem "capybara", "~> 2.13"
  gem "simplecov"
  gem "coveralls", require: false
  gem "factory_bot_rails"
  gem "faker"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
