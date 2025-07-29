
docker volume ls
#storage for container

docker volume create mongovolume
#create a storage volume for store mongodata
# it's like a empty storage

docker volume rm mangovolume

#how to use volume storage for container
docker container create --name mongovolume --publish 27022:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=bobby --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest

docker container stop mongovolume

docker container rm mongovolume

docker container create --name mongovolume --publish 27022:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=bobby --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest

#then try to reconnect to mongovolume data

