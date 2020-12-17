#!/bin/bash

set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** FUNCTIONAL TEST(S) *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW Run basic functions described in readme: $ANSI_RESET"
docker run -i -d --rm --name tomcat -p 8888:8080 quay.io/ibmz/tomcat:10.0.0
#curl 0.0.0.0:8888
docker stop tomcat
