######################################
#
# livecut
#
######################################

LIVECUT_VERSION = 1
LIVECUT_SITE_METHOD = local
LIVECUT_SITE = $($(PKG)_PKGDIR)/
LIVECUT_BUNDLES = LiveCut.lv2

LIVECUT_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) CROSS_COMPILING=true NOOPT=true HAVE_CAIRO=false HAVE_DGL=false HAVE_OPENGL=false -C $(@D)

# build command
define LIVECUT_BUILD_CMDS
 	$(LIVECUT_TARGET_MAKE)
endef

define LIVECUT_INSTALL_TARGET_CMDS
  	$(LIVECUT_TARGET_MAKE) install PREFIX=/usr DESTDIR=$(TARGET_DIR)
 	cp -rL $($(PKG)_PKGDIR)/LiveCut.lv2/* $(TARGET_DIR)/usr/lib/lv2/LiveCut.lv2/
endef

$(eval $(generic-package))