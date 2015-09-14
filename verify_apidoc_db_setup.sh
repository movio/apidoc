#!/bin/bash
psql -h dockerhost -p 5432 -U postgres -c "CREATE DATABASE apidoc;"
psql -h dockerhost -p 5432 -U postgres -c "CREATE USER web WITH PASSWORD 'web';"
psql -h dockerhost -p 5432 -U postgres -c "GRANT ALL ON DATABASE apidoc TO web;"

cd /usr/share/apidoc/schema

./dev.rb
#password input?
