### Refererence
1 [main](https://gorails.com/deploy/ubuntu/20.04#next-steps)

VPS: Linode
OS: Ubuntu 14.04 LTS
Web server: Nginx
WSGI server: Gunicorn
Application framework: Pyramid
Relational database: PostgreSQL
NoSQL data store: Redis
Rails version: 3.1.1

### Introduction

Deploy rails-app to remote server (VPS) on ubuntu.
NOT cloud server

### Steps

1 initialize
2 install_ruby 
3 webserver
4 database
5 deploy
6 logging

### TODO

[x] Setup web server on ubuntu 20.04
[ ] Upload app to git, deploy to ubuntu server with Capistrano

### Q & A

[ ] The local version of rails/ruby and the versions on the server is different ?
[ ] Need to install rails in the server ?
[ ] https://sherllo.com/most-easy-to-use-tutorial-for-deploy-rails-application-with-docker-capistrano-in-15-steps/

### Dockerize a rails app

Why do the docker can only be used in development? NOT deployment in RAILS
https://www.digitalocean.com/community/tutorials/containerizing-a-ruby-on-rails-application-for-development-with-docker-compose

### Refererence

 [ ] [Capistrano with Pum](https://semaphoreci.com/community/tutorials/how-to-use-capistrano-to-deploy-a-rails-application-to-a-puma-server)
 [ ] [Capistrano with rvm](https://gurzu.com/blog/deploying_rails_web_application_using_Capistrano_Bundler_RVM/)
