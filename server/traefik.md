Reverse proxy: Nginx, Caddy can reverse proxy too, but only traefik can integrate with docker and kubernetes
### TODO
[ ] Deploy Dockerized FastAPI with traefik 

### Why traefik?

Using with docker

1 Dynamic routing
2 Load balanceer
3 Letsencrypt (Get SSL free)
4 Web UI

### Purposes

Traefik has two types of configurations. 
1 The Static Configuration is used to configuration Traefik itself and 
2 the Dynamic Configuration is used to define how Traefik routes requests to different
backend services. Static configurations are set during the installation time and dynamic configuration comes from Ingress,
middleware, services that we can create dynamically.

### Principles

1 Entry points
2 Frontends
3 Backends
4 Servers

### Dynamic config file

`dynamic.yml`: Config middleware

### Use Traefik as Ingress Controller.
