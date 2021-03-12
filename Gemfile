source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version')

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma'
gem 'rails', '~> 6.1.0'
gem 'sass-rails', '>= 6.0.0.beta2'

gem 'bootstrap', '>= 4.3.1'
gem 'jquery-rails'
gem 'turbolinks'

gem 'caxlsx'
gem 'caxlsx_rails'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webdrivers'
end

group :development do
  gem 'listen', '>= 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'sentry-raven'
end
