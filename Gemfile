source 'https://rubygems.org'

#required for Heroku
ruby '2.0.0'
gem 'rails', '4.0.0'

gem 'nokogiri', '1.5.0'
gem 'pg'
gem 'jquery-rails'
gem 'haml'

gem 'bcrypt-ruby', '3.0.0'

#Temporary change to attr_accessible
# gem 'protected_attributes'

gem 'pusher'

# Image upload gems
gem 'carrierwave'
gem 'fog', '1.12'
gem 'rmagick'
gem 'remotipart'

group :production do
  #REQUIRED for Rails 4.0 on Heroku!
  gem 'rails_12factor'
end

#the assets group is no more in Rails 4
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-stack_explorer'

  gem 'annotate'

  gem 'quiet_assets'
  gem 'binding_of_caller'
  gem 'meta_request'
end

group :development do
  #causes problem in conjunction with rspec test
  gem 'better_errors'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end