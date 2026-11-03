################################################################################
#
# hlz4
#
################################################################################

HLZ4_VERSION = 0.0.1
HLZ4_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HLZ4_SITE_METHOD = local
HLZ4_LICENSE = MIT
HLZ4_LICENSE_FILES = LICENSE
HLZ4_INSTALL_STAGING = YES
HLZ4_SUPPORTS_IN_SOURCE_BUILD = NO
HLZ4_DEPENDENCIES = host-pkgconf
HLZ4_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HLZ4_SUBDIR = htools/hmisc_tools/hlz4/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
