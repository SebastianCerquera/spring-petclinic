#!/bin/bash
set -x

if [ $1 == "petclinic" ]; then
    cd /opt/spring-petclinic
    mvn tomcat7:run
else
    exec "$@"
fi           
