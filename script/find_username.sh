#!/bin/bash

github()
{
    baseurl="https://github.com"
    result=$(curl -I "$baseurl/$username" | grep -w "HTTP" | awk '{print $2}')

    if [ "$result" == "200" ]; then
        echo "Success: HTTP 200"
    else
        echo "Failure: HTTP $result"
    fi
}

read -p "Enter to username: " username
github $username
