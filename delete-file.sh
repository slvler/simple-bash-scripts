#!/bin/bash

echo "Enter filename"
read filename


if [[ -f "$filename" ]]
then
    rm $filename
    echo "file hass been deleted successfully"
else
    echo "$filename doesn't exist"
fi