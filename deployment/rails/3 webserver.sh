# Installing, Configuring web server

# Passenger
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger focal main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update
sudo apt-get install -y nginx-extras libnginx-mod-http-passenger
if [ ! -f /etc/nginx/modules-enabled/50-mod-http-passenger.conf ]; then sudo ln -s /usr/share/nginx/modules-available/mod-http-passenger.load /etc/nginx/modules-enabled/50-mod-http-passenger.conf ; fi
sudo ls /etc/nginx/conf.d/mod-http-passenger.conf
# Edit config file
sudo vim /etc/nginx/conf.d/mod-http-passenger.conf

# We simply want to change the passenger_ruby line to match the following:
# TODO
# passenger_ruby /home/deploy/.rbenv/shims/ruby;

# Nginx
# Remove default app
sudo rm /etc/nginx/sites-enabled/default
# Config my app
sudo vim /etc/nginx/sites-enabled/myapp

# /nginx.conf

# Reloading after editing config file
sudo service nginx reload





