source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.1"

gem "bootsnap", ">= 1.1.0", require: false
gem "bcrypt", ">=3.1.11"
gem "bootstrap-will_paginate"
gem "config"
gem "bootstrap-sass"
gem "coffee-rails"
gem "config"
gem "cancancan"
gem "jbuilder"
gem "puma"
gem "rails"
gem "rails-controller-testing"
gem "rails-i18n"
gem "ransack"
gem "sass-rails"
gem "jbuilder"
gem "jquery-rails"
gem "mysql2", "~> 0.5.2"
gem "sidekiq"
gem "delayed_job"
gem "devise"
gem "daemons"
gem "delayed_job_active_record"
gem "turbolinks"
gem "uglifier"
gem "rails-controller-testing"
gem "rspec-rails"
gem "faker", "1.7.3"
gem "toastr-rails"
gem "will_paginate"
gem "carrierwave"
gem "mini_magick",  ">=4.7.0"
gem "figaro"

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem "rubocop", "~> 0.54.0", require: false
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "sqlite3"
  gem 'factory_girl_rails'
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem 'rspec-rails'
  # gem "spring"
  # gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
  gem 'shoulda-matchers', '~> 3.0', require: false
  gem 'database_cleaner', '~> 1.5'
end

group :production do
  gem "rails_12factor", "0.0.2"
  gem "fog", "1.42"
end
