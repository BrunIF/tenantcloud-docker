#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
echo "mysql-server-5.7 mysql-server/root_password password root" | debconf-set-selections
echo "mysql-server-5.7 mysql-server/root_password_again password root" | debconf-set-selections
apt-get -y install mysql-server-5.7
sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
