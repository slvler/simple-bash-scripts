#!/bin/bash

read -p "select or pass city? " city

if [ "$city" != "" ]; then
    curl https://wttr.in/$city
else
    curl https://wttr.in/
fi
