#!/bin/bash

# Install Git
#有需要安裝 Git 請把最前面的 '#' 拿掉 
# yum install git -y
# apt-get install git -y
# Test
git
# Git config
git config --global user.email "Mail"
git config --global user.name "UserName"
git config --global color.ui true
git config --global core.editor vim
git config --global alias.lg "log --color --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
git config --list --global
