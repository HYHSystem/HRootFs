################################################################################
#
# rvvm
#
################################################################################

RVVM_VERSION = 0.0.1
RVVM_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
RVVM_SITE_METHOD = local
RVVM_LICENSE = MPL-2.0 or GPL-3.0-or-later
RVVM_LICENSE_FILES = \
	htools/common/3rdparty/rvvm/LICENSE-MPL \
	htools/common/3rdparty/rvvm/LICENSE-GPL
RVVM_SUPPORTS_IN_SOURCE_BUILD = NO
RVVM_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
RVVM_SUBDIR = htools/3rdparty_tools/rvvm/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
