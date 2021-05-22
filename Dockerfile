## Stage 1 - Will include CI/CD steps

## Stage 2
FROM nginx:mainline

COPY dist/ /usr/share/nginx/html
