#!/bin/sh

# Remplace les variables dans le template
envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Lance nginx au premier plan
exec nginx -g 'daemon off;'