STATIC_COMPILERS_VERSION = 1.0.0
STATIC_COMPILERS_SITE = http://landley.net/aboriginal/downloads/binaries/root-filesystem
STATIC_COMPILERS_SOURCE = native-compiler-x86_64.tar.gz

define STATIC_COMPILERS_BUILD_CMDS
	echo Copying $(@D) to target
endef

define STATIC_COMPILERS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/bin/
	cp $(@D)/usr/x86_64-unknown-linux/bin/* $(TARGET_DIR)/bin/
	#ugly hack to avoid the include files and libraries being nuked by buildroot
	(cd $(@D)/usr/; tar -cf $(TARGET_DIR)/usr/include.tar include)
	(cd $(@D)/usr/; tar -cf $(TARGET_DIR)/usr/lib.tar lib)
	cp -vp $(STATIC_COMPILERS_PKGDIR)/S30include_hack $(TARGET_DIR)/etc/init.d/
endef

#define STATIC_COMPILERS_TARGET_FINALIZE
# see comment below
#endef

#so this isn't particularly documented well, and runs *just*
#before the include files are deleted so it wohn't work
#TARGET_FINALIZE_HOOKS += STATIC_COMPILERS_TARGET_FINALIZE
#but would have been a really cool trick if it worked

$(eval $(generic-package))
