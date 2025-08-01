
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
# Run instruction, this proses will execute in image when at build stage. So when we try to build an image, on the pros