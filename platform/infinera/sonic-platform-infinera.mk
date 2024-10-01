# VS Platform modules

INFINERA_PLATFORM_MODULE_VERSION = 1.0

export INFINERA_PLATFORM_MODULE_VERSION

# we only have one target device type now
FRCU3X_PLATFORM_MODULE = sonic-platform-infn-frcug3x_$(INFINERA_PLATFORM_MODULE_VERSION)_arm64.deb
$(FRCU3X_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-infn-frcug3x
$(FRCU3X_PLATFORM_MODULE)_DEPENDS =
$(FRCU3X_PLATFORM_MODULE)_PLATFORM = arm64-infn-frcug3x-r0
SONIC_DPKG_DEBS += $(FRCU3X_PLATFORM_MODULE)
