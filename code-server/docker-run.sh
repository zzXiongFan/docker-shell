#!/bin/bash

docker run -d --restart=unless-stopped \
           --name code-server \
           --hostname code-server \
           --net br_nic3 \
           --ip 10.58.13.2 \
           --cap-add SYS_PTRACE \
           --sysctl net.ipv4.ip_unprivileged_port_start=0 \
           -v code-server:/home/coder/project \
           -e PASSWORD=code-server \
           -e PORT=80 \
           xczh/code-server:latest
