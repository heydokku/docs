MySQL is an open-source database management system, commonly installed as part of the
popular LAMP (Linux, Apache, MySQL, PHP/Python/Perl) stack. It implements the relational
model and uses Structured Query Language (better known as SQL) to manage its data.
start by updating the release sudo apt-get update && sudo apt-get dist-upgrade

By default, a MySQL installation has an anonymous user,
allowing anyone to log into MySQL without having to have
a user account created for them. This is intended only for
testing, and to make the installation go a bit smoother.
You should remove them before moving into a production
environment.

Disallow root login remotely? (Press y|Y for Yes, any other key for No) :

Remove test database and access to it? (Press y|Y for Yes, any other key for No) :

Reload privilege tables now? (Press y|Y for Yes

### Commands

- The following will run your MySQL client with regular user privileges, and you will only gain
administrator privileges within the database by authenticating:
mysql -u root -p

- login as root user
sudo mysql
 
### Reference
https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04
