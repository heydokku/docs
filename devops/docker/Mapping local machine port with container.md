Has 2 environment
One is local machine environment/ single server
Second is container environment

Because this container is running on local/VPS, we need a port to expose this to persist volume.


port_in_local:port_in_container

Example: 
- In container, postgres is default mapped to port 5432
- In local/VPS, postgres is default mapped to port 5432
NOTE: you want to change the mapped port on local/VPS, you can write 5455:5432



