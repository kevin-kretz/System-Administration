## Documentation
https://github.com/netbox-community/netbox-docker/wiki/Getting-Started
## Installation Video
https://youtu.be/dDYNu58YR6M?t=707
## Docker Install

### Set up docker

`git clone -b release https://github.com/netbox-community/netbox-docker.git`
`cd ./netbox-docker.git`
`cp docker-compose.override.yml.example docker-compose.override.yml` 
`vi docker-compose.override.yml`

#### docker-compose.override.yml
``` 
services:
  netbox:
    ports:
      - "8000:8080"
```

> [!NOTE]
You can change the port number to any port number desired. Leave the second port number set to 8080

Start all containers: `docker compose up`

> [!NOTE]
Wait 2 minutes for the database to build itself, before running the next command 

Start all containers again: `docker compose up -d`

All containers should be up and running now.

### Create the superuser
`docker compose exec netbox /opt/netbox/netbox/manage.py createsuperuser`
You will be prompted to enter a username, email and password for the superuser account.
