#!/bin/bash
set -x 

REPO=$1
TAG=$2
# Install dgoss
curl -L https://raw.githubusercontent.com/aelsabbahy/goss/master/extras/dgoss/dgoss -o ./dgoss
chmod +rx ./dgoss

# Install goss
curl -L https://github.com/aelsabbahy/goss/releases/download/v0.3.6/goss-linux-amd64 -o ./goss
ls
export GOSS_PATH=./goss
echo $GOSS_PATH
dgoss run --hostname worker-1 $REPO:$TAG