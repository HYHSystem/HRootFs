# 说明

本目录主要用于存放HRootFs的软件包。

# 软件包

## `HCppBox`

本人常用的C/C++代码及相应工具。具体代码见[`HCppBox`](https://git.hyhsystem.cn/HEYAHONG/HCppBox)。

| 工具名称                       | `说明`            | `备注`                                                       |
| ------------------------------ | ----------------- | ------------------------------------------------------------ |
| [`hashtool`](hashtool)         | 哈希工具          | 支持target与host                                             |
| [`hed25519sign`](hed25519sign) | `Ed25519`签名工具 | 支持target与host,公私钥文件兼容openwrt的[usign](https://git.openwrt.org/project/usign/)工具 |
| [`hcrctablegenerate`](hcrctablegenerate) | 生成CRC校验查找表及相关代码 | 支持target与host |
| [`hgzip`](hgzip) | gzip文件压缩及解压缩工具 | 支持target与host |
| [`hlz4`](hlz4) | lz4文件压缩及解压缩工具 | 支持target与host |
| [`hmini-mcs51`](hmini-mcs51) | mcs51指令集模拟（最小版） | 支持target与host,支持通过openblt加载程序 |
| [`hmini-rv32ima`](hmini-rv32ima) | mini-rv32ima修改版 | 支持target与host |
| [`hmini-rv32imav2`](hmini-rv32imav2) | mini-rv32ima第二版 | 支持target与host,支持通过openblt加载程序 |
| [`dumpplcdll`](dumpplcdll) | 获取软件PLC动态链接库中的信息 | 支持target与host |
| [`dotfontscan`](dotfontscan) | 点阵字体生成工具 | 支持target与host,依赖`freetype` |
| [`imageresourcegenerate`](imageresourcegenerate) | 图像资源处理工具 | 支持target与host,依赖`opencv4` |
| [`hmodbustcpgateway`](hmodbustcpgateway) | 独立`Modbus` TCP网关程序 | 支持target与host,依赖`libserialport`、`libevent` |
| [`hhttp`](hhttp) | 简易HTTP客户端 | 支持target与host,默认启用`openssl`支持 |
| [`hhttpd`](hhttpd) | 简易HTTP服务端 | 支持target与host,默认启用`openssl`支持 |
| [`hsntp`](hsntp) | 简易NTP客户端 | 支持target与host |
| [`hsntpd`](hsntpd) | 简易NTP服务端 | 支持target与host |
| [`hguitools`](hguitools) | `hgui`组件辅助工具 | 仅host,依赖`wxWidgets` |
| [`hmodbushelper`](hmodbushelper) | `hmodbus`组件开发辅助工具 | 仅host,依赖`wxWidgets`、`libserialport` |
| [`hsimulatortools`](hsimulatortools) | `hsimulator`组件辅助工具（已弃用） | 仅host,依赖`wxWidgets` |
| [`matiec`](matiec) | IEC 61131-3编译器 | 支持target与host |
| [`rvvm`](rvvm) | `RVVM`虚拟机 | 支持target与host |

