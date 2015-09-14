#!/bin/bash

cd /usr/share/apidoc/

./verify_apidoc_db_setup.sh

case $1 in
    "api" )
        sbt "api/run 9001" ;;
    "www" )
        sbt "www/run 9000" ;;
esac
