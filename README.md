### 基本介绍



### 如何运行

```bash
git clone git@github.com:SamL1n/OneKeyUnblockNetease.git
```

在该项目目录下打开powershell（管理员方式运行），运行unblockNetease.ps1脚本
```bash
.\unblockNetease.ps1
```

若没有安装Winget则会弹出网页https://github.com/microsoft/winget-cli/releases 并且脚本会立即结束不再执行
在此页面下载winget并安装

完成winget安装之后，重复上述步骤重新执行脚本。

脚本会依次安装Node.JS,网易云音乐（若您的电脑已安装则不会重复安装）
安装npm

安装项目并启动同时监听8080端口。

### 项目来源

[nondanee/UnblockNeteaseMusic](https://github.com/nondanee/UnblockNeteaseMusic)

[Anduin2017/configuration-script-win](https://github.com/Anduin2017/configuration-script-win)




