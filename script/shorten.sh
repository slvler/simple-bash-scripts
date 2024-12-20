#!/bin/bash

base_url=https://cleanuri.com/api/v1/shorten
read -p "link: " text

query=$(curl -s -X POST -d "url=$text" "$base_url")

[ -z "$query" ] && { echo "An empty response was received."; exit 1; }

def=$(echo "$query" | jq -r '.result_url')

if [ "$def" = "null" ] || [ -z "$def" ]; then
    echo "Could not retrieve shortened URL."
    exit 1
fi

echo "Abbreviated URL: $def"
