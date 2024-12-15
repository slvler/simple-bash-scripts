#!/bin/bash
set -e

SERVICE_PATH='/etc/systemd/system/'
echo $(id -u)
if [ $(id -u) -ne 0 ]; then
    echo "should be run with sudo privileges"
    exit 1
fi

sudo apt update && sudo apt upgrade -y

function download() {
    echo "1- Latest version"
    echo "2- Specific version"
    read control

    if [ $control -eq 1 ]; then
        echo "Installing the latest version.."
        sudo apt-get install nginx -y
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
        read -p "Please type the version you want to install: " NGINX_VERSION

        if [[ " ${version_list[*]} " == *" $NGINX_VERSION "* ]]; then
              echo "Installing the selected version: $NGINX_VERSION"
              sleep 2;

              sudo apt-get -y --force-yes  install build-essential zlib1g-dev libpcre3 libpcre3-dev libssl-dev unzip apache2-utils make;
              sleep 2;

              wget  http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz;

              tar -xvzf nginx-${NGINX_VERSION}.tar.gz;

              cd nginx-${NGINX_VERSION}/
              echo 'Configuration procedures are in progress'
              sleep 2;
              ./configure --prefix=/etc/nginx --modules-path=/etc/nginx/modules --with-http_ssl_module --without-mail_pop3_module --without-http_rewrite_module

              echo 'Running the Make command';
              sleep 2;
              make;

              echo 'Installing project and package dependencies';
              sleep 2;
              sudo make install;

              SERVICE_NAME="nginx.service"
              SERVICE_FILE="/etc/systemd/system/$SERVICE_NAME"

              SERVICE_CONTENT="[Unit]
              Description=The nginx HTTP and reverse proxy server
              Documentation=man:nginx(8)
              After=network.target

              [Service]
              Type=forking
              ExecStartPre=/usr/local/nginx/sbin/nginx -t
              ExecStart=/usr/local/nginx/sbin/nginx
              ExecReload=/usr/local/nginx/sbin/nginx -s reload
              ExecStop=/usr/local/nginx/sbin/nginx -s stop
              PrivateTmp=true

              [Install]
              WantedBy=multi-user.target"

              echo "$SERVICE_CONTENT" | sudo tee $SERVICE_FILE > /dev/null

              sudo systemctl daemon-reload
              sleep 2

              sudo systemctl start nginx

          else
              echo "Not valid version selected!"
          fi
    else
        echo "Please make a valid choice"
        exit 1
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
