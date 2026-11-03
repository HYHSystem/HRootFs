################################################################################
#
# matiec
#
################################################################################

MATIEC_VERSION = 0.0.1
MATIEC_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
MATIEC_SITE_METHOD = local
MATIEC_LICENSE = GPL-3.0-or-later, LGPL-3.0-or-later (library)
MATIEC_LICENSE_FILES = \
	htools/common/3rdparty/matiec/COPYING \
	htools/common/3rdparty/matiec/lib/COPYING.LESSER
MATIEC_SUPPORTS_IN_SOURCE_BUILD = NO
MATIEC_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
MATIEC_SUBDIR = htools/3rdparty_tools/matiec/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
