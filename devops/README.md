### What is Devops ?

Devops [flows](http://blogs.vmware.com/management/files/2020/03/2020-03-02_14-18-57.png)

Dev
- Plan
- Code
- Build
- Test

Ops
- Release
- Deploy
- Operate
- Monitor

### Docker and Container

[Why container](Why container)

[docker](docker/docker)

[docker-compose](docker/docker-compose)

### Container management

[ ] [portainer](portainer): 21k WebUI The application allows you to manage all your orchestrator resources (containers, images, volumes, networks and more) through a ¿smart¿ GUI and/or an extensive API.
use Docker and migrate your existing Apps to your Linux Server
[ ] netdata :58.9k Web UI Real-time performance monitoring, done right

[X] container-diff 3.9k https://github.com/GoogleContainerTools/container-diff

### Docker improvement
[ ] docker-sync: 3.9k Run your application at full speed while syncing your code for development
- Create docker-sync.yml file in the main dir
- docker-sync start [tutorial](https://www.educba.com/docker-sync/)
 
[X] lando: A development tool for all your projects that is fast, easy, powerful and liberating 

### Deployment

Choices to deploy my app

1 VPS(Linux servers...)
2 Container (Docker...)
3 [Kubernetes](kubernetes/README.md) (Cluster)

### Monitoring 

[ ] [loki](monitoring/loki): 15k monitoring logs
[X] The gap [Prometheus](Prometheus) fills is for monitoring and alerting. Get data (mainly, time series data) from server

###  Images

- Inspecting Image
[0] dive: 31k inpsect an image layer

- Updating image
[0] [Watchtower](Watchtower) : 10.9k A container-based solution for *automating* Docker container base image updates

- Creating image
[0] [Packer](Packer): Create identical machine images for multiple platforms from a single source configuration
[ ] https://github.com/GoogleContainerTools/distroless 12.5k
- Working with registry
[0] [Skopeo](skopeo):  Work with remote images registries - retrieving information, images, signing content 

- Minifying image
[0] docker-slim: 13.2k Make Your Containers Better, Smaller, More Secure and Do Less to Get There

- Container registry
1 hub.docker: a Anonymous (unauthenticated) users will be limited to
100 container image pulls every six hours, and Free (authenticated)
    users will be limited to 200 container image pulls every six hours,
        when enforcement is fully implemented
2 quay.io
3 ghcr.io (github container registry)

- docker with hardware
15k https://github.com/NVIDIA/nvidia-docker Build and run Docker containers leveraging NVIDIA GPUs 

### Nginx related
nginx-proxy: 15.9k  Automated nginx proxy for Docker containers using docker-gen 
acme-companion:6k   Automated ACME SSL certificate generation for nginx-proxy 
nginx-proxy-manager: 6.7k Docker container for managing Nginx proxy hosts with a simple, powerful interface 

### Troubleshooting

[0] netshoot: 4.3k a Docker + Kubernetes network trouble-shooting swiss-army container 

### Infrastructure

[README](IaC/terraform)
 
### Blog
 
[10 things to avoid in Container](10 things to avoid in Container)

### Books

### Virtual machine (VM)

[ ] [Vagrant](Vagrant): make sure your development machine has VirtualBox. Manage distributed virtual environment.
have come across Vagrant because I often need to set up virtual machines for making tutorials or development tasks. Let me show you how you can easily do an automated virtual machine deployment.

[ ] [Promox](vm/promox): Create Mac OS, Windows, Ubuntu Virtual machine

### Pandas related

Visualizer for pandas data structures https://github.com/man-group/dtale#docker-container

