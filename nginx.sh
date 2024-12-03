#!/bin/bash
set -e


echo $(id -u)

if [ $(id -u) -ne 0 ]; then
    echo "admin"
    exit 1
fi



#sudo apt update && sudo apt upgrade -y
function download() {
    echo "1- Latest version"
    echo "2- Specific version"
    read control

    if [ $control -eq 1 ]; then
        echo "En son sürüm kuruluyor..."
        #sudo apt-get install nginx -y
    elif [ $control -eq 2 ]; then
        version_list=(
            "1.24"
            "1.22.1"
            "1.20.2"
            "1.18.0"
            "1.16.1"
            "1.14.2"
            "1.12.2"
            "1.10.3"
            "1.8.1"
            "1.6.3"
            "1.4.7"
            "1.2.9"
            "1.0.15"
            "0.8.55"
            "0.7.69"
            "0.6.39"
            "0.5.38"
        )

        for item in "${version_list[@]}"; do
             echo "- $item"
        done
        read -p "Lütfen yüklemek istediğiniz sürümü yazın: " NGINX_VERSION

        if [[ " ${version_list[*]} " == *" $NGINX_VERSION "* ]]; then
              echo "Seçilen sürüm kuruluyor: $NGINX_VERSION"

              sudo apt-get -y --force-yes  install build-essential zlib1g-dev libpcre3 libpcre3-dev unzip apache2-utils make;
              sleep 2;

              wget  http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz;

              tar -xvzf nginx-${NGINX_VERSION}.tar.gz;

              cd nginx-${NGINX_VERSION}/
              echo 'Configure'
              sleep 2;
              ./configure

              echo 'Make';
              sleep 2;
              make;

              echo 'Install';
              sleep 2;
              sudo make install;

          else
              echo "Geçersiz sürüm seçimi!"
          fi
    else
        "123123123"
        echo "not"
    fi
}

function qt(){
    clear
    echo ""
    echo "----------------------------------------------------------"
    echo -e $REDBg"EXİT$NC"
    echo ""
    exit 0
}



if dpkg -s nginx &> /dev/null; then
    echo "Nginx is installed on the system"
    exit 1
else
    read -p "Nginx is not installed. Would you like to install it (Yes/y or No/n): " answer
    case "$answer" in
         [Ee]|[Yy])

             download
             #sudo apt install apache2 -y
             ;;
         [Hh]|[Nn])
             echo "Nginx is not installed. The operation was canceled."
             exit 0
             ;;
         *)
             echo "Invalid option. Operation canceled."
             exit 1
             ;;
     esac
fi
