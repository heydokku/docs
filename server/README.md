###  Differences

Web app server (Passenger) vs Web server
Http server

### Basics

[shared_hosting](shared_hosting)
[vps](vps)
[cloud](cloud)

[What is web server?](What is web server?)
[what is port ?](what is port)
[self-hosting](https://www.computerhope.com/jargon/s/self-hosting.htm): self-hosting refers to software installed and maintained by the user on a generic web hosting service, such as a VPS.

reverse-proxy: Load multiple domain (subdomain) in the single VPS (droplet)

### Apps used on server

- tmux: so GREAT, run schedule.py in the background

### Web server
two purposes.
One is to serve static (no dynamic functionality, no backend, no database, …) web sites,
usually consisting of HTML, JavaScript and CSS plus images etc. The
other is to act as a reverse-proxy to web application backends
1 Apache
2 [Nginx](Nginx)
3 [ ] [Caddy](caddy): 40k, Modern webserver, The HTTP/2 Web Server with Automatic HTTPS
[Unicorn](Unicorn): is Http server

[WSGI](WSGI)
[Gunicorn](Gunicorn): Unicorn inspired other projects like Gunicorn, a fork to run Python applications

- Ruby
[Puma](Puma)
https://www.phusionpassenger.com/library/walkthroughs/deploy/python/ownserver/apache/oss/bionic/deploy_app.html

### Load Balancer, Reverse proxy

[0] [Traefik](traefik): 37k  1B+ (docker) modern HTTP reverse proxy and load balancer that makes deploying microservices easy. Traefik integrates with your existing infrastructure components (Docker, kubernetes..) ( BIG POINT)

### API

[ ] [Kong](kong): 39k API gateway: rate limiting, denying the access for multiple microservices

### App server

- [Passenger](app_server/Passenger): interface
 
[ ] p2m: 36k Node.js Production Process Manager with a built-in Load Balancer. 


### Protocols

[ssh](ssh/README) client is a tool to communicate with the server. Such as terminal is a ssh client, any GUI appc can be used ssh client
examples: [electerm](https://github.com/electerm/electerm#electerm) ( I use terminal)

### SSL

[ ] [acme.sh](https://www.youtube.com/watch?v=BYkBJ11gDIM): 26k Get SSL free, used with traefik
acme.sh supports the following validation methods that you can use
to confirm domain ownership:

• Webroot mode
• Standalone mode
• Standalone tls-alpn mode
• Apache mode
• Nginx mode
• DNS mode
• DNS alias mode
• Stateless mode
                
[ ] [truenas](https://www.youtube.com/watch?v=M3pKprTdNqQ)

### Messages

[ ] [nsq](https://nsq.io/overview/quick_start.html) 20k
