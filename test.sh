#!/bin/bash
set -x

REPO=$1
TAG=$2
# Install dgoss
curl -L https://raw.githubusercontent.com/aelsabbahy/goss/master/extras/dgoss/dgoss
chmod +rx ./dgoss && sudo mv /usr/local/bin/dgoss

# Install goss
curl -L https://github.com/aelsabbahy/goss/releases/download/v0.3.6/goss-linux-amd64 -o ./goss
export GOSS_PATH=./goss
dgoss run --hostname worker-1 $REPO:$TAG