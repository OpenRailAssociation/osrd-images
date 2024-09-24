#!/bin/sh

: "${NGINX_PORT:=80}"

sed -i "s|%NGINX_PORT%|${NGINX_PORT}|g" /etc/nginx/conf.d/nginx.conf

exec "$@"
