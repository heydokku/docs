# Create production server

# 1 Create droplet  on website or with cli
# https://cloud.digitalocean.com/projects/2ea03ced-8afa-4b42-b7e1-83a2a62fc792/resources?dropletIsCreating=true&i=87e6a3

ssh root@157.230.251.26
sudo apt update

# 2 MUST Create system user for deployment
adduser deploy
usermod -aG sudo deploy # Granting Administrative Privileges
ufw app list
ufw allow OpenSSH
ufw enable
echo '------------'
ufw status 
