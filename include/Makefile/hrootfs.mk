
BUILDROOT_SOURCE ?= ${TOPDIR}/buildroot/buildroot/
BUILDROOT_LOCAL_SOURCE ?= ${SRCDIR}/buildroot/
BUILDROOT_GIT_REV := $(shell git --git-dir="${BUILDROOT_SOURCE}/.git" rev-parse HEAD )
HROOTFS_SOURCE ?= ${TOPDIR}/script/
HROOTFS_GIT_REV := $(shell git --git-dir="${HROOTFS_SOURCE}/.git" rev-parse HEAD )
