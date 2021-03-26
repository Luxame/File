#!/bin/bash

dirTime=$(date +"%Y%m%d")
fileTime=$(date +"%Y%m%d%H%M")

mkdir -p /opt/backup/$dirTime

mysqldump --no-tablespaces --user=bookstack --password=XXXXXXXX bookstack > /opt/backup/$dirTime/$fileTime.sql
cp -rp /var/www/bookstack/.env /opt/backup/$dirTime/env-$fileTime
cp -rp /var/www/bookstack/storage/uploads /opt/backup/$dirTime/storage-$dirTime
cp -rp /var/www/bookstack/public/uploads /opt/backup/$dirTime/public-$dirTime
cd /opt/backup/
tar -zcf $dirTime.tar.gz $dirTime