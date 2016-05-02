################################################################################
#
# openresty
#
################################################################################

OPENRESTY_VERSION = v1.9.7.4
OPENRESTY_SITE = $(call github,openresty,openresty,$(OPENRESTY_VERSION))
OPENRESTY_DEPENDENCIES = host-perl host-perl-markdown-pod  host-dos2unix
OPENRESTY_LICENSE = BSD-2c
OPENRESTY_LICENSE_FILES = LICENSE

define OPENRESTY_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) -e
endef

define OPENRESTY_INSTALL_TARGET_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) -e DESTDIR=$(TARGET_DIR) install
endef

$(eval $(generic-package))
