#!/bin/bash

function result() {
    statement=$(curl "https://jsonplaceholder.typicode.com/todos/$1")
    echo $statement | jq $2
}
result $1 $2