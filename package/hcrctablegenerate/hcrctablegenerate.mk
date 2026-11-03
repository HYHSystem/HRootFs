################################################################################
#
# hcrctablegenerate
#
################################################################################

HCRCTABLEGENERATE_VERSION = 0.0.1
HCRCTABLEGENERATE_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HCRCTABLEGENERATE_SITE_METHOD = local
HCRCTABLEGENERATE_LICENSE = MIT
HCRCTABLEGENERATE_LICENSE_FILES = LICENSE
HCRCTABLEGENERATE_INSTALL_STAGING = YES
HCRCTABLEGENERATE_SUPPORTS_IN_SOURCE_BUILD = NO
HCRCTABLEGENERATE_DEPENDENCIES = host-pkgconf
HCRCTABLEGENERATE_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HCRCTABLEGENERATE_SUBDIR = htools/hcrypto_tools/hcrctablegenerate/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
