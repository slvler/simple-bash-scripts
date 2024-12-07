#!/bin/bash


# date in pure bash.

colors() {
    # Display the terminal palette.
    # Usage: colors
    for i in {0..15}; do
        ((i%8==0)) && printf "\\n"
        printf "%b" "\\e[48;05;${i}m  \\e[0m"
    done

    printf "\\n\\n"
}

colors


var="Hello World"
mainText="IP address query script via IP services"

#curl http://ip-api.com/json/24.48.0.1 -H "Accept: application/json"

function test()
{
    echo $var
}


function main()
{
    echo $mainText
    read -p ""
}

main


func1(){
  echo "${1}"
}


func1 "${1}"
