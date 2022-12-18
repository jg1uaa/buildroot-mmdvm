MMDVMHOST_VERSION = 0abfa895bba271eaa6b0e9915298d05d51a8ae50
MMDVMHOST_SITE = https://github.com/g4klx/MMDVMHost
MMDVMHOST_SITE_METHOD = git
MMDVMHOST_LICENSE = GPLv2

define MMDVMHOST_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LD="$(TARGET_LD)" -C $(@D)
endef

define MMDVMHOST_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/MMDVMHost $(TARGET_DIR)/usr/bin/MMDVMHost
	$(INSTALL) -m 0755 $(@D)/RemoteCommand $(TARGET_DIR)/usr/bin/RemoteCommand
	$(INSTALL) -m 0644 $(@D)/MMDVM.ini $(TARGET_DIR)/etc/MMDVM.ini
endef

$(eval $(generic-package))
