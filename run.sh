#!/usr/bin/env bash
cd /usr/src/dockernginx
git pull
cp -rf nginx.conf /etc/nginx/nginx.conf
/usr/sbin/nginx -c /etc/nginx/nginx.conf
/usr/sbin/nginx -s reload
