#!/bin/bash


name="key"

if [[ "$name" = "value" ]]
then
	echo "success"
elif [[ "$name" = "key" ]]
then
	echo "try2"
elif [[ "$name" = "loop" ]]
then
	echo "try3"
else
	echo "fail"
fi