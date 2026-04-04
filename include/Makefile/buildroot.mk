
BUILDROOT_SOURCE ?= ${TOPDIR}/buildroot/buildroot/
BUILDROOT_LOCAL_SOURCE ?= ${SRCDIR}/buildroot/
BUILDROOT_GIT_REV := $(shell git --git-dir=${BUILDROOT_SOURCE}/.git rev-parse HEAD )

.PHONY:buildroot_prepare buildroot_world buildroot_clean %config

#将源代码复制到本地
${STAMPDIR}/.buildroot_prepare_${BUILDROOT_GIT_REV}:
	@-cp ${BUILDROOT_LOCAL_SOURCE}/.config ${TEMPDIR}/buildroot_config 2> /dev/null >/dev/null
	@-rm -rf ${BUILDROOT_LOCAL_SOURCE} 2> /dev/null >/dev/null
	@#因为buildroot是基础，因此需要清理所有戳
	@-rm -rf ${STAMPDIR}/.*_* 2> /dev/null >/dev/null
	@rsync -rlhz --delete  ${BUILDROOT_SOURCE}/ ${BUILDROOT_LOCAL_SOURCE}/
	@-cp ${TEMPDIR}/buildroot_config ${BUILDROOT_LOCAL_SOURCE}/.config 2> /dev/null >/dev/null
	@touch ${STAMPDIR}/.buildroot_prepare_${BUILDROOT_GIT_REV}

buildroot_prepare: ${STAMPDIR}/.buildroot_prepare_${BUILDROOT_GIT_REV}
	@-buildroot_path_patch 2> /dev/null >/dev/null
	@echo buildroot prepare!

prepare_step += buildroot_prepare

buildroot_world:
	@make -C ${BUILDROOT_LOCAL_SOURCE} all
	@echo buildroot clean!

build_step += buildroot_world

buildroot_clean: configure
	@make -C ${BUILDROOT_LOCAL_SOURCE} clean
	@echo buildroot clean!

clean_step += buildroot_clean


#buildroot的config（如menuconfig等）
%config: configure
	@make -C ${BUILDROOT_LOCAL_SOURCE} $@
	echo buildroot $@

