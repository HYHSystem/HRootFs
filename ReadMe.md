# 说明

常用的Linux RootFS。

本工程通常用于嵌入式环境。

本工程采用repo工具管理源代码。

# 常用操作

本工程采用repo工具管理源代码。

用户可自行下载安装repo工具或者使用HEnvBox搭建环境。

## 初始化

初始化的操作需要在空目录中进行且只需要初始化一次。

```bash
#初始化
repo init https://git.hyhsystem.cn/HYHSystem/HRootFs
```

## 同步

当同步完成后，用户可访问源代码树。。

```bash
#同步
repo sync
```

