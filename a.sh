#!/bin/bash
sudo docker ps -a | grep -v CONTAINER | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm -f
sudo docker images -q | grep -v IMAGE | awk '{print $1}' | xargs --no-run-if-empty sudo docker rmi -f
