source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version')

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma'
gem 'rails', '~> 5.2.0'
gem 'sass-rails', '>= 6.0.0.beta2'
gem 'uglifier', '>= 1.3.0'

gem 'bootstrap', '>= 4.3.1'
gem 'coffee-rails'
gem 'jbuilder'
gem 'jquery-rails'
gem 'turbolinks'

gem 'axlsx', git: 'https://github.com/randym/axlsx.git', ref: 'c8ac844'
gem 'axlsx_rails'
gem 'rubyzip', '>= 1.2.1'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
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
