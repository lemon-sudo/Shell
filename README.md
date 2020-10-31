# Shell

### mygitadd.sh:快速连接多个远程仓库，实现多备份
### mygitpush.sh:快速推送多个仓库

1.文件可软连接到/usr/bin,实现全局快速调用
2.其中mygitadd中需要修改自己的git服务器地址，默认用户已经添加公钥免密ssh推送
3.mygitadd添加到git服务器的仓库名由参数输入，默认为当前文件夹的名字
