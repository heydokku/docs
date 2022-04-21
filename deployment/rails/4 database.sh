# Setting up database on server

# postgresql (default)
sudo apt-get install postgresql postgresql-contrib libpq-dev
sudo su - postgres
createuser --pwprompt deploy
createdb -O deploy myapp
exit

# mysql
sudo apt-get install mysql-server mysql-client libmysqlclient-dev
sudo mysql_secure_installation
# Open the MySQL CLI to create the user and database
mysql -u root -p

# CREATE DATABASE IF NOT EXISTS myapp;
# CREATE USER IF NOT EXISTS 'deploy'@'localhost' IDENTIFIED BY '$omeFancyPassword123';
# CREATE USER IF NOT EXISTS 'deploy'@'%' IDENTIFIED BY '$omeFancyPassword123';
# GRANT ALL PRIVILEGES ON myapp.* TO 'deploy'@'localhost';
# GRANT ALL PRIVILEGES ON myapp.* TO 'deploy'@'%';
# FLUSH PRIVILEGES;
# \q



