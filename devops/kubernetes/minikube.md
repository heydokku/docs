### Features

minikube runs the latest stable release of Kubernetes, with support for
standard Kubernetes features like:

  • LoadBalancer - using minikube tunnel
  • Multi-cluster - using minikube start -p <name>
  • NodePorts - using minikube service
  • Persistent Volumes
  • Ingress
  • Dashboard - minikube dashboard
  • Container runtimes - minikube start --container-runtime
  • Configure apiserver and kubelet options via command-line flags
  • Supports common CI environments
### Installation

Take 10 minutes and  7Gb
```
sudo apt-get install curl
sudo apt-get install apt-transport-https
sudo apt install virtualbox virtualbox-ext-pack
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube
minikube version
minikube start # longest command
```

### TODO

[ ] [tutorial](https://kubernetes.io/docs/tutorials/hello-minikube/) 
