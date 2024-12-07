#!/bin/bash

echo "command substitution"


#pwd_command=`pwd`

pwd_command_variable=$(ls)

echo "pwd command" $pwd_command_variable


command=$(ls)
