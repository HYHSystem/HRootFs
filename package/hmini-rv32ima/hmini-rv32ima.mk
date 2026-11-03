################################################################################
#
# hmini-rv32ima
#
################################################################################

HMINI_RV32IMA_VERSION = 0.0.1
HMINI_RV32IMA_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HMINI_RV32IMA_SITE_METHOD = local
HMINI_RV32IMA_LICENSE = MIT
HMINI_RV32IMA_LICENSE_FILES = LICENSE
HMINI_RV32IMA_INSTALL_STAGING = YES
HMINI_RV32IMA_SUPPORTS_IN_SOURCE_BUILD = NO
HMINI_RV32IMA_DEPENDENCIES = host-pkgconf
HMINI_RV32IMA_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HMINI_RV32IMA_SUBDIR = htools/hsimulator_tools/hmini-rv32ima/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
