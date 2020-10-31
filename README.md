# Git Shell

#### 1.文件可软连接到/usr/bin,实现全局快速调用
```shell
sudo chmod +x mygitadd.sh mygitpush.sh
sudo ln -s /path/mygitadd.sh  /usr/bin/gitadd
sudo ln -s /path/mygitpush.sh /usr/bin/gitpush
```

#### 2.mygitadd.sh:快速连接多个远程仓库，实现多备份
###### 需要修改自己的git服务器地址以及在git服务器添加SSH公钥
```shell
echo 
echo -e "${YELLOW}NO.1 Start add aliyun ..."
echo -e "${PLAIN}\c"
echo "git remote add aliyun git@lemongrass.top:lemon-sudo/$project_name"
git remote add aliyun git@lemongrass.top:lemon-sudo/$project_name
git push --set-upstream aliyun master
echo
```
### 3.mygitpush.sh:快速推送多个仓库
###### Git服务器的仓库名由参数输入，默认为当前文件夹的名字
```shell
echo -e "${YELLOW}NO.1 Start Push Aliyun start..."
echo -e "${PLAIN}\c"
git push aliyun
echo ""
```