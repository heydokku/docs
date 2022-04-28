### How to

[Docker tutorial](https://www.youtube.com/watch?v=y0GGQ2F2tvs)
Run bash command line in container: `docker exec `
[Mapping local machine port with container](Mapping local machine port with container)
[0] How to install and run docker on remote server(vps) => just install docker like in Ubuntu with Ansible playbooks
[Run SINGLE postgres database image with docker](Run SINGLE postgres image with docker)
[docker-compose build](docker-compose build)
[0] Everything run in container, bash command ...
[ ] To run schedule.py, send images to Telegram

### Tips

Using port for a sevice in docker-compose.yml ONLY for developing in local environment
 
When using on the server, we should NOT expose application a port

`docker network ls`
`docker volume ls`
`docker image ls`
`docker container ls`

### Deploy fastapi with docker (no db),  

Problems: Every time, I change the code, I must rebuild the docker-compose. Has the delay time

`docker-compose build`
`docker-compose up -d`

