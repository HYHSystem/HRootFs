
BUILDROOT_SOURCE ?= ${TOPDIR}/buildroot/buildroot/
BUILDROOT_LOCAL_SOURCE ?= ${SRCDIR}/buildroot/
BUILDROOT_GIT_REV := $(shell git --git-dir="${BUILDROOT_SOURCE}/.git" rev-parse HEAD )
HROOTFS_SOURCE ?= ${TOPDIR}/script/
HROOTFS_GIT_REV := $(shell git --git-dir="${HROOTFS_SOURCE}/.git" rev-parse HEAD )

.PHONY: hrootfs_configure

#将源代码复制到本地
${STAMPDIR}/.hrootfs_configure_${HROOTFS_GIT_REV}:
	@echo install hrootfs config!
	@-rm -rf ${STAMPDIR}/.hrootfs_configure_*
	@for defconfig in $(shell ls "${HROOTFS_SOURCE}/configs"); do ln -Tsf "${HROOTFS_SOURCE}/configs/$${defconfig}" "${BUILDROOT_LOCAL_SOURCE}/configs/$${defconfig}"; done
	@ln -Tsf "${HROOTFS_SOURCE}/board/hrootfs" "${BUILDROOT_LOCAL_SOURCE}/board/hrootfs"
	@echo  > "${BUILDROOT_LOCAL_SOURCE}/package/HRootFs.Config.in"
	@echo  menu \"HRootFs\" > "${BUILDROOT_LOCAL_SOURCE}/package/HRootFs.Config.in"
	@echo  > "${BUILDROOT_LOCAL_SOURCE}/package/HRootFs.Config.in.host"
	@echo  menu \"HRootFs Host Tool\" > "${BUILDROOT_LOCAL_SOURCE}/package/HRootFs.Config.in.host"
	@for pkg in $(shell ls "${HROOTFS_SOURCE}/package/"); do if [ -d "${HROOTFS_SOURCE}/package/$${pkg}" ]; then  ln -Tsf "${HROOTFS_SOURCE}/package/$${pkg}" "${BUILDROOT_LOCAL_SOURCE}/package/$${pkg}"; if [ -e "${HROOTFS_SOURCE}/package/$${pkg}/Config.in" ]; then echo source \"package/$${pkg}/Config.in\" >> "${BUILDROOT_LOCAL_SOURCE}/package/HRootFs.Config.in"; fi; if [ -e "${HROOTFS_SOURCE}/package/$${pkg}/Config.in.host" ]; then echo source \"package/$${pkg}/Config.in.host\" >> "${BUILDROOT_LOCAL_SOURCE}/package/HRootFs.Config.in.host"; fi; fi; done
	@echo  endmenu  >> "${BUILDROOT_LOCAL_SOURCE}/package/HRootFs.Config.in"
	@cd "${BUILDROOT_LOCAL_SOURCE}" && git checkout package/Config.in 
	@echo source \"package/HRootFs.Config.in\" >> "${BUILDROOT_LOCAL_SOURCE}/package/Config.in"
	@echo  endmenu  >> "${BUILDROOT_LOCAL_SOURCE}/package/HRootFs.Config.in.host"
	@cd "${BUILDROOT_LOCAL_SOURCE}" && git checkout package/Config.in.host
	@echo source \"package/HRootFs.Config.in.host\" >> "${BUILDROOT_LOCAL_SOURCE}/package/Config.in.host"
	@touch ${STAMPDIR}/.hrootfs_configure_${HROOTFS_GIT_REV}


hrootfs_configure: ${STAMPDIR}/.hrootfs_configure_${HROOTFS_GIT_REV}
	@echo configure hrootfs!

configure_step += hrootfs_configure
