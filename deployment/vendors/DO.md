### App Platform 

App Platform is a Platform-as-a-Service (PaaS) offering that allows developers to publish code directly to DigitalOcean servers without worrying about the underlying infrastructure.
- DO NOT need dockerize app into app, 
- DO NOT need DockerFile
- NO NEED FOR Container

App Platform can either automatically analyze and build code from your GitHub, GitLab or public Git repositories and publish your application to the cloud, 
or publish a container image you have already uploaded to DigitalOcean Container Registry or Docker Hub. It also has lifecycle management features, vertical and horizontal scaling, push-to-deploy support, introspection and monitoring features, built-in database management and integration — everything a developer needs to get code live in production.

[Pricing](https://docs.digitalocean.com/products/app-platform/)

- Type of apps that can deploy

1 [Worker](Worker): Schedule a task ( Can run python app. This What I need)
2 Job: Before, After deploying app to the server 
3 Front end: Vuejs, React, Static Sites, Jekyll
4 Back end: python, flask...

- App Spec 

 is a YAML manifest
 Both the doctl command-line tool and the DigitalOcean API allow you to upload App Specs for both the creation of new apps, and the editing of existing apps.    
automating App Platform operations
Example: I want to edit the build, run command  after deploying the app.
[Spec Ref](https://docs.digitalocean.com/products/app-platform/references/app-specification-reference/)

- [Can attach database to an apps ](https://docs.digitalocean.com/products/app-platform/how-to/manage-databases/)

- [Samples are ready for deploying](Samples are reade for deploying)


### Droplet

DigitalOcean Droplets are **Linux-based virtual machines (VMs)** that run on top of virtualized hardware.
Each Droplet you create is a new server you can use, either standalone or as part of a larger, cloud-based infrastructure.
In the Choose an image section, you choose the image your Droplet will be
created from. Initially, you can choose from four categories of images:

• Distributions are basic Unix-like images with no additional software,
including Ubuntu, Fedora, Debian, CentOS, and FreeBSD.
      
• Marketplace images include pre-configured applications, like Docker,
WordPress, or LAMP, to help simplify getting started.

• Custom images are Unix-like images that you create and upload to your
DigitalOcean account.

• Container distributions include RancherOS.

### Market Places

Search for pre-configured images

### DigitalOcean Container Registry

The DigitalOcean Container Registry (DOCR) offers all the security of a private Docker image registry, 
with extra tool support that enables easy integration with your Docker environment and DigitalOcean Kubernetes clusters.
These registries are private, and co-located in the datacenters where DigitalOcean Kubernetes clusters are operated, ensuring secure, stable, and performant rollout of images to your clusters.

### Managed Databases
 
 PostgreSQL 	
 Redis: open source, key-value database built with an in-memory design that emphasizes speed
 MySQL 	
 MongoDB 
 
Note: All managed databases are deployed onto Droplets.  

### Networking

[official docs](https://docs.digitalocean.com/products/networking/)
Secure and control the traffic to your applications with private networking, traffic filtering, and load balancing. 

### Management

- [Monitoring](https://docs.digitalocean.com/products/monitoring/): DigitalOcean Monitoring is a free, opt-in service that gathers metrics about
- Droplet-level resource utilization. It provides additional Droplet graphs and
- supports configurable metrics alert policies with integrated email Slack
- notifications to help you track the operational health of your infrastructure.

- Project
- Team
### Differences

shared CPU vs. dedicated CPU
