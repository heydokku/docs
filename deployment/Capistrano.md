### Why Capistrano

If has no Capistrano, We must deploy manually.

### Features

Here's what makes Capistrano great:
Strong conventions

Capistrano defines a standard deployment process that all Capistrano-enabled projects follow by default. You don't have to decide how to structure your scripts, where deployed files should be placed on the server, or how to perform common tasks: Capistrano has done this work for you.
Multiple stages

Define your deployment once, and then easily parameterize it for multiple stages (environments), e.g. qa, staging, and production. No copy-and-paste necessary: you only need to specify what is different for each stage, like IP addresses.
Parallel execution

Deploying to a fleet of app servers? Capistrano can run each deployment task concurrently across those servers and uses connection pooling for speed.
Server roles

Your application may need many different types of servers: a database server, an app server, two web servers, and a job queue work server, for example. Capistrano lets you tag each server with one or more roles, so you can control what tasks are executed where.
Community driven

Capistrano is easily extensible using the rubygems package manager. Deploying a Rails app? Wordpress? Laravel? Chances are, someone has already written Capistrano tasks for your framework of choice and has distributed it as a gem. Many Ruby projects also come with Capistrano tasks built-in.
It's just SSH

Everything in Capistrano comes down to running SSH commands on remote servers. On the one hand, that makes Capistrano simple. On the other hand, if you aren't comfortable SSH-ing into a Linux box and doing stuff on the command-line, then Capistrano is probably not for you.

- Create a basic set of configuration files:
bundle exec cap install

The following files will be added to the project.

      □ Capfile

      □ config/deploy.rb

      □ staging.rb and production.rb in the config/environments directory
- Capfile
require 'capistrano/rails'
