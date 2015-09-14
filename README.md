apidoc
======

Beautiful documentation for REST services.

Simple native client libraries with no dependencies.

Better REST services - written by hand with love.

http://www.apidoc.me/doc/

## Running site locally
1. Clone/download this repo
2. Get postgres up and running
  1. Goto the docker-postgres subfolder
  2. Build the postgres image
  
      ```docker build -t apidoc-postgres .```
  3. Configure the docker-compose.yml for postgres. Perhaps changing the port / volume location.
  4. Run 
  
      ```docker-compose up```
3. Get the apidoc www and api services up and running
  1. Build the apidoc docker image, this contains both www and api services
  
      ```docker build -t apidoc .```
  2. Configure docker-compose.yml, perhaps changing ports / volumes. You might want to map your ivy2 cache in to avoid long start up times
  3. Configure the www and api play configs (api/conf/application.conf and www/conf/application.conf) setting the URL of the other services / postgres database
  4. Start the containers
  
      ```docker-compose up```
4. Finally if you want client generators locally head over to the apidoc-generator projects. Once that is running you can point to it from the ui.
