#!/bin/bash


echo "hello" "world" "text" "string"

echo "Hello World"

hello="hello world"

echo $hello


echo "hello" \
        "text" \
        "apple" \
        "orange"


echo -e "hello""\nhi"

echo -e "school\nhome"

echo "Lorem Ipsum is simply dummy" > ./file.txt

echo "Lorem Ipsum is simply dummy text of and typesetting industry" "\"the printing\""

a='lorem ipsum'
b='simply dummy text of the printing'

c="${a} ${b}"

echo "${c}"



echo -n "Hello"
echo "World"
echo -n "No"
echo "text"


VAR1="lorem ipsum"
VAR2="simply dummy text of the printing"

VAR1+="$VAR2"
echo "$VAR1"


TEXT=$(cat<<'END_HEREDOC'
lorem ipsum
simply dummy text 
of the printing
END_HEREDOC
)

echo "$TEXT"