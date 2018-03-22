#!/bin/bash

docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
# docker push dojot/dredd-python:2.7
docker push dojot/dredd-python:3.6

