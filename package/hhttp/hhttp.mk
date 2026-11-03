################################################################################
#
# hhttp
#
################################################################################

HHTTP_VERSION = 0.0.1
HHTTP_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HHTTP_SITE_METHOD = local
HHTTP_LICENSE = MIT
HHTTP_LICENSE_FILES = LICENSE
HHTTP_INSTALL_STAGING = YES
HHTTP_SUPPORTS_IN_SOURCE_BUILD = NO
HHTTP_DEPENDENCIES = host-pkgconf
HHTTP_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HHTTP_SUBDIR = htools/hnet_tools/hhttp/

ifeq ($(BR2_PACKAGE_HHTTP_OPENSSL),y)
HHTTP_DEPENDENCIES += openssl
else
HHTTP_CONF_OPTS += -DCMAKE_DISABLE_FIND_PACKAGE_OpenSSL=ON
endif

$(eval $(cmake-package))
$(eval $(host-cmake-package))
