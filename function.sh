#!/bin/bash

getDate(){
    date
}

getDate

# MM-DD-YYYY format
getDateFormatMMDDYYYY(){
    d=`date +%m-%d-%Y`
    echo $d
}

getDateFormatMMDDYYYY


getDateFormatMMYYYY(){
    d=`date +%m-%Y`
    echo $d
}

getDateFormatMMYYYY

# arguments 
print_something() {
    echo Hello $1 $2
}

print_something John Doe


# return function
return_function () {
    echo Hello $1
    return 255
}

return_function Vill
echo $?
