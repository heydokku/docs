NOTE: If you are a Ruby on Rails developer, you probably need a web server to host your web apps. 

### Stacks

Do everything on the web server, NOT LOCAL server

   git repository
2 [rvm](rvm): Ruby enVironment Manager (RVM) 
1 [nginx](../server/Nginx.md)
3 rails
4 [puma](puma): A Ruby/Rack web server built for parallelism 
5 [Passenger](Passenger): 4k  we need to make sure that we can easily deploy Ruby on rails to any web server. We
  will install and use Passenger for that. It will **serve as interface or bridge for
  communication between Ruby and the web server** , you can install it with the following
  command:
6 [sidekiq](sidekiq) 11.1k: background processing for Ruby 
7 [nodejs](nodejs): for rendering
8 [Capistrano](Capistrano): 12k is a tool for deploying automatically applications using deployment scripts. To perform
    script = automation
    used with
      ssh kit
      capistrano/rails
      capistrano/rvm
      capistrano/rbenv
      capistrano/bundler
      capistrano/rails
      capistrano/passenger

### Steps

- Step One — Create Your Droplet
- Step Two — Add a Sudo User
- Step Three (Optional) — Set Up Your Domain
- Step Four — Install Ruby
- Step Five — Install Passenger and Nginx
- Step Six — Set Up The Web Server
- Step Seven — Deploy your app on server

- Step One — Create Your Droplet

Create a new Ubuntu 14.04 Droplet. For smaller sites, it is enough to take the 512 MB plan.

Before we proceed with installation, we should make sure that our system repositories are up to date:
    `apt-get update -y`

- Step Two — Add a Sudo User

After the Droplet is created, additional system administration work is needed. 
You should create a system user and secure the server.
Create deployment user 

- Step Three (Optional) — Set Up Your Domain

In order to ensure that your site will be up and visible, you need to set up your DNS records to point your domain name towards
your new server. 
However, this step is optional, since you can access your site via an IP address.

Step Four — Install Ruby
- Install Ruby version manager

- Step Five — Install Passenger and Nginx

The preferred method to install Passenger in the past was using a generic installation via RubyGems
(passenger-install-nginx-module).

Install the rails gem (without extra documentation to install it faster). This will still take a few minutes:

sudo gem install --no-rdoc --no-ri rails

- Install nodejs
    
    \curl -sSL https://deb.nodesource.com/setup_17.x -o nodejs.sh
    vi nodejs.sh

Once you are satisfied with the Node.js script, you can install the NodeSource Node.js v17.x repo:

    cat nodejs.sh | sudo -E bash -

The -E flag used here will preserve the user’s existing environment variables.

Now you can update apt and use it to install Node.js:

    sudo apt update
    sudo apt install nodejs



- Step Six — Set Up The Web Server

Open the Nginx configuration file:

sudo nano /etc/nginx/nginx.conf

Find the following lines, in the http block:

# passenger_root /usr/lib/ruby/vendor_ruby/phusion_passenger/locations.ini;
# passenger_ruby /usr/bin/ruby;

Start Nginx

After all this is installed and configured, we simply need to start Nginx.

    # rails new my_first_rails_app
    # sudo service nginx start
    
- Deploy our Rails app to the web server

gem search '^rails$' --all
gem install rails -v 7.0.2

At this point you can deploy your own Rails application if you have one ready. 
If you want to deploy an existing app, you can upload your project to the server and skip to the /etc/nginx/sites-available/default step.

For this tutorial, we will create a new Rails app directly on the Droplet. We will need a the rails gem to create the new app.

Move to your user’s home directory (otherwise, you will get the error No such file or directory - getcwd) –

cd ~

