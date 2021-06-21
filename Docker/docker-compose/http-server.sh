#!/bin/bash

case $1 in
create)
  docker run -d \
         --name http-server \
         -p 8080:8000 \
         --restart unless-stopped \
         devops-practise/http-server:slim
  exit 0
  ;;
start)
    docker start http-server
    exit 0
  ;;
stop)
    docker stop http-server
    exit 0
  ;;
destroy)
      docker stop http-server
      exit 0
  ;;

esac