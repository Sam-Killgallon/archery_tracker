source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.3'
gem 'mysql2', '~> 0.5.2'
gem 'prawn', '~> 2.2.2'
gem 'prawn-table', '~> 0.2.0'
gem 'puma', '~> 3.12.1'
gem 'bootstrap', '~> 4.3.1'
gem 'sass-rails', '~> 5.0.7'
gem 'sentry-raven', '~> 2.9.0'
gem 'uglifier', '~> 4.1.10'
gem 'webpacker', '~> 3.4.1'
gem 'bootsnap', '~> 1.4.3', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'pdf-inspector', require: "pdf/inspector"
  gem 'chromedriver-helper'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
  gem 'annotate'
  gem 'capistrano',         require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
  gem 'guard-rspec'
end
