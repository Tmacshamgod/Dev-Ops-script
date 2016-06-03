#!/bin/bash

hostlist=(ip1 ip2)
for host in "${hostlist[@]}"; do
    hostname=$(ssh admin@$host hostname)
    name=$(cat /home/admin/hosts | grep $host | awk '{print $2}')
    if [ "$hostname" == "$name" ]; then
	echo "$host matches!"  
    else 
	echo "$host not matches!"
    fi;
done
