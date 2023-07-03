#!/bin/bash
rm -rf ./certs/defence-in-depth*
docker run \
    -v $PWD/cert-req.conf:/opt/cert-req.conf \
    -v $PWD/certs:/opt/certs \
    nginx:mainline sh -c \
    "openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /opt/certs/defence-in-depth.key -out /opt/certs/defence-in-depth.crt -config /opt/cert-req.conf"