#!/bin/sh
# description: WSO AM Service
# processname: wso2am-1.10.0
# chkconfig: 234 20 80

#Set script defaults
APP="WSO2 API Manager and ESB"
CARBON_HOME_AM="/opt/wso2am-1.10.0"
CARBON_HOME_ESB="/opt/wso2esb-4.9.0"

CMDESB="$CARBON_HOME/bin/wso2server.sh"
CMDAM="$CARBON_HOME/bin/wso2server.sh -DportOffset=10"

case "$1" in
start)
   echo "Starting $APP ..."
   $CMDAM start
   $CMDESB start
;;
*)
exit 1
esac
