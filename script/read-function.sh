#!/bin/bash


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
