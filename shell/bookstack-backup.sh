#!/bin/bash

dirTime=$(date +"%Y%m%d")
fileTime=$(date +"%Y%m%d%H%M")

## 建立日期資料夾
mkdir -p /opt/backup/$dirTime

## 備份檔案
mysqldump --no-tablespaces --user=bookstack --password=XXXXXXXX bookstack > /opt/backup/$dirTime/$fileTime.sql
cp -rp /var/www/bookstack/.env /opt/backup/$dirTime/env-$fileTime
cp -rp /var/www/bookstack/storage/uploads /opt/backup/$dirTime/storage-$dirTime
cp -rp /var/www/bookstack/public/uploads /opt/backup/$dirTime/public-$dirTime

## 壓縮
cd /opt/backup/
tar -zcf $dirTime.tar.gz $dirTime

## 刪除過去備份
find /opt/backup/ -type d -mtime +2 > old.txt
rm -r $( < old.txt )