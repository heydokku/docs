### Commands with redit service

```shell

# enable service
sudo systemctl enable redis-server
# disable service
sudo systemctl disable redis

# edit config file
sudo vi /etc/redis/redis.conf

# restart the Redis service to reflect the changes you made to the configuration file
sudo systemctl restart redis.service

# checking that the Redis service is running
sudo systemctl status redis

# check that this change has gone into effect
sudo netstat -lnp | grep redis
```

### Edit config file

```redis.conf
# uncomment these line
supervised systemd

# Binding to localhost
bind 127.0.0.1 ::1

# Configuring a Redis Password
requirepass my_password

# commands to create Password
openssl rand 60 | openssl base64 -A

```

###  Testing config

open up the Redis client

```shell
redis-cli
:6379>auth your_redis_password
:6379>ping
:6379>set test "It's working!"
:6379>get test
```
- check whether Redis is able to persist data even after it’s been stopped or restarted

    `sudo systemctl restart redis`
    `redis-cli`
    `get test `

### Ref

https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-20-04
