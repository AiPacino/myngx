#!/usr/bin/env bash
docker build -t munginx:0.01 .
docker stop munginx
docker rm munginx
docker run -t -v /Users/aipacino/Desktop/software/docker/nginx/config:/etc/nginx/conf.d --name munginx munginx:0.01