source 'https://rubygems.org'

#default
gem 'rails', '4.0.4'
gem 'pg'
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'bootstrap-sass'
gem 'bcrypt'

#pagination
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rspec-rails'
  gem 'guard-rspec', require: false
  gem 'guard-livereload', require: false
  gem 'rb-fsevent', require: false if RUBY_PLATFORM =~ /darwin/i
  gem 'growl'

  # gem 'spork'
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'childprocess'
end



group :test do
  gem 'turn'
  # gem 'selenium-webdriver'
  gem 'faker'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'factory_girl_rails'
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'launchy'
end

group :production do
  gem 'rails_12factor', '0.0.2'
end




