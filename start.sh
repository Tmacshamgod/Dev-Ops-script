#!/bin/bash

APP_HOME=/home/admin/whale

CLASSPATH=$APP_HOME
for i in "$APP_HOME"/lib/*.jar; do
   CLASSPATH="$CLASSPATH":"$i"
done

nohup java -classpath $CLASSPATH com.cloutropy.platform.scheduler_export.Main & 
# more concise way
# nohup java -classpath .:./lib/* com.cloutropy.platform.scheduler_export.Main &
