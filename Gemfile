source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'
# Rest of gems
gem 'acts-as-taggable-on', '~> 5.0'
gem 'annotate', require: false
gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap-sass', '~>3.3.7'
gem 'carrierwave'
gem 'coffee-rails', '~> 4.2'
gem 'font-awesome-rails'
gem 'jbuilder', '~> 2.5'
gem 'mini_magick'
gem 'pg', '~> 0.21'
gem 'puma', '~> 3.10'
gem 'sass-rails', '~> 5.0'
gem 'simple_enum'
gem 'simple_form'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 3.0'
# gem 'redis', '~> 3.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.6'
end

group :development do
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rb-fsevent', require: false
  # guard and plugins
  gem 'guard-annotate'
  gem 'guard-brakeman'
  gem 'guard-bundler', require: false
  gem 'guard-image_optim'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'guard-rails', require: false
  gem 'guard-zeus'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end
