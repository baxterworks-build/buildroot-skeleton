RELATIVE_BUILDROOT = ../buildroot
PATH_TO_BUILDROOT := $(abspath $(RELATIVE_BUILDROOT))
BR2_EXTERNAL = $(CURDIR)/external
OUTPUT = $(CURDIR)/build

	
lastword = $(word $(words $(1)),$(1))
makedir := $(dir $(call lastword,$(MAKEFILE_LIST)))

MAKEARGS := -C $(PATH_TO_BUILDROOT) O=$(OUTPUT) BR2_EXTERNAL=$(BR2_EXTERNAL) BR2_JLEVEL=$(shell nproc)
MAKEFLAGS += --no-print-directory

.PHONY: _all $(MAKECMDGOALS)

all	:= $(filter-out Makefile,$(MAKECMDGOALS))

_all:
	umask 0022 && $(MAKE) $(MAKEARGS) $(all)

Makefile:;

$(all): _all
	@:

%/: _all
	@:
