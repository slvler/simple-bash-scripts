#!/bin/bash


# while
# until ? 
# for


# for loop - basic construct
# for arg in [list]
# do
#  command(s)...
# done


school=(pen table computer door pencil)

for S in ${school[@]} ; do
    echo "element: $S"
done


for i in {0..20}
do  
    echo $i
done


for i in {0..20..2}
do  
    echo $i
done


for (( i=0; i<5; i++ ))
do
    echo $i
done


for (( i=0; i<10; i++ ))
do
    if [ $i -gt 8 ]
    then
        break
    fi
    echo $i
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


echo "Enter to value"
read value

while [ $value -le 10 ]
do
    echo "$value"
    value=$(( value+1 ))
done

echo
                              
while [ "$val" != "stop" ]
do
  echo "Input variable #1 (stop to exit) "
  read val                    
  echo "variable #1 = $val"   
  echo
done

