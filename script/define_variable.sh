#!/bin/bash


VAR_PATH=$HOME
VAR=$USER
HOSTNAME=$HOSTNAME
FILE="touch.txt"


echo "$VAR_PATH"
echo "$VAR"
echo "$HOSTNAME"

ls "$VAR_PATH"
touch "$FILE"