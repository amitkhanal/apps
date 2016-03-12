#!/bin/bash

# Update HOST with actual value, uniquely generated by Docker on each start
sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" $ORACLE_HOME/network/admin/listener.ora
sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" $ORACLE_HOME/network/admin/tnsnames.ora


#/etc/init.d/oracle-xe start

#sqlplus sys/oracle as sysdba @/opt/create-user.sql

while true; do
    pmon=`ps -ef | grep pmon_$ORACLE_SID | grep -v grep`

    if [ "$pmon" == "" ]
    then
        date
        /etc/init.d/oracle-xe start
    fi
    sleep 1m
done;
