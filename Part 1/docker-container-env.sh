
docker image pull mongo:latest

docker container create --name contohmongo --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=bobby --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest