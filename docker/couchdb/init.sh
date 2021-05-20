#!/bin/bash

if [[ "$(docker images -q couch-pot:latest 2> /dev/null)" == "" ]]; then
  docker stop couch-pot
  docker rm couch-pot
fi

docker run -d --name couch-pot -p 5984:5984 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=passwd couchdb:latest
docker build -t couch-top .
docker run --name couch-top couch-top
