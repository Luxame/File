#!/bin/bash

# auto download latest tomcat 8.5.X tar file and setting somethings.
# the script have some command need root permission,
# advise use have sudo permission or root user to run the script.

# linux command variable

location=$(pwd)

# Run script

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
    rm -r $location/$tomcat_name/webapps/*
fi

read -p "Need change tomcat location? Y/N :" ask

if [ $ask = N ]
then
    exit 0;
elif [ $ask = Y ]
then
    read -p "Please enter directory location :" tomcat_local
    mv $tomcat_name $tomcat_local
fi

echo "Check tomcat user have exist"
user_tomcat=$(id tomcat)

if [ $? -eq 0]
then
    echo "Tomcat user is exist"
    exit 0;
elif [ $? -eq 1]
    echo "Will create tomcat user"
    useradd -d /opt/tomcat -s /sbin/nologin tomcat
    echo "re-check user, run linux command"
    id tomcat
fi