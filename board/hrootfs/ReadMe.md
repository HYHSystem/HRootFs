# 说明

本目录为`HRootFs`的板级支持，主要包含以下类型的文件:

- 辅助脚本:用于将根文件系统镜像制作成最终的烧录固件。
- [linux](https://www.kernel.org)的配置文件:配置Linux内核
- busybox的配置文件:用于配置busybox
- 板级补丁文件:存放补丁文件
- 根文件系统overlay:用于存放通用的根文件系统文件（无需编译的文件），如数据、shell脚本库等。

注意：若要在配置中使用此目录中文件，应当使用`board/hrootfs`作为文件路径。

# 目录说明

- [common](common):通用文件

- [qemu](qemu):qemu支持文件
