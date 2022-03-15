
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 1161cf0e5f5f01d806d31caab5c508d215686ac8
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-sankalp123321.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull/
LDD_MODULE_SUBDIRS += misc-modules/



# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/* $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/* $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
