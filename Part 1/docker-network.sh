
#in order to able communicate between containers, we need to use network as a bridge.
#there are some kind of network:
# bridge, it kinds of type that to communicate between containers.
# host, this kind of type only available in linux, not mac or windows
# none, not able to communitate

docker network ls
#default network
#NETWORK ID     NAME      DRIVER    SCOPE
#f99f4bf7c879   bridge    bridge    local
#5c0629f9e8a2   host      host      local
#224300fd7f8b   none      null      local

docker network create --driver bridge contohnetwork
#if there's not driver's name, it will automatically configure as bridge

docker network rm contohnetwork
#you need to make sure that this network is not currently using by other container before deleting the network

docker network create --driver bridge mongonetwork

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=bobby --env MONGO_INITDB_ROOT_PASSWORD=password mongo:latest

docker image pull mongo-express:latestclear


docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://bobby:password@mongodb:27017" mongo-express:latest

docker container start mongodb mongodbexpress

#disconnect the network or take down the network bridge
docker network disconnect mongonetwork mongodb #takeout the container mongodb from mongonetwork

docker network connect mongonetwork mongodb # take in the mongodb to mongonetwork, mongonetwork said welcome to the club
