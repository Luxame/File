#!/bin/bash

# test
git
# git config
git config --global user.email "Mail"
git config --global user.name "UserName"
git config --global color.ui true
git config --global core.editor vim
git config --global alias.lg "log --color --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
