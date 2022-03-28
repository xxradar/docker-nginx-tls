#!/bin/bash
docker run --restart always -d -v $PWD/conf:/etc/nginx/conf.d/ -v $PWD/certs:/certs -p 8080:80 -p 8443:443 nginx

