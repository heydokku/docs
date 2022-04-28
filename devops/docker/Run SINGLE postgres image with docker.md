### Step 1
docker pull postgres

### Step 2
docker run 
    --name myPostgresDb 
    -p 5455:5432 
    -e POSTGRES_USER=postgresUser 
    -e POSTGRES_PASSWORD=postgresPW 
    -e POSTGRES_DB=postgresDB 
    -d 
    postgres
    
### Step 3

Open dbeaver to access with the port, user, database

NOTE: docker-compose is to run 2 or multiple containers, NOT for single container
Especially, run a service with a database
