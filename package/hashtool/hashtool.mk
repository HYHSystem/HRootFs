################################################################################
#
# hashtool
#
################################################################################

HASHTOOL_VERSION = 0.0.1
HASHTOOL_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HASHTOOL_SITE_METHOD = local
HASHTOOL_LICENSE = MIT
HASHTOOL_LICENSE_FILES = LICENSE
HASHTOOL_INSTALL_STAGING = YES
HASHTOOL_SUPPORTS_IN_SOURCE_BUILD = NO
HASHTOOL_DEPENDENCIES = host-pkgconf
HASHTOOL_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HASHTOOL_SUBDIR = htools/hcrypto_tools/hashtool/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
