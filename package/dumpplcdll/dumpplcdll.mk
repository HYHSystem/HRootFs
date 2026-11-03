################################################################################
#
# dumpplcdll
#
################################################################################

DUMPPLCDLL_VERSION = 0.0.1
DUMPPLCDLL_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
DUMPPLCDLL_SITE_METHOD = local
DUMPPLCDLL_LICENSE = MIT
DUMPPLCDLL_LICENSE_FILES = LICENSE
DUMPPLCDLL_INSTALL_STAGING = YES
DUMPPLCDLL_SUPPORTS_IN_SOURCE_BUILD = NO
DUMPPLCDLL_DEPENDENCIES = host-pkgconf
DUMPPLCDLL_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
DUMPPLCDLL_SUBDIR = htools/hsoftplc_tools/dumpplcdll/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
