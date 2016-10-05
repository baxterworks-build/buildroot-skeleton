BUILDROOT_VERSION = 2016.08
BUILDROOT_SITE = https://github.com/buildroot/buildroot
BUILDROOT_SITE_METHOD = git

define BUILDROOT_BUILD_CMDS
	echo Copying $(@D) to target
endef

define BUILDROOT_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/src/buildroot
	cp -r $(@D)/* $(TARGET_DIR)/usr/src/buildroot
endef

$(eval $(generic-package))
