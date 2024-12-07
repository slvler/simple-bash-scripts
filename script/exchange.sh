#/bin/bash

#api_key=d74493096ca25f6780e50254//USD
sort=/latest/
url=https://v6.exchangerate-api.com/
version=v6/

read -p "enter to api key " api_key
echo $api_key
read -p "enter to price " price
echo $price



request=$(curl "$url$version$api_key$sort$price")

#echo "11"
echo $request
