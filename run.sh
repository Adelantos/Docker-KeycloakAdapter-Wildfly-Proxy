#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker rm wildflykeycloak-adapter
docker build --no-cache --tag=adelantos/wildflykeycloak-adapter .
docker run -it -p 8080:8080 --name=wildflykeycloak-adapter --network=host \
    adelantos/wildflykeycloak-adapter