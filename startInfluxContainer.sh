#!/bin/sh

docker run -d \
	-p 8086:8086 \
	-v influxdb:/var/lib/influxdb \
	--name influxdb \
	influxdb:1.8.6
