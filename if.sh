#!/bin/bash

name="John"

surname="Doe"

if [[ "$name" = "John" ]]
then
	echo 'success'
else
    echo 'fail'    
fi


if [[ "$surname" = "Doee" ]]
then
	echo 'success'
else
    echo 'fail'    
fi
