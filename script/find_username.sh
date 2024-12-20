#!/bin/bash

set -euo pipefail

if [[ $# -ne 0 ]]; then
  echo "ERROR: This script does not accept parameters." >&2
  exit 1
fi

github(){
baseurl="https://github.com"
result=$(curl -I "$baseurl/$username" | grep -w "HTTP" | awk '{print $2}')

if [ "$result" == "200" ]; then
    echo "Success: HTTP 200"
else
    echo "Failure: HTTP $result"
fi
}

reddit(){
baseurl="https://www.reddit.com/user/"
result=$(curl -I "$baseurl/$username" | grep -w "HTTP" | awk '{print $2}')

if [ "$result" == "200" ]; then
    echo "Success: HTTP 200"
else
    echo "Failure: HTTP $result"
fi
}

devto(){
baseurl="https://dev.to"
result=$(curl -I "$baseurl/$username" | grep -w "HTTP" | awk '{print $2}')

if [ "$result" == "200" ]; then
    echo "Success: HTTP 200"
else
    echo "Failure: HTTP $result"
fi
}

medium(){
baseurl="https://medium.com/@"
result=$(curl -I "$baseurl/$username" | grep -w "HTTP" | awk '{print $2}')

if [ "$result" == "200" ]; then
    echo "Success: HTTP 200"
else
    echo "Failure: HTTP $result"
fi
}

youtube(){
baseurl="https://www.youtube.com/@"
result=$(curl -I "$baseurl/$username" | grep -w "HTTP" | awk '{print $2}')

if [ "$result" == "200" ]; then
    echo "Success: HTTP 200"
else
    echo "Failure: HTTP $result"
fi
}
read -p "Enter to username: " username
#github $username
#reddit $username
youtube $username
