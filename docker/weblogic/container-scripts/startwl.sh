#!/bin/bash

sh startWebLogic.sh &
sleep 20

sh startNodeManager.sh
sleep 10

#SERVER_NAME=store
#WEBLOGIC_USERNAME=username
#WEBLOGIC_PASSWORD=welcome1
#HOST_NAME=localhost
#PORT=8001

#source /u01/oracle/wlserver/server/bin/setWLSEnv.sh

#java weblogic.Admin -url t3://${HOST_NANME}:${PORT} -username ${WEBLOGIC_USERNAME} -password ${WEBLOGIC_PASSWORD} CREATE -mbean mymedrec:Name=${SERVER_NAME},Type=Server

#java weblogic.Admin -url t3://${HOST_NAME}:${PORT} -username ${WEBLOGIC_USERNAME} -password ${WEBLOGIC_PASSWORD} CREATE_POOL ATGProductionDSAK-temp url=jdbc:oracle:thin:@localhost:1521:xe,driver=oracle.jdbc.xa.client.OracleXADataSource,props=user=atgcore;password=atgcore,testConnsOnReserve=false,testTableName=SYSTABLES,initialCapacity=2,maxCapacity=10,capacityIncrement=2,allowShrinking=true