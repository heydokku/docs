# on web server
ssh root@your_server_ip
adduser  deploy
usermod -aG sudo deploy # Granting Administrative Privileges
ufw app list
ufw allow OpenSSH
ufw enable
ufw status


