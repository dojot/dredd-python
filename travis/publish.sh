#!/bin/bash -ex

version="latest"
if [ $TRAVIS_BRANCH != "master" ] ; then
  version=$TRAVIS_BRANCH
fi
tag=$TRAVIS_REPO_SLUG:$version

docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
docker tag dredd-python2 ${tag}
docker push $tag
