################################################################################
#
# hed25519sign
#
################################################################################

HED25519SIGN_VERSION = 0.0.1
HED25519SIGN_SITE = $(shell realpath ${HROOTFS_TOPDIR}/lib/HCppBox/)
HED25519SIGN_SITE_METHOD = local
HED25519SIGN_LICENSE = MIT
HED25519SIGN_LICENSE_FILES = LICENSE
HED25519SIGN_INSTALL_STAGING = YES
HED25519SIGN_SUPPORTS_IN_SOURCE_BUILD = NO
HED25519SIGN_DEPENDENCIES = host-pkgconf
HED25519SIGN_CONF_OPTS = -DHTOOLS_INSTALL_DIR=/usr/
HED25519SIGN_SUBDIR = htools/hcrypto_tools/hed25519sign/

$(eval $(cmake-package))
