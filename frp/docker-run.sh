#!/bin/bash

sudo docker run -d --restart=unless-stopped \
     --name frps \
	   --network host \
	   -v /data1/docker_deploy/frp/frps.ini:/etc/frp/frps.ini \
	   snowdreamtech/frps

