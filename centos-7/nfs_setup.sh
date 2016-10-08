#!/bin/bash
mkdir -p /exports
for mnt in "$@"; do
  mkdir -p $mnt
  chmod 777 $mnt
  echo "$mnt *(rw,sync,no_subtree_check,no_root_squash,fsid=0)" >> /etc/exports
done

exportfs -a
rpcbind
rpc.statd
rpc.nfsd

exec rpc.mountd --foreground
