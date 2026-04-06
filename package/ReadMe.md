# 说明

本目录主要用于存放HRootFs的软件包。

注意:

- 无论是目标（target）软件包还是 宿主机(host)软件包均在HRootFs菜单下配置。

# 软件包

## `HCppBox`

本人常用的C/C++代码及相应工具。具体代码见[`HCppBox`](https://git.hyhsystem.cn/HEYAHONG/HCppBox)。

| 工具名称                       | `说明`            | `备注`                                                       |
| ------------------------------ | ----------------- | ------------------------------------------------------------ |
| [`hashtool`](hashtool)         | 哈希工具          | 支持target与host                                             |
| [`hed25519sign`](hed25519sign) | `Ed25519`签名工具 | 支持target与host,公私钥文件兼容openwrt的[usign](https://git.openwrt.org/project/usign/)工具 |

