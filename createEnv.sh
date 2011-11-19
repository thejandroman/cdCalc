#!/bin/bash

# Is root?
if [[ $UID -ne 0 ]]; then
    echo "$0 must be run as root"
    exit 1
fi

# Add Mongo repo and keys
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" > /etc/apt/sources.d/10gen
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10

# Install packages
apt-get update
apt-get install mongodb-10gen