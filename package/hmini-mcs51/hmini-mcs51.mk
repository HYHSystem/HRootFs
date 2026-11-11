################################################################################
#
# hmini-mcs51
#
################################################################################

HMINI_MCS51_VERSION = 0.0.1
HMINI_MCS51_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HMINI_MCS51_SITE_METHOD = local
HMINI_MCS51_LICENSE = MIT
HMINI_MCS51_LICENSE_FILES = LICENSE
HMINI_MCS51_INSTALL_STAGING = YES
HMINI_MCS51_SUPPORTS_IN_SOURCE_BUILD = NO
HMINI_MCS51_DEPENDENCIES = host-pkgconf
HMINI_MCS51_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HMINI_MCS51_SUBDIR = htools/hsimulator_tools/hmini-mcs51/

# GCC < 9 不接受数组成员的 rom{{0}} 初始化写法，改为值初始化。
ifneq ($(BR2_TOOLCHAIN_GCC_AT_LEAST_9),y)
define HMINI_MCS51_FIX_GCC8_ARRAY_INIT
	sed -i 's/rom{{0}}/rom{}/g' $(@D)/htools/hsimulator_tools/hmini-mcs51/main.cpp
endef
HMINI_MCS51_POST_RSYNC_HOOKS += HMINI_MCS51_FIX_GCC8_ARRAY_INIT
endif

$(eval $(cmake-package))
$(eval $(host-cmake-package))
