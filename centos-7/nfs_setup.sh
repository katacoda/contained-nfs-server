#!/bin/bash
mkdir -p /exports
for mnt in "$@"; do
  mkdir -p $mnt
  chown nfsnobody:nfsnobody $mnt
  chmod 777 $mnt
  echo "$mnt *(rw,sync,no_root_squash)" >> /etc/exports
done

exportfs -a
rpcbind
rpc.statd
rpc.nfsd

exec rpc.mountd --foreground
