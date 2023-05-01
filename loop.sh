#!/bin/bash


# for loop - basic construct
# for arg in [list]
# do
#  command(s)...
# done


school=(pen table computer door pencil)

for S in ${school[@]} ; do
    echo "element: $S"
done


# while loop - basic construct
#while [ condition ]
#do
 # command(s)...
# done


number=2

while [ $number -gt 0 ]; do
    echo "number: $number"
    number=$(($number - 1))
done

