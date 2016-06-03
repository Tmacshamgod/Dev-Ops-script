#!/bin/bash

APP_HOME=/home/admin/whale

CLASSPATH=$APP_HOME
for i in "$APP_HOME"/lib/*.jar; do
   CLASSPATH="$CLASSPATH":"$i"
done

java -Xdebug -Xrunjdwp:transport=dt_socket,suspend=y,server=y,address=5005 -classpath $CLASSPATH com.cloutropy.platform.scheduler_export.Main taskName=InputPeerOnlineTime executeTime=20160428 partition=recorddate export=false local=false hour=true time=15 cleanup=true 
