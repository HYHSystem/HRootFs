################################################################################
#
# hmodbustcpgateway
#
################################################################################

HMODBUSTCPGATEWAY_VERSION = 0.0.1
HMODBUSTCPGATEWAY_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HMODBUSTCPGATEWAY_SITE_METHOD = local
HMODBUSTCPGATEWAY_LICENSE = MIT
HMODBUSTCPGATEWAY_LICENSE_FILES = LICENSE
HMODBUSTCPGATEWAY_INSTALL_STAGING = YES
HMODBUSTCPGATEWAY_SUPPORTS_IN_SOURCE_BUILD = NO
HMODBUSTCPGATEWAY_DEPENDENCIES = libserialport libevent
HMODBUSTCPGATEWAY_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HMODBUSTCPGATEWAY_SUBDIR = htools/hnet_tools/hmodbustcpgateway/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
