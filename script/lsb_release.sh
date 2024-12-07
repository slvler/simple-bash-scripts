#!/bin/bash


# sudo control
if [ $(id -u) -ne 0 ]; then
    echo "must be run with root privileges"
    exit 1
fi

# debian control
if [ -f /etc/debian_version ]; then
    # exists
    dpkg -l | grep lsb-core > /dev/null
    if [ $? -eq 1 ]; then
         echo "install..."
         apt-get install lsb-core -y
    else
        echo "lbs_release already installed"
    fi
else
    echo "A system we don't recognize?"
    exit 1
fi


lsb_release -a
lsb_release -as

exit 0