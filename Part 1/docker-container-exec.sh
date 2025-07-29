
# in order to get into the container, we can execute bash command in the container with exec

docker container exec -i -t contohredis /bin/bash
#bobbyakyong@192 Docker Guide Sample % docker container exec -i -t contohredis /bin/bash
#root@29c4630e57d2:/data# cd /
#root@29c4630e57d2:/# ls
#bin  boot  data  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
#root@29c4630e57d2:/# redis-cli
#127.0.0.1:6379> set bobby "Java Developer"
#OK
#127.0.0.1:6379> get bobby
#"Java Developer"
#127.0.0.1:6379> exit
#root@29c4630e57d2:/# exit
#exit
#bobbyakyong@192 Docker Guide Sample %
