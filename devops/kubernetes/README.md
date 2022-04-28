### Why kubernetes ?
If you’re stuck managing hundreds of containers
- automating deployment, scaling, and managing containerized applications

### Tips

you technically can install Kubernetes on a single node, it’s not
recommended. Separating nodes provides fault tolerance and high
availability.



### Basics

[ingress controller](https://docs.microsoft.com/en-us/azure/aks/ingress-basic)
[Clusters](clusters)

[Kubernetes](Kubernetes)


### Libs

[ ] [kubernete](kubernetes): 89k

[Vides: Deploy fullstack app with kurbenetes](https://www.youtube.com/watch?v=yznvWW_L7AA)

[ ] [minikube](minikube): 23.7 k 
implements a local Kubernetes cluster on macOS, Linux, and
Windows. minikube's primary goals are to be the best tool for local
Kubernetes application development and to support all Kubernetes
features that fit.

[ ] [kops](kops): 13.9k kurbenetes operations
The easiest way to get a production grade Kubernetes cluster up and running.
What is kOps? ¶

We like to think of it as kubectl for clusters.

kops will not only help you create, destroy, upgrade and maintain production-grade, highly available, Kubernetes cluster, but it will also provision the necessary cloud infrastructure.

AWS (Amazon Web Services) is currently officially supported, with DigitalOcean and OpenStack in beta support, and Azure, and GCE in alpha.

### Tutorials

[Deploy multiple-containers application with kurbenetes](https://www.youtube.com/watch?v=OVVGwc90guo)

### Deploy with DigitalOcean

[ ] https://github.com/digitalocean/Kubernetes-Starter-Kit-Developers

### CI-CD
[ ] [werf](https://camo.githubusercontent.com/cd9d5f5e44b7bbd714139169cb1ab23c05b1d6f8342ddcae404b34bbcd97f69f/68747470733a2f2f776572662e696f2f6173736574732f696d616765732f776572662d736368656d612e706e67)

### Monitoring

### Network
[0] flannel: 7.2k designed for Kubernetes, is a network fabric for containers, 

### Security
[0] caclico: 3.4k https://github.com/projectcalico/calico

### Reverse proxy
[0] https://github.com/fabiolb/fabio: 6.9k use with consul, fabio is a fast, modern, zero-conf load balancing HTTP(S) and TCP router for deploying applications managed by consul.

### Volume Management / Data

- Object storage server
[0] 32.7k https://github.com/minio/minio [web client image](https://raw.githubusercontent.com/minio/minio/master/docs/screenshots/pic1.png)
Use with Amazon S3 API, can use as *private cloud*, 
Store unstructred data: photo, videos, time series data .....
Use MinIO to build high performance infrastructure for machine learning, analytics and application data workloads.

 OpenFaaS: 21.5k
[ ] install kubernete on ubunru https://adamtheautomator.com/install-kubernetes-ubuntu/
