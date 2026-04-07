# 说明

常用的Linux RootFS。

本工程通常用于嵌入式环境。

本工程采用repo工具管理源代码。

# repo操作

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

# 构建系统

本工程只支持在Linux(包括WSL)下进行构建。

本工程对构建系统的要求同[buildroot](https://buildroot.org/),主要采用make作为构建系统。

本工程主要使用以下工具:

- gcc
- g++
- make
- cmake
- rsync
- git
- patch
- coreutils
- findutils

若以上工具未正常安装，可能不能正常构建。用户可自行安装以上工具或者使用HEnvBox搭建环境。

本工程的构建目标如下:

- all：默认构建目标，使用此目标前必须使用%config,当构建完成后，用户可在`local/src/buildroot/output`找到输出文件。
- %config:对buildroot进行配置包括menuconfig与buildroot的configs目录下的defconfig。注意:不是目标名为%config，而是匹配以config结尾且被buildroot支持的所有目标。
- clean:清理构建
- dist-clean:清除所有生成的文件。若当源代码进行了更新，用户可能需要使用此目标减少因版本不同而造成的错误。
- emulator:启动模拟器（仅限于支持模拟器的配置）

## 配置(config)

此章节描述除buildroot原生支持的配置，一般可使用`make 配置名`启用相应配置。

- hrootfs_qemu_x86_64_defconfig：支持在qemu中测试的hrootfs镜像，以buildroot原生支持的qemu_x86_64_defconfig作为模板。

## 板级支持

板级支持见[board/hrootfs/](board/hrootfs/)。

## 软件包

软件包见 [package](package)

## 模拟器

对于支持模拟器的配置，可以使用模拟器（一般是qemu）进行测试。

以`hrootfs_qemu_x86_64_defconfig`为例，使用以下命令可启动模拟器:

```bash
#进行构建前需要使用repo将源代码完全下载

#进行配置
make hrootfs_qemu_x86_64_defconfig
#启动模拟器
make emulator
```

若未特殊说明，用户名为root,无密码。
