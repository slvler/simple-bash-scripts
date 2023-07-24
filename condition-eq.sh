#!/bin/bash

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