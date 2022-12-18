DMRGATEWAY_VERSION = 71b42aad364879e5ba8e549b4c17ad90d6c842c5
DMRGATEWAY_SITE = https://github.com/g4klx/DMRGateway
DMRGATEWAY_SITE_METHOD = git
DMRGATEWAY_LICENSE = GPLv2

define DMRGATEWAY_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" LD="$(TARGET_LD)" -C $(@D)
endef

define DMRGATEWAY_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/DMRGateway $(TARGET_DIR)/usr/bin/DMRGateway
	$(INSTALL) -m 0644 $(@D)/DMRGateway.ini $(TARGET_DIR)/etc/DMRGateway.ini
endef

$(eval $(generic-package))
