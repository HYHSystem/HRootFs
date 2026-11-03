################################################################################
#
# dotfontscan
#
################################################################################

DOTFONTSCAN_VERSION = 0.0.1
DOTFONTSCAN_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
DOTFONTSCAN_SITE_METHOD = local
DOTFONTSCAN_LICENSE = MIT
DOTFONTSCAN_LICENSE_FILES = LICENSE
DOTFONTSCAN_INSTALL_STAGING = YES
DOTFONTSCAN_SUPPORTS_IN_SOURCE_BUILD = NO
DOTFONTSCAN_DEPENDENCIES = freetype
HOST_DOTFONTSCAN_DEPENDENCIES = host-freetype
DOTFONTSCAN_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
DOTFONTSCAN_SUBDIR = htools/hgui_tools/dotfontscan/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
