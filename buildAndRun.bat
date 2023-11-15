@echo off
call mvn clean package
call docker build -t project1200.1/project1200.1 .
call docker rm -f project1200.1
call docker run -d -p 8080:8080 -p 4848:4848 --name project1200.1 project1200.1/project1200.1