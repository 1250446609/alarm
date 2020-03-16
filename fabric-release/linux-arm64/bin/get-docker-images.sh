#!/bin/bash -eu
# Copyright London Stock Exchange Group All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#
# This script pulls docker images from the Dockerhub hyperledger repositories

# set the default Docker namespace and tag
DOCKER_NS=hyperledger
ARCH=arm64
VERSION=1.2.1-snapshot-aabf3a632
BASE_DOCKER_TAG=arm64-0.4.10

# set of Hyperledger Fabric images
FABRIC_IMAGES=(fabric-peer fabric-orderer fabric-ccenv fabric-tools)

for image in ${FABRIC_IMAGES[@]}; do
  echo "Pulling ${DOCKER_NS}/$image:${ARCH}-${VERSION}"
  docker pull ${DOCKER_NS}/$image:${ARCH}-${VERSION}
done

THIRDPARTY_IMAGES=(fabric-kafka fabric-zookeeper fabric-couchdb fabric-baseos)

for image in ${THIRDPARTY_IMAGES[@]}; do
  echo "Pulling ${DOCKER_NS}/$image:${BASE_DOCKER_TAG}"
  docker pull ${DOCKER_NS}/$image:${BASE_DOCKER_TAG}
done
