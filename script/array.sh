#!/bin/bash


my_array=(apple banana "Fruit Basket" strawberry orange)
new_array[2]=apricot


#array count
echo  ${#my_array[@]}

# single value
echo ${my_array[2]}
echo ${my_array[3]}


Fruit=(apple banana strawberry orange)
for N in ${Fruit[@]} ; do
    echo "element: $N"
done

NAMES=(Joe Jenny Sara Tony)
for N in ${NAMES[@]} ; do
  echo "My name is $N"
done  



car=("BMW" "Toyota" "Honda")

echo "${car[@]}"
echo "${car[1]}"
echo "first item"
echo "${!car[@]}"
