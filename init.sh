#!/bin/bash
yarn install
npx nx build --prod

docker build -t d-angular .

if [[ "$(docker images -q d-angular-nginx:latest 2> /dev/null)" == "" ]]; then
  docker kill d-angular-nginx
  docker rm d-angular-nginx
fi

docker run --name d-angular-nginx -d -p 8080:80 d-angular
