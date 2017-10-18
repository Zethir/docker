#!/bin/sh
docker build -t ts3 .
docker run -d -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ts3
