################################################################################
#
# hguitools (host only)
#
################################################################################

HGUITOOLS_VERSION = 0.0.1
HGUITOOLS_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HGUITOOLS_SITE_METHOD = local
HGUITOOLS_LICENSE = MIT
HGUITOOLS_LICENSE_FILES = LICENSE
HGUITOOLS_SUPPORTS_IN_SOURCE_BUILD = NO
HGUITOOLS_SUBDIR = htools/hgui_tools/hguitools/

$(eval $(host-cmake-package))
