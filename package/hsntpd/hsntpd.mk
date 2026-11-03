################################################################################
#
# hsntpd
#
################################################################################

HSNTPD_VERSION = 0.0.1
HSNTPD_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HSNTPD_SITE_METHOD = local
HSNTPD_LICENSE = MIT
HSNTPD_LICENSE_FILES = LICENSE
HSNTPD_INSTALL_STAGING = YES
HSNTPD_SUPPORTS_IN_SOURCE_BUILD = NO
HSNTPD_DEPENDENCIES = host-pkgconf
HSNTPD_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HSNTPD_SUBDIR = htools/hnet_tools/hsntpd/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
