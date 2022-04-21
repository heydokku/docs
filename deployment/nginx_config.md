server {
  listen  80;
  server_name [your_server_domain_name] # redmine.com;
  root /var/data/redmine/public;
  passenger_enabled on;
  client_max_body_size      10m; # Max attachemnt size
}
