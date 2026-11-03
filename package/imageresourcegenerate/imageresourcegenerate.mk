################################################################################
#
# imageresourcegenerate
#
################################################################################

IMAGERESOURCEGENERATE_VERSION = 0.0.1
IMAGERESOURCEGENERATE_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
IMAGERESOURCEGENERATE_SITE_METHOD = local
IMAGERESOURCEGENERATE_LICENSE = MIT
IMAGERESOURCEGENERATE_LICENSE_FILES = LICENSE
IMAGERESOURCEGENERATE_INSTALL_STAGING = YES
IMAGERESOURCEGENERATE_SUPPORTS_IN_SOURCE_BUILD = NO
IMAGERESOURCEGENERATE_DEPENDENCIES = opencv4
IMAGERESOURCEGENERATE_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
IMAGERESOURCEGENERATE_SUBDIR = htools/hgui_tools/imageresourcegenerate/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
