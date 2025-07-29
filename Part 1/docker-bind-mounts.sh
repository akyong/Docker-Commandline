
#type of bind
#1. mount
#2. bind
#3. volume
#
#source  is a folder location or path in host
#destination is a folder location or path location in container
#readonly true, so container just only able to read by the container

docker container create --name containername --mount "type=bind, source=folder, destination=folder, readonly" image:tag
#for example


docker container create --name contohmongodata --publish 27020:27017 --mount "type=bind,source=/Users/bobbyakyong/programming/java/springboot/Docker Guide Sample/mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=bobby --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest