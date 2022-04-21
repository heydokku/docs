# Create production server

# 1 Create droplet  on website or with cli
# https://cloud.digitalocean.com/projects/2ea03ced-8afa-4b42-b7e1-83a2a62fc792/resources?dropletIsCreating=true&i=87e6a3

# 2 Create system user for deployment
ssh root@157.230.251.26
sudo apt update
adduser deploy
usermod -aG sudo deploy # Granting Administrative Privileges
ufw app list
ufw allow OpenSSH
ufw enable
ufw status 
