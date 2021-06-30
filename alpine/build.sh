#!/bin/bash

docker build -t wukongcloud/bind9:9.16-alpine .
docker tag wukongcloud/bind9:9.16-alpine wukongcloud/bind9:alpine
