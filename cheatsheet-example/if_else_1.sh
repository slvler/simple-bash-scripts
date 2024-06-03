#!/bin/bash

NUMBER=30

if [ $NUMBER -ge 100 ]
then
    echo "100point"
elif [ $NUMBER -ge 80 ]
then
    echo "80 point"
elif [ $NUMBER -ge 40 ]
then
    echo "40 point"
else
    echo "fail"
fi
