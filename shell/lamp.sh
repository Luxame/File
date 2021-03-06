#!bin/bash

# Clean up yum (sudo)
yum clean all

#Update our packages (sudo)
yum update -y

#Install EPML (sudo)
#yum install epel-release -y

#List new repos
#yum repolist

#Install Apache
yum install httpd -y

#Firewall Setting
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --reload

#List firewall
firewall-cmd --permanent --list-all

#Open machine start apache
systemctl enable httpd.service

#Install MariaDB
#echo -e "[mariadb]\nname = MariaDB\nbaseurl = http://yum.mariadb.org/10.1/centos7-amd64\ngpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB\ngpgcheck=1" > /etc/yum.repos.d/MariaDB.repo
#yum install MariaDB-server MariaDB-client -y
#systemctl start mariadb
