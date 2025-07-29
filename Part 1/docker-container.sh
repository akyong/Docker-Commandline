
docker container ls -a
#listing all container

docker container ls
#listing all active/running container

docker container create --name contohredis redis:latest
docker container create --name contohredis-2 redis:latest
# docker will download automatically if the image is not exist

docker container start contohredis
docker container start contohredis-2
# docker run container, you can use  container id or container name

docker container stop contohredis
docker container stop contohredis-2
# docker stop container with name contohredis

docker container rm contohredis
docker container rm contohredis-2
# docker remove container

