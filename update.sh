#!/bin/bash

# sudo control
if [ $(id -u) -ne 0 ]; then
    echo "must be run with root privileges"
    exit 1
fi

sudo apt-get -y update
sudo apt-get -y upgrade
