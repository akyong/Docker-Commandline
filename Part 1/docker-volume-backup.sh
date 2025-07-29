
#stop the container first
docker container stop mongovolume

  #create a folder with name backup `mkdir backup`
  /Users/bobbyakyong/programming/java/springboot/Docker Guide Sample/backup

  #create a new container with
  docker container create --name nginxbackup
  --mount "type=bind,source=/Users/bobbyakyong/programming/java/springboot/Docker Guide Sample/backup,destination=/backup"
  --mount "type=volume,source=mongodata,destination=/data" nginx:latest

  docker container start nginxbackup

  docker container exec -i -t nginxbackup /bin/bash
  #root@a883ab56a8ab:/backup# tar cvf /backup/backup.tar.gz /data
  # so
  # localhost [/backup] <===> Container (via bind)[/backup] <===> volume (source volume's name = mongodata, destionation /data)
  # we are backup folder "/data" in container in to a zip or tar.
  # so actually we were creating a zip file from volumestorage in to a bind's folder.
  # after that we can stop the nginxbackup's container and remove it. we don't need it anymore :)

  docker container stop nginxbackup

  docker container rm nginxbackup

docker container start mongovolume

#actually we have another efficient way
# it's `run` for example docker run
# forexample

#remember we neet to stop the container
docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=/Users/bobbyakyong/programming/java/springboot/Docker Guide Sample/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-again.tar.gz /data
#docker run then remove the container after all