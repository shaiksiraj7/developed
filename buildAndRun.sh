#!/bin/sh
mvn clean package && docker build -t project1200.1/project1200.1 .
docker rm -f project1200.1 || true && docker run -d -p 8080:8080 -p 4848:4848 --name project1200.1 project1200.1/project1200.1