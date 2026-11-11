################################################################################
#
# hhttpd
#
################################################################################

HHTTPD_VERSION = 0.0.1
HHTTPD_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HHTTPD_SITE_METHOD = local
HHTTPD_LICENSE = MIT
HHTTPD_LICENSE_FILES = LICENSE
HHTTPD_INSTALL_STAGING = YES
HHTTPD_SUPPORTS_IN_SOURCE_BUILD = NO
HHTTPD_DEPENDENCIES = host-pkgconf
HHTTPD_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HHTTPD_SUBDIR = htools/hnet_tools/hhttpd/

ifeq ($(BR2_PACKAGE_HHTTPD_OPENSSL),y)
HHTTPD_DEPENDENCIES += openssl
else
HHTTPD_CONF_OPTS += -DCMAKE_DISABLE_FIND_PACKAGE_OpenSSL=ON
endif

# GCC < 9 的 libstdc++ 将 std::filesystem 放在独立的 libstdc++fs 中。
ifneq ($(BR2_TOOLCHAIN_GCC_AT_LEAST_9),y)
HHTTPD_CONF_OPTS += -DCMAKE_CXX_STANDARD_LIBRARIES=-lstdc++fs
endif

$(eval $(cmake-package))
$(eval $(host-cmake-package))
