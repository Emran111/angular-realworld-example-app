#!/bin/bash
docker build -t dockerangular .
docker run -d -p 8001:80 --name dockerangular dockerangular
