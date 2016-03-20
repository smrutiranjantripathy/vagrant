#!/bin/bash
#Mysql
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";


# Download Starter Content

service httpd restart

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/smtripat/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/smtripat/vagrant/master/files/info.php


