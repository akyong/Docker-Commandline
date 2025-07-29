
docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest
#CONTAINER ID   NAME          CPU %     MEM USAGE / LIMIT     MEM %     NET I/O          BLOCK I/O     PIDS
#c98054321b67   smallnginx    0.00%     7.504MiB / 100MiB     7.50%     872B / 126B      0B / 12.3kB   9
#3b346e99069d   contohmongo   0.93%     125.4MiB / 3.822GiB   3.21%     65.5kB / 215kB   0B / 7.42MB   51
#7c41624c669b   contohnginx   0.00%     7.52MiB / 3.822GiB    0.19%     4.4kB / 3.06kB   0B / 12.3kB   9
#29c4630e57d2   contohredis   0.54%     9.594MiB / 3.822GiB   0.25%     1.8kB / 126B     0B / 16.4kB   6

