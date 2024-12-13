#!/bin/bash

function result() {
    statement=$(curl "http://ip-api.com/json/")

    jq_query=$(printf '.%s, ' "$@")
    jq_query="[${jq_query%, }]"

    echo $statement | jq "$jq_query"
}
result $@
