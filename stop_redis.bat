@echo off
echo Stop the Docker Redis container
docker container stop myredis
docker container rm myredis