#!/bin/bash
folder_path="$HOME/picture/dummy"

if [ ! -e "$folder_path" ]; then
    mkdir -p $folder_path
fi

choice=("Andrea"  "Emery"  "Amaya"  "Eliza"  "Brian"  "Chase"  "Brooklynn" "Jack" "George" "Caleb")
echo "Available tag options: "

for i in ${!choice[@]}
do
    echo $i ${choice[$i]}
done
echo ""
read -p "Select tag number: " tag

query=$(echo "${choice[$tag]}" | sed 's/ /%20/g')
echo $query
echo ""

wget -nc -P $folder_path -O "$folder_path/$query.svg" "https://api.dicebear.com/9.x/adventurer/svg?seed=$query"
