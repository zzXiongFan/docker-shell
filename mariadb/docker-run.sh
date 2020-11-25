#!/bin/bash

set -e

sudo docker run -d --restart=unless-stopped \
                --name mariadb \
                --net br_nic3 \
                --ip 10.58.13.20 \
                -v /etc/timezone:/etc/timezone:ro \
                -v /etc/localtime:/etc/localtime:ro \
                -v $(pwd)/volume/mysql:/var/lib/mysql \
                -v $(pwd)/volume/log:/var/log/mariadb \
                mariadb:10
