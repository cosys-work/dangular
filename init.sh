#!/bin/bash
docker build -t d-angular .
docker run --name d-angular-nginx -d -p 8080:80 d-angular
