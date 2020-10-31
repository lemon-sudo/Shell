#!/bin/bash

RED='\033[0;31m'
YELLOW0='\033[7;33m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
SKYBLUE='\033[0;36m'
PLAIN='\033[0m'
Line_YELLOW='\033[4;33m'
B_SKYBLUE='\033[7;36m'

project_path=$(pwd)
project_name="${project_path##*/}"


if [ ! -n "$1" ] ;then
    echo -e "${YELLOW}Default name is ${SKYBLUE}$project_name${YELLOW}"
else
    echo -e "${YELLOW}Project name is ${SKYBLUE}$1${YELLOW}"
    project_name=$1
fi

echo 
echo -e "${YELLOW}NO.1 Start add aliyun ..."
echo -e "${PLAIN}\c"
echo "git remote add aliyun git@lemongrass.top:lemon-sudo/$project_name"
git remote add aliyun git@lemongrass.top:lemon-sudo/$project_name
git push --set-upstream aliyun master
echo

echo -e "${YELLOW}NO.2 Start add github ..."
echo -e "${PLAIN}\c"
echo "git remote add github git@github.com:lemon-sudo/$project_name"
git remote add github git@github.com:lemon-sudo/$project_name
git push --set-upstream github master
echo

echo -e "${YELLOW}NO.3 Start add gitee ..."
echo -e "${PLAIN}\c"
echo "git remote add gitee git@gitee.com:lemon-sudo/$project_name"
git remote add gitee git@gitee.com:lemon-sudo/$project_name
git push --set-upstream gitee master
echo

echo -e "${YELLOW}END!"
