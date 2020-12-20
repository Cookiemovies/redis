@echo off
echo Pull, Tag and Start the Docker Redis container
docker pull redis:6.0.9-alpine3.12
docker tag redis:6.0.9-alpine3.12 myredis
docker run --name myredis -v C:\Users\marti\Projects\redis\data:/data -d myredis redis-server --appendonly yes
docker exec -it myredis sh