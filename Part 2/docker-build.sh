
docker build -t nameimage/app:appversion folder-dockerfile
#for example
# -t = tag
# bobby/app => it is a name of image
# 1.0.0 => it's a version of image
# folder-dockerfile => we must change this file. Normally, we use 'Dockerfile' without extension

docker build -t bobby/app:1.0.0 folder-dockerfile

#Instruction Format
#INSTRUCTION argumenst

#instruction is a command in Dockerfile.
#arguments is a next instruction, like do something e.x move, rename, or delete or something.
