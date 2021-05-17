## Stage 1

FROM node:14.17.0-alpine3.11

RUN apk add --no-cache make g++

WORKDIR /app

COPY . .

RUN yarn run install:clean
RUN yarn run build

## Stage 2
FROM nginx:mainline
COPY nginx.conf /etc/nginx/nginx.conf
COPY /app/dist/ /usr/share/nginx/html
