#!/bin/sh
docker build -t ts3 .
docker run -d -p 9987:9987/udp -p 30033:30033 -p 10011:10011 ts3
