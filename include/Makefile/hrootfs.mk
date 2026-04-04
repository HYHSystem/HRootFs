
BUILDROOT_SOURCE ?= ${TOPDIR}/buildroot/buildroot/
BUILDROOT_LOCAL_SOURCE ?= ${SRCDIR}/buildroot/
BUILDROOT_GIT_REV := $(shell git --git-dir="${BUILDROOT_SOURCE}/.git" rev-parse HEAD )
HROOTFS_SOURCE ?= ${TOPDIR}/script/
HROOTFS_GIT_REV := $(shell git --git-dir="${HROOTFS_SOURCE}/.git" rev-parse HEAD )

.PHONY: hrootfs_configure

#将源代码复制到本地
${STAMPDIR}/.hrootfs_configure_${HROOTFS_GIT_REV}:
	@echo install hrootfs config!
	@for defconfig in $(shell ls "${HROOTFS_SOURCE}/configs"); do ln -sf "${HROOTFS_SOURCE}/configs/$${defconfig}" "${BUILDROOT_LOCAL_SOURCE}/configs/$${defconfig}"; done
	@ln -sf "${HROOTFS_SOURCE}/board/hrootfs" "${BUILDROOT_LOCAL_SOURCE}/board/hrootfs"
	@touch ${STAMPDIR}/.hrootfs_configure_${HROOTFS_GIT_REV}


hrootfs_configure: ${STAMPDIR}/.hrootfs_configure_${HROOTFS_GIT_REV}
	@echo configure hrootfs!

configure_step += hrootfs_configure
