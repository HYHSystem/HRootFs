################################################################################
#
# hsimulatortools (host only)
#
################################################################################

HSIMULATORTOOLS_VERSION = 0.0.1
HSIMULATORTOOLS_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HSIMULATORTOOLS_SITE_METHOD = local
HSIMULATORTOOLS_LICENSE = MIT
HSIMULATORTOOLS_LICENSE_FILES = LICENSE
HSIMULATORTOOLS_SUPPORTS_IN_SOURCE_BUILD = NO
HSIMULATORTOOLS_SUBDIR = htools/hsimulator_tools/hsimulatortools/

$(eval $(host-cmake-package))
