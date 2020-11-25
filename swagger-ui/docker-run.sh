#!/bin/bash

CONTAINER_NAME="swagger-ui"
CONTAINER_NET=br_nic3
CONTAINER_IP=10.58.13.4
CONTAINER_HOSTNAME="openapi.ana"

sudo docker run -d --restart=unless-stopped \
           --name ${CONTAINER_NAME} \
           --hostname ${CONTAINER_HOSTNAME} \
           --net ${CONTAINER_NET} \
           --ip ${CONTAINER_IP} \
           -e PORT=80 \
           -e SWAGGER_JSON=/ana2020-oas3.yaml \
           -v $(pwd)/ana2020-oas3.yaml:/ana2020-oas3.yaml:ro \
           swaggerapi/swagger-ui
