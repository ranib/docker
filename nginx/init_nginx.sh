#!/bin/sh
set -e

cp -R /app/etc/* /etc

chmod +x /etc/service/*/run

mkdir -p /etc/nginx/ssl

mkdir -p /app/www

echo "<html><head>Success</head><body><p><a href="https://hub.docker.com/u/funkygibbon/">funkygibbon</a>/nginx:${NGINX_VERSION}-${OPENSSL_VERSION} - `date`</p>" > /app/www/index.html
