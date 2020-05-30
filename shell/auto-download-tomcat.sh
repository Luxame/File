#!/bin/bash

# auto download latest tomcat 8.5.X tar file
# and setting somethings

read -p "Download Latest Tomcat Tar File? Y/N :" ask

if [ $ask = N ]
then
    exit 0;
elif [ $ask = Y ]
then
    read -p "Version :" version
    tomcat_version=v${version}
    curl http://ftp.mirror.tw/pub/apache/tomcat/tomcat-8/${tomcat_version}/bin/apache-tomcat-${version}.tar.gz -o apache-tomcat-${version}.tar.gz
fi

read -p "Need create new tomcat? Y/N :" ask

if [ $ask = N ]
then
    exit 0;
elif [ $ask = Y ]
then
    tar -xzf apache-tomcat-${version}.tar.gz
    read -p "Service Name :" tomcat_name
    mv apache-tomcat-${version} $tomcat_name
fi