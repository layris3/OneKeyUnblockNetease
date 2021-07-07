### 基本介绍

此项目只面向Windows系统的网易云客户端

### 如何运行

```bash
git clone git@github.com:SamL1n/OneKeyUnblockNetease.git
```

在该项目目录下打开powershell（管理员方式运行），运行unblockNetease.ps1脚本
```bash
.\unblockNetease.ps1
```

若没有安装Winget则会弹出网页https://github.com/microsoft/winget-cli/releases 并且脚本会立即结束不再执行
在此页面下载winget并安装（据说window11系统自动集成winget，到时省去手动安装winget会更加丝滑）

完成winget安装之后，重复上述步骤重新执行脚本。

脚本会依次安装Node.JS,网易云音乐（若您的电脑已安装则不会重复安装）
安装npm

npx启动项目同时监听8080端口。

打开网易云，设置自定义代理，地址`localhost`,端口号 8080

### 后续优化方向
使用pm2运行

配置成windows自启动服务（1次安装配置，永久使用）

### 项目来源

[nondanee/UnblockNeteaseMusic](https://github.com/nondanee/UnblockNeteaseMusic)

[Anduin2017/configuration-script-win](https://github.com/Anduin2017/configuration-script-win)




