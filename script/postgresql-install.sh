#!/bin/bash

## installation of dependencies
if ! dpkg -s curl &> /dev/null; then
    sudo apt-get install -y curl
fi

if ! dpkg -s ca-certificates &> /dev/null; then
    sudo apt-get install -y ca-certificates
fi

## install postgresql
sudo install -d /usr/share/postgresql-common/pgdg
sudo curl -o /usr/share/postgresql-common/pgdg/apt.postgresql.org.asc --fail https://www.postgresql.org/media/keys/ACCC4CF8.asc
sudo sh -c 'echo "deb [signed-by=/usr/share/postgresql-common/pgdg/apt.postgresql.org.asc] https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get -y install postgresql
