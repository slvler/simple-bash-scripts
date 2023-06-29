#!/bin/bash


REDBg=$'\e[0;41m'
GREENBg=$'\e[0;42m'
YELLOWBg=$'\e[0;43m'
NC=$'\e[0m'



echo "Which section:"
read section

echo "Which row:"
read row



case "$section" in
'people')
    statement=$(curl https://swapi.dev/api/people/$row)
    echo "${GREENBg} process successfull ${NC}"
    echo $statement
;;
'films')
    statement=$(curl https://swapi.dev/api/films/$row)
    echo "${GREENBg} process successfull ${NC}"
    echo $statement
;;
'starships')
    statement=$(curl https://swapi.dev/api/starships/$row)
    echo "${GREENBg} process successfull ${NC}"
    echo $statement
;;
'vehicles')
    statement=$(curl https://swapi.dev/api/vehicles/$row)
    echo "${GREENBg} process successfull ${NC}"
    echo $statement
;;
'species')
    statement=$(curl https://swapi.dev/api/species/$row)
    echo "${GREENBg} process successfull ${NC}"
    echo $statement
;;
'planets')
    statement=$(curl https://swapi.dev/api/planets/$row)
    echo "${GREENBg} process successfull ${NC}"
    echo $statement
;;
'restart')
echo "Usage: $0 [start|stop]"
;;
esac


