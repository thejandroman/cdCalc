#!/bin/bash

# Is root?
if [[ $UID -ne 0 ]]; then
    echo "$0 must be run as root"
    exit 1
fi

# Modify sources.list to allow all repos
sed -i "s/# deb /deb /g" /etc/apt/sources.list

# Add Mongo repo and keys
echo "# MongoDB Repo" >> /etc/apt/sources.list
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10

# Install packages
aptitude update
aptitude -y install dkms build-essential emacs23-nox git mongodb-10gen

# Git clone
mkdir -p /opt/git
rm -rf /opt/git/*
git clone git://github.com/thejandroman/thejandroman.git
