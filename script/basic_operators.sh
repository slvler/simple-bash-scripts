#!/bin/bash

let a=3 b=7 c=a+b

echo "$a $b $c"


num_1=10
num_2=2

expr $num_1 + $num_2
expr $num_1 - $num_2
expr $num_1 \* $num_2
expr $num_1 / $num_2



VAR=1

echo $VAR

VAR=$((VAR+=1))
echo "$VAR"

VAR=$((VAR+=1))
echo "$VAR"

VAR=$((VAR+=1))
echo "$VAR"


NUMBER=5

echo $NUMBER

NUMBER=$((NUMBER-=1))
echo "$NUMBER"

NUMBER=$((NUMBER-=1))
echo "$NUMBER"

NUMBER=$((NUMBER-=1))
echo "$NUMBER"


point_1=10
point_2=2

echo "$((point_1 % point_2))"


point_3=$((8**2))
echo "$point_3"


point_4=$((3(2+1)))
echo "$point_4"