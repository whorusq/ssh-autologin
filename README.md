SSH 自动登录脚本
---

### 效果预览

![./screenshot.png](./screenshot.png)

### 使用


1. `git clone https://github.com/whorusq/shell-ssh-autologin.git`
2. `cd shell-ssh-autologin`
3. 修改 goto.conf ，追加服务器列表
4. 赋予脚本可执行权限 `sudo chmod u+x goto.sh`
5. 使用
	- 方式一：`./goto.sh`
	- 方式二：将 goto 加入当前用户全局使用
		
		```bash
		➜  ~ echo "alias goto=\"$PWD/goto.sh\"" >> ~/.zshrc
		➜  ~ source ~/.zshrc
		➜  ~ goto
		```



