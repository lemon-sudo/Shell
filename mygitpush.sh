#/bin/bash

RED='\033[0;31m'
YELLOW0='\033[7;33m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
SKYBLUE='\033[0;36m'
PLAIN='\033[0m'
Line_YELLOW='\033[4;33m'
B_SKYBLUE='\033[7;36m'


echo -e "${YELLOW}NO.1 Start Push Aliyun start..."
echo -e "${PLAIN}\c"
git push aliyun
echo ""

echo -e "${YELLOW}NO.2 Start Push Github..."
echo -e "${PLAIN}\c"
git push github
echo ""

echo -e "${YELLOW}NO.3 Start Push Gitee..."
echo -e "${PLAIN}\c"
git push gitee
echo ""

echo -e "${YELLOW}END!${PLAIN}"

