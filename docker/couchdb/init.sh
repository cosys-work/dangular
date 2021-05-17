#!/bin/bash

docker run -d --name couch-pot -p 5984:5984 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=passwd couchdb:latest
docker build -t couch-top .
