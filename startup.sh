#!/bin/bash

clear

#JAVA EE installeren
echo 'Java wordt nu geïnstalleerd'
yum update -y
yum install -y java
yum install -y java-1.7.0-openjdk.x86_64

#Tomcat6 installeren
echo 'Tomcat installeren en de service starten'
yum install -y tomcat6 tomcat6-webapps tomcat6-admin-webapps
chkconfig tomcat6 on
service tomcat6 start

#SQLserver installeren
echo 'De SQL server wordt geïnstalleerd'
yum install -y mysql-server
chkconfig mysqld on
service mysqld start
/usr/bin/mysql_secure_installation
