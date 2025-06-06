#!/bin/bash

((sum=25+35))
echo $sum

((area=5*5))
echo $area

read -p "enter to value: " value
read -p "enter to value: " value1

result=$((value + value1))
echo "The sum is: $result"
