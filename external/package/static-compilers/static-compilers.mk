STATIC_COMPILERS_VERSION = 1.0.0
STATIC_COMPILERS_SITE = http://landley.net/aboriginal/downloads/binaries/root-filesystem
STATIC_COMPILERS_SOURCE = native-compiler-x86_64.tar.gz

define STATIC_COMPILERS_BUILD_CMDS
	echo Copying $(@D) to target
endef

define STATIC_COMPILERS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/bin/
	cp $(@D)/usr/x86_64-unknown-linux/bin/* $(TARGET_DIR)/bin/
endef

$(eval $(generic-package))
