

#delete or remove container/image/network/volume, which is not used anymore.

docker container prune
docker image prune
docker network prune
docker volume prune

#or do it all with single command
docker system prune
