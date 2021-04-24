FROM nginx

COPY ./nginx.conf.template /etc/nginx/conf.d/default.conf.template
COPY ./proxy_header.conf.template /etc/nginx/inc/proxy_header.conf.template
COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
