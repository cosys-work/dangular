## Stage 1

FROM node:14.17.0-alpine3.11

RUN apk add --no-cache make g++ python

WORKDIR /app

COPY dist/ .

## Stage 2
FROM nginx:mainline

COPY --from=0 /app/ /usr/share/nginx/html
