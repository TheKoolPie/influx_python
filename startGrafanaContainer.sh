#!/bin/sh

docker run -d \
	-p 3000:3000 \
	-v grafana:/var/lib/grafana \
	grafana/grafana
