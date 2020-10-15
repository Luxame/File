#!/bin/bash

#
# http_code 透過取得網頁回傳的 HTTP 狀態碼判斷是否正常
# [url_content] 須做更換
#
# check_pid 透過取到服務的 PID 值，來判斷服務狀態
# [thread_content] 須做更換
#

http_code=$(curl -k -Is [url_content] | head -n 1 | awk '{print $2; exit}')
check_pid=$(ps aux | grep [thread_content] | grep -v grep)

if [ $? -eq 0 ] || [ $http_code -eq 200 ]; then
    echo "service is good"
fi