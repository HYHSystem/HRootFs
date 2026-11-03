################################################################################
#
# hmini-rv32imav2
#
################################################################################

HMINI_RV32IMAV2_VERSION = 0.0.1
HMINI_RV32IMAV2_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HMINI_RV32IMAV2_SITE_METHOD = local
HMINI_RV32IMAV2_LICENSE = MIT
HMINI_RV32IMAV2_LICENSE_FILES = LICENSE
HMINI_RV32IMAV2_INSTALL_STAGING = YES
HMINI_RV32IMAV2_SUPPORTS_IN_SOURCE_BUILD = NO
HMINI_RV32IMAV2_DEPENDENCIES = host-pkgconf
HMINI_RV32IMAV2_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HMINI_RV32IMAV2_SUBDIR = htools/hsimulator_tools/hmini-rv32imav2/

$(eval $(cmake-package))
$(eval $(host-cmake-package))
