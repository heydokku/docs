### Why watchtower?

So you’ve installed docker, and have a few self-hosted application
containers up and running. Now, what happens when you need to update
those containers? You stop the running container, pull the new image,
and start the new container with all of the same environmental
variables.

Typically, this is not a big deal, but what if you have 20 containers
running? Now, the simple task up updating your applications is going to

Only need to run this
```
docker run -d \
  --name watchtower \
  -v /var/run/docker.sock:/var/run/docker.sock \
  containrrr/watchtower
  ```
