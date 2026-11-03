################################################################################
#
# hsntp
#
################################################################################

HSNTP_VERSION = 0.0.1
HSNTP_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HSNTP_SITE_METHOD = local
HSNTP_LICENSE = MIT
HSNTP_LICENSE_FILES = LICENSE
HSNTP_INSTALL_STAGING = YES
HSNTP_SUPPORTS_IN_SOURCE_BUILD = NO
HSNTP_DEPENDENCIES = host-pkgconf
HSNTP_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HSNTP_SUBDIR = htools/hnet_tools/hsntp/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
