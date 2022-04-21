- Rails specific tasks for Capistrano v3:

  • cap deploy:migrate
  • cap deploy:compile_assets

- Installation

Add these Capistrano gems to your application's Gemfile using require: false:

group :development do
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-rails", "~> 1.6", require: false
end
