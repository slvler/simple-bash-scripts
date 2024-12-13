#!/bin/bash

name = "john"

if [ "john" == "$name" ]
then
    echo "condition is true"
else
    echo "condition is false"
fi


### Integer Comparison
# -gt
# -ne
# -le
# -ge
# -eq
# -lt


# String Comparison

# ==
# <
# !=
# -z
# -n

count=10


#eşittir
if [ $count -eq 9 ]
then
    echo "condition is true"
else
    echo "condition is false"
fi


#küçüktür
if [ $count -gt 9 ]
then
    echo "condition is true"
else
    echo "condition is false"
fi

if (( $count > 9 ))
then
    echo "condition is true"
else
    echo "condition is false"
fi

if (( $count < 9 ))
then
    echo "condition is true"
else
    echo "condition is false"
fi


if (( $count < 9 ))
then
    echo "condition is true"
elif (( $count == 10))
then
    echo "condition is equl"
else
    echo "condition is false"
fi


age=19

if [ "$age" -gt 18 ] && ["$age" -lt 15 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi


echo; echo "Hit a key, then hit return."
read Keypress

case "$Keypress" in
  [[:lower:]]   ) echo "Lowercase letter";;
  [[:upper:]]   ) echo "Uppercase letter";;
  [0-9]         ) echo "Digit";;
  *             ) echo "Punctuation, whitespace, or other";;
esac


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



echo "Enter filename"
read filename


if [[ -f "$filename" ]]
then
    while IFS= read -r line
    do
        echo "$line"
    done < $filename
else
    echo "$filename doesn't exist"
fi
