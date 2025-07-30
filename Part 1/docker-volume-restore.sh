
docker volume create mongorestore

docker container run --rm --name ubunturestore --mount "type=bind,source=/Users/bobbyakyong/programming/java/springboot/Docker Guide Sample/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"


#let's check it out
docker container create --name mongorestore --publish 27023:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=bobby --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest
