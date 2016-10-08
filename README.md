# Contained NFS Server

This will create an NFS Server and map ports on the host. Based on CentOS 7.

`docker run -d --net=host --privileged --name nfs-server katacoda/contained-nfs-server:centos7 /exports/docker-registry /exports/git`
