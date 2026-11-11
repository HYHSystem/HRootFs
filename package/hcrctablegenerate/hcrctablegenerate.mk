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

# GCC < 9 的 libstdc++ 将 std::filesystem 放在独立的 libstdc++fs 中。
ifneq ($(BR2_TOOLCHAIN_GCC_AT_LEAST_9),y)
HCRCTABLEGENERATE_CONF_OPTS += -DCMAKE_CXX_STANDARD_LIBRARIES=-lstdc++fs
endif

$(eval $(cmake-package))
$(eval $(host-cmake-package))
