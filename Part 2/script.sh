
#FROM Instruction
docker build -t bobbyakyong/from from

#bobbyakyong@192 Part 2 % docker build -t bobbyakyong/from from
#[+] Building 6.5s (6/6) FINISHED                                                              docker:desktop-linux
# => [internal] load build definition from Dockerfile                                                          0.0s
# => => transferring dockerfile: 51B                                                                           0.0s
# => [internal] load metadata for docker.io/library/alpine:3                                                   4.9s
# => [auth] library/alpine:pull token for registry-1.docker.io                                                 0.0s
# => [internal] load .dockerignore                                                                             0.0s
# => => transferring context: 2B                                                                               0.0s
# => [1/1] FROM docker.io/library/alpine:3@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de  1.1s
# => => resolve docker.io/library/alpine:3@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de  0.0s
# => => sha256:9824c27679d3b27c5e1cb00a73adb6f4f8d556994111c12db3c5d61a0c843df8 3.80MB / 3.80MB                1.0s
# => exporting to image                                                                                        1.4s
# => => exporting layers                                                                                       0.0s
# => => exporting manifest sha256:8073c482cbdbbf650f70696ace78bf9d0d51f9b8ff0e035db089d039ca71fea4             0.0s
# => => exporting config sha256:9234e8fb04c47cfe0f49931e4ac7eb76fa904e33b7f8576aec0501c085f02516               0.0s
# => => exporting attestation manifest sha256:c483f7cd518f000305a10645e7466644f058c3ab0148d15b16f84e8fc3a54c0  0.0s
# => => exporting manifest list sha256:f743710baaa574b1195728ad0c245d8fb04d610474d69af94631dc5227c2eba6        0.0s
# => => naming to docker.io/bobbyakyong/from:latest                                                            0.0s
# => => unpacking to docker.io/bobbyakyong/from:latest                                                         1.3s
#
#View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/wr1d44oqumdjna2cd1oq2o3g3
#bobbyakyong@192 Part 2 %  pwd
#/Users/bobbyakyong/programming/java/springboot/Docker Guide Sample/Part 2
#bobbyakyong@192 Part 2 %

docker image ls
#REPOSITORY         TAG       IMAGE ID       CREATED         SIZE
#bobbyakyong/from   latest    f743710baaa5   2 weeks ago     12.8MB
#---------------------------

#RUN Instruction
# Run instruction, this proses will execute in image when at build stage.

docker build -t bobbyakyong/run run
#try to add --progress=plain in order to read the progress more detail
# --no-cache to disable build image from cache

#COMMAND / CMD Instruction
#cmd run only when docker container is running.
#for example
# CMD command param param
# CMD ["executeable", "param","param"]
docker build -t bobbyakyong/command command

#for see log from image container
docker image inspect bobbyakyong/command

#let's test it out
docker container create --name command bobbyakyong/command
docker container logs command

#Label Instruction Format
#LABEL <key>=<value>
#LABEL <key1>=<value1> <key2>=<value2>
#use for additional informmation
docker build -t bobbyakyong/label label

#for see log from image container
docker image inspect bobbyakyong/label

#let's test it out
docker container create --name command bobbyakyong/command

docker container logs command

#ADD INSTRUCTION
#for example
#ADD source destionation
#ADD world.txt hello
#its mean copy file world.txt to folder hello

docker build -t bobbyakyong/add add
#let's test it out

docker container create --name add bobbyakyong/add

docker container start add

docker container logs add

#COPY Instruction
#different between copy and add
#add is able to detect command, for example if the file is not exist,
#it will download file automatically or if the file is a gzip or tar.gz file, it will extract automatically
#but COPY, it's only copy file. it's a duplicator.

docker build -t bobbyakyong/copy copy

docker container create --name copy bobbyakyong/copy

docker container start copy

docker container logs copy

#DOCKERIGNORE FILE
# .dockerignore, it's something like .gitignore

