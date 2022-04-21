# Deploying with Capistrano

# Local machine
# • Working With Capistrano To Automate Deployments
# • Installing Capistrano Inside The Project Directory
# • Working With config/deploy.rb Inside The Project Directory
# • Working With config/deploy/production.rb Inside The Project Directory
# • Deploying To The Production Server

# Setting Up Capistrano
gem install capistrano # install inside the project dir

# add the following gems to our Gemfile
gem 'capistrano', '~> 3.11'
gem 'capistrano-rails', '~> 1.4'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-rbenv', '~> 2.1', '>= 2.1.4'

# After that
bundle # install Gemfile

cap install STAGES=production
# The above generates several files for us:

    Capfile
    config/deploy.rb
    config/deploy/production.rb



