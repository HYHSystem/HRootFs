
TOPDIR ?= $(shell pwd)
MAKEFILE_SCRIPT_DIR ?= $(shell pwd)/script/
MAKEFILE_INCLUDE_DIR := ${MAKEFILE_SCRIPT_DIR}/include/Makefile/

include ${MAKEFILE_INCLUDE_DIR}/top.mk
include ${MAKEFILE_INCLUDE_DIR}/buildroot.mk
include ${MAKEFILE_INCLUDE_DIR}/hrootfs.mk
include ${MAKEFILE_INCLUDE_DIR}/bottom.mk
