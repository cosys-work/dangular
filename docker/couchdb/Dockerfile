FROM node:14.17.0-alpine3.11


RUN apk update
RUN apk add --no-cache bash curl git jq ca-certificates

RUN npm config set unsafe-perm true \
  && npm install -g add-cors-to-couchdb \
  && npm config set unsafe-perm false

WORKDIR /root

COPY ./docker-entrypoint.sh /root/docker-entrypoint.sh

CMD bash ./docker-entrypoint.sh
