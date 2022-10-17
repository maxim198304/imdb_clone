source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby "3.1.1"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
# Use Postgres as the database for Active Record
gem 'pg'
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'activeadmin', '~> 2.13', '>= 2.13.1'
gem 'kaminari'



group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'main'
end

group :development do
  gem "web-console"

end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem 'database_cleaner-active_record', '~> 2.0', '>= 2.0.1'
end
