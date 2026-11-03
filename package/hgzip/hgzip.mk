################################################################################
#
# hgzip
#
################################################################################

HGZIP_VERSION = 0.0.1
HGZIP_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HGZIP_SITE_METHOD = local
HGZIP_LICENSE = MIT
HGZIP_LICENSE_FILES = LICENSE
HGZIP_INSTALL_STAGING = YES
HGZIP_SUPPORTS_IN_SOURCE_BUILD = NO
HGZIP_DEPENDENCIES = host-pkgconf
HGZIP_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HGZIP_SUBDIR = htools/hmisc_tools/hgzip/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
