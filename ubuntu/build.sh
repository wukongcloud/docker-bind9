#!/bin/bash

docker build -t wukongcloud/bind9:9.16 .
docker tag wukongcloud/bind9:9.16 wukongcloud/bind9:9.16-ubuntu 
docker tag wukongcloud/bind9:9.16 wukongcloud/bind9:ubuntu 
docker tag wukongcloud/bind9:9.16 wukongcloud/bind9:latest 
