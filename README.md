SSH 自动登录脚本
---

### 效果预览

```
-------------------------------------
1. 测试服务器 - 192.168.1.56
-------------------------------------
请输入序号选择要登录的服务器: 1

==> 正在登录【测试服务器】，请稍等...

spawn ssh root@192.168.1.56 -p 22
root@192.168.1.56's password: 
Last login: Wed May 24 09:32:05 2017 from 192.168.1.250

已经成功登录【测试服务器】
[root@localhost ~]# cd /alidata/www && ls -l
总用量 52
drwxr-xr-x. 5 root root 4096 5月   8 14:57 back
drwxr-xr-x. 6 root root 4096 4月  18 09:20 xxx_mobile
drwxrwxrwx. 7 root root 4096 5月  22 15:50 xxxx_zhongshan
drwxr-xr-x. 7 root root 4096 5月   4 16:31 dd
drwxr-xr-x. 7 root root 4096 5月   4 19:40 new
drwxrwxrwx. 7 root root 4096 5月   4 19:27 run
drwxr-xr-x. 3 root root  102 5月   9 19:00 update
drwxr-xr-x. 7 root root 4096 5月   4 18:05 xx
[root@localhost www]# exit
登出
Connection to 192.168.1.56 closed.

==> 您已退出【测试服务器】

➜  ~ 
```

### 使用方式

```bash
1. $ git clone https://github.com/whorusq/shell-ssh-autologin.git
2. 修改 goto.conf ，追加服务器列表
3. $ chmod u+x goto.sh
4. $ ./goto.sh

# 或使用如下方式将 goto 加入当前用户全局使用：
$ echo "alias goto=\"$PWD/goto.sh\"" >> ~/.zshrc
$ source ~/.zshrc
$ goto
```

