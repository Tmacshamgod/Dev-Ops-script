#!/bin/bash

hostlist=(ip1 ip2)
for host in ${hostlist[@]};
do
    sshpass -p 'passpord' scp ./hosts root@${host}:/etc/hosts
    echo "${host} copy done..."
done
