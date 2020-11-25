#!/bin/bash

sudo docker run -d --restart=unless-stopped \
           --name portainer \
           --hostname portainer \
           --net br_nic3 \
           --ip 10.58.13.3 \
           --init \
           --label visiable=false \
           -v $(pwd)/data:/data \
           -v /var/run/docker.sock:/var/run/docker.sock \
           portainer/portainer:latest \
           --no-analytics \
           --bind 0.0.0.0:80 \
           --tunnel-port 8000 \
           --hide-label visiable=false
