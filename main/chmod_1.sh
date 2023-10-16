#!/bin/bash


NC=$'\e[0m'

# Background
REDBg=$'\e[0;41m'
GREENBg=$'\e[0;42m'
YELLOWBg=$'\e[0;43m'
BLUEBg=$'\e[0;44m'
PINKBg=$'\e[0;45m'
CYANBg=$'\e[0;46m'
WHITEBg=$'\e[0;47m'


# Color
RED=$'\e[0;31m'
GREEN=$'\e[0;32m'
YELLOW=$'\e[0;33m'
BLUE=$'\e[0;34m'
PINK=$'\e[0;35m'
CYAN=$'\e[0;36m'
WHITE=$'\e[0;37m'


# Underline
URED=$'\e[4;31m'
UGREEN=$'\e[4;32m'
UYELLOW=$'\e[4;33m'
UBLUE=$'\e[4;34m'
UPINK=$'\e[4;35m'
UCYAN=$'\e[4;36m'
UWHITE=$'\e[4;37m'



echo "${YELLOW} Specify the name of the file you want to create and your permissions: ${NC}"
read filename filepermission



function read()
{
    echo "${GREENBg} read function ${NC}"
    touch $filename
    chmod 400 $filename
    echo "${GREENBg} create file:${NC}" $filename
}

function write()
{
    echo "${GREENBg} write function ${NC}"
    touch $filename
    chmod 700 $filename
    echo "${GREENBg} create file:${NC}" $filename
}

function exec()
{
    echo "${GREENBg} exec function ${NC}"
    touch $filename
    chmod -R 777 $filename
    echo "${GREENBg} create file:${NC}" $filename
}


if [ "$filepermission" == "400" ]
then
   read
elif [ "$filepermission" == "700" ]
then  
   write
elif [ "$filepermission" == "777" ]
then  
   exec
else 
   echo "${BLUEBg} not permission ${NC}"
fi