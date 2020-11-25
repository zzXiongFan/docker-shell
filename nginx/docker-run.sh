#!/bin/bash

set -ex

docker run -d --restart=unless-stopped \
           --name nginx \
           --net host \
           -v /etc/timezone:/etc/timezone:ro \
           -v /etc/localtime:/etc/localtime:ro \
           -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro \
           -v $(pwd)/conf.d:/etc/nginx/conf.d:ro \
           -v $(pwd)/log:/var/log/nginx \
           nginx:latest

