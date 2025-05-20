FROM nginx:alpine

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY certs /etc/nginx/certs
COPY gen-conf.sh /docker-entrypoint.d/gen-conf.sh
RUN chmod +x /docker-entrypoint.d/gen-conf.sh

CMD ["/docker-entrypoint.d/gen-conf.sh"]