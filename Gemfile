source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(".ruby-version")

gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 5.6"
gem "rails", "~> 6.1.0"
gem "sass-rails", "~> 6.0"

gem "bootstrap", "~> 4.6"
gem "jquery-rails"
gem "turbolinks"

gem "caxlsx"
gem "caxlsx_rails"

gem "bootsnap", ">= 1.4.4", require: false

# TODO: pinned until upgrade to rails 7.1 fixes https://stackoverflow.com/questions/79360526/uninitialized-constant-activesupportloggerthreadsafelevellogger-nameerror
gem "concurrent-ruby", "1.3.4"

group :development, :test do
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "capybara"
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "standard", require: false
  gem "super_diff"
  gem "webdrivers"
end

group :development do
  gem "letter_opener"
  gem "listen", ">= 3.0.5"
  gem "spring"
  gem "spring-watcher-listen"
  gem "web-console", ">= 3.3.0"
end

group :production do
  gem "sentry-raven"
end
