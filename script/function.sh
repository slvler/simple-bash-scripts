#!/bin/bash

getDate(){
    date
}

getDate

# MM-DD-YYYY format
getDateFormatMMDDYYYY(){
    d=`date +%m-%d-%Y`
    echo $d
}

getDateFormatMMDDYYYY


getDateFormatMMYYYY(){
    d=`date +%m-%Y`
    echo $d
}

getDateFormatMMYYYY

# arguments
print_something() {
    echo Hello $1 $2
}

print_something John Doe


# return function
return_function () {
    echo Hello $1
    return 255
}

return_function Vill
echo $?




function funcName()
{
    echo "this is new func"
}

funcName

function funcEcho()
{
    echo $1
}

funcEcho hi

function funcPrint()
{
    echo $1 $2 $3 $4 $5
}

funcPrint hi hello world bash script

function funcCheck()
{
    text="Hello world"
    echo $text
}

funcCheck





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



# string output
# read
# function output

echo $1 $2 $3

args=("$@")
#echo ${args[0]} ${args[1]} ${args[2]}
echo $@ / dinamic arguments
echo $# / variable count

printf "Year: "
read year
echo $year
