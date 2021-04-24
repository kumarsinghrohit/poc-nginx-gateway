#! /bin/bash
set -eu

envsubst '${APPLICATION_PORT} ${APPLICATION_PROTO}' < /etc/nginx/inc/proxy_header.conf.template > /etc/nginx/inc/proxy_header.conf
cp /etc/nginx/conf.d/default.conf.template /etc/nginx/conf.d/default.conf

exec "$@"
nginx
