# How to run a REDIS container and use REDIS-CLI

* Pull a specific image from docker. Redis 6.0.9 is an alpine based very small image
* Because of the ugly container name, tag the container with a simple one like myredis
* Run the container in detach mode, so the server starts
* Execute the shell inside redis
* Once the shell opens run the redis-cli to try out different commands

```
docker pull redis:6.0.9-alpine3.12
docker tag redis:6.0.9-alpine3.12 myredis
docker run --name myredis -d myredis
docker exec -it myredis redis-cli
```

Run the Redis image with persisting the data to /data in the container

```
docker run --name myredis -d myredis redis-server --appendonly yes
```

Run the Redis image with persisting the data to /data in the container and storing to data volume

```
docker run --name myredis -v data:/data -d myredis redis-server --appendonly yes
```
