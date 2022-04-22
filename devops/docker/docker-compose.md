### Repos

[0] https://github.com/docker/awesome-compose

### Compose has commands for managing the whole lifecycle of your
application:

  • Start, stop, and rebuild services
    • View the status of running services
      • Stream the log output of running services
        • Run a one-off command on a service
        
### Basics

The default project directory is the base directory of the Compose file.

- volume
Preserve volume data when containers are created

Compose preserves all volumes used by your services. When docker-compose
up runs, if it finds any containers from previous runs, it copies the
volumes from the old container to the new container. This process
ensures that any data you’ve created in volumes isn’t lost.

- Only recreate containers that have changed
Automated testing environments

An important part of any Continuous Deployment or Continuous Integration
process is the automated test suite. Automated end-to-end testing
requires an environment in which to run tests. Compose provides a
convenient way to create and destroy isolated testing environments for
your test suite. By defining the full environment in a Compose file, you
can create and destroy these environments in just a few commands:

$ docker-compose up -d
$ ./run_tests
$ docker-compose down
Variables and moving a composition between environments

- Compose supports variables in the Compose file. You can use these
variables to customize your composition for different environments, or
different users. See Variable substitution for more details.

### Specs

[Specs References](https://docs.docker.com/compose/compose-file/)

The Compose file is a YAML file defining version (DEPRECATED), services
(REQUIRED), networks, volumes, configs and secrets. The default path for
a Compose file is compose.yaml (preferred) or compose.yml in working
directory.


- entrypoint

entrypoint overrides the default entrypoint for the Docker image (i.e.
ENTRYPOINT set by Dockerfile). Compose implementations MUST clear out

- healthcheck

- labels
labels add metadata to containers. You can use either an array or a map.

- links

### Compose in production

The easiest way to deploy an application is to run it on a single
server, similar to how you would run your development environment. If
you want to scale up your application, you can run Compose apps on a
Swarm cluster.

### Deployment

For this reason, consider defining an additional Compose file, say
production.yml, which specifies production-appropriate configuration.
This configuration file only needs to include the changes you’d like to
make from the original Compose file. The additional Compose file can be
applied over the original docker-compose.yml to create a new
configuration.

Once you’ve got a second configuration file, tell Compose to use it with
the -f option:

$ docker-compose -f docker-compose.yml -f production.yml up -d
Deploying changes

- When you make changes to your app code, remember to rebuild your image
and recreate your app’s containers. To redeploy a service called web,
use:

$ docker-compose build web
$ docker-compose up --no-deps -d web

This first rebuilds the image for web and then stop, destroy, and
recreate just the web service. The --no-deps flag prevents Compose from
also recreating any services which web depends on.

- Running Compose on a single server

You can use Compose to deploy an app to a remote Docker host by setting
the DOCKER_HOST, DOCKER_TLS_VERIFY, and DOCKER_CERT_PATH environment
variables appropriately.

Once you’ve set up your environment variables, all the normal
docker-compose commands work with no further configuration.

