
### Why docker ?

- Time: deploy multiple services with one docker-compose file, one command
- 
Here’s how it will work; we’ll have one container for PHP, one container for
Nginx, and one container for MySQL. Our configuration will bind them altogether
so that, when finished, we can run one command line script to build it, boot
it, and view it locally on port 8080.

- Good for team: environment between team members is the same

- Environment: test with different version very quickly
Example: I want to test with node 13, node 15...

- Deploying: Building into the image, then deploy with one that image
you can significantly reduce the delay between writing code and running it in production.

### Dockerfile

- to assemble, build an image from the ground

NOTE:
1 The build is run by the Docker daemon, not by the CLI.
2 Keep your Dockerfile in the current (project) directory.
3 You use the -f flag with docker build to point to a Dockerfile anywhere in your file system.
4 To use a file in the build context, the Dockerfile refers to the file
specified in an instruction, for example, a COPY instruction, run the instructions one by one
5 To increase the build’s performance, exclude files and directories by
adding a *.dockerignore* file to the context directory. For information

[instruction refererences](https://docs.docker.com/engine/reference/builder/)

### Docker overview


- Docker Engine is the underlying client-server technology that builds and runs containers using Docker's components and services. 
When people refer to Docker, they mean either Docker Engine -- 
which comprises the Docker daemon, a REST API and the CLI that talks to the Docker daemon through the API

- The Docker platform

Docker provides tooling and a platform to manage the lifecycle of your containers:

Scenario:

Your developers write code locally and share their work with their colleagues using Docker containers.
They use Docker to push their applications into a test environment and execute automated and manual tests.
When developers find bugs, they can fix them in the development environment and redeploy them to the test environment for testing and validation.
When testing is complete, getting the fix to the customer is as simple as pushing the updated image to the production environment.

### Architecture

- Docker uses a client-server architecture. The Docker client talks to the Docker daemon, which does the heavy lifting of building, running, and distributing your Docker containers. 
The Docker client and daemon can run on the same system, or you can connect a Docker client to a remote Docker daemon. The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface. 
Another Docker client is Docker Compose, that lets you work with applications consisting of a *set of containers*

[Docker Architecture Diagram](https://docs.docker.com/engine/images/architecture.svg)

- *The Docker daemon*

The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.

- The Docker client

The Docker client (docker) is the primary way that many Docker users interact with Docker. 
When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.

Docker SDK for Python [link](https://github.com/docker/docker-py)

- Docker Desktop

Docker Desktop is an easy-to-install application for your Mac or Windows environment that enables you to build and share containerized applications and microservices. Docker Desktop includes the Docker daemon (dockerd), the Docker client (docker), Docker Compose, Docker Content Trust, Kubernetes, and Credential Helper. For more information, see Docker Desktop.
Docker registries

- A Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default. You can even run your own private registry.

When you use the docker pull or docker run commands, the required images are pulled from your configured registry. When you use the docker push command, your image is pushed to your configured registry.
Docker objects

### Objects

When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects. 
This section is a brief overview of some of those objects.
Images

- An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. 
For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.

You might create your own images or you might only use those created by others and published in a registry. To build your own image, you create a Dockerfile with a simple syntax for defining the steps needed to create the image and run it. Each instruction in a Dockerfile creates a layer in the image. When you change the Dockerfile and rebuild the image, only those layers which have changed are rebuilt. This is part of what makes images so lightweight, small, and fast, when compared to other virtualization technologies.

- Containers

- Docker Engine and swarm mode
  renamed the **orchestration service** to swarm mode

A swarm is a cluster of connected Docker Engine hosts onto which an admin can deploy application services. 
Docker Engine enables instantiation of both manager and worker nodes from a single disk image at runtime instead of deployment. 
Because Docker Engine runs on a declarative model, 
swarm mode will maintain and return to the declared desired state in the event of an outage or scaling event

- A container is a runnable instance of an image. You can create, start, stop, move, or delete a container using the Docker API or CLI. You can connect a container to one or more networks, attach storage to it, or even create a new image based on its current state.
By default, a container is relatively well isolated from other containers and its host machine. You can control how isolated a container’s network, storage, or other underlying subsystems are from other containers or from the host machine.

A container is defined by its image as well as any configuration options you provide to it when you create or start it. When a container is removed, any changes to its state that are not stored in persistent storage disappear.
Example docker run command

The following command runs an ubuntu container, attaches interactively to your local command-line session, and runs /bin/bash.

 docker run -i -t ubuntu /bin/bash

When you run this command, the following happens (assuming you are using the default registry configuration):

    If you do not have the ubuntu image locally, Docker pulls it from your configured registry, as though you had run docker pull ubuntu manually.

    Docker creates a new container, as though you had run a docker container create command manually.

    Docker allocates a read-write filesystem to the container, as its final layer. This allows a running container to create or modify files and directories in its local filesystem.

    Docker creates a network interface to connect the container to the default network, since you did not specify any networking options. This includes assigning an IP address to the container. By default, containers can connect to external networks using the host machine’s network connection.

    Docker starts the container and executes /bin/bash. Because the container is running interactively and attached to your terminal (due to the -i and -t flags), you can provide input using your keyboard while the output is logged to your terminal.

    When you type exit to terminate the /bin/bash command, the container stops but is not removed. You can start it again or remove it.

The underlying technology

Docker uses a technology called namespaces to provide the isolated workspace called the container. When you run a container, 
Docker creates a set of namespaces for that container.
These namespaces provide a layer of isolation. Each aspect of a container runs in a separate namespace and its access is limited to that namespace.

### Building Image

When you’re done with your build, 
you’re ready to look into scanning your image with docker scan, 
and pushing your image to Docker Hub.

### Q & A


Docker networks allow containers to communicate in different ways, such as through a bridge network (a private
network), a host network (a public network), or an overlay network.

Knowing Docker networks is important as it allows you to switch to another Docker network anytime as per the need of the
application by disconnecting and then connecting back.
