source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.1'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 2.3.2.2'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'rolify'
gem 'simple_form'
gem 'paperclip'
gem 'pony'
gem 'stripe'
gem 'devise_invitable', '~> 1.1.0'
group :assets do
  gem 'therubyracer', :platform=>:ruby
end
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'quiet_assets'
  gem 'sqlite3'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :production do
gem 'pg'
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'launchy'
end
