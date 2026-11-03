################################################################################
#
# hmodbushelper (host only)
#
################################################################################

HMODBUSHELPER_VERSION = 0.0.1
HMODBUSHELPER_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HMODBUSHELPER_SITE_METHOD = local
HMODBUSHELPER_LICENSE = MIT
HMODBUSHELPER_LICENSE_FILES = LICENSE
HMODBUSHELPER_SUPPORTS_IN_SOURCE_BUILD = NO
HMODBUSHELPER_SUBDIR = htools/hnet_tools/hmodbushelper/

$(eval $(host-cmake-package))
