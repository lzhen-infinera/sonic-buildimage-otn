include $(PLATFORM_PATH)/sonic-platform-infinera.mk
include $(PLATFORM_PATH)/syncd-ot-vs.mk
include $(PLATFORM_PATH)/sonic-version.mk
include $(PLATFORM_PATH)/docker-syncd-ot-vs.mk
include $(PLATFORM_PATH)/one-image.mk
#include $(PLATFORM_PATH)/onie.mk
include $(PLATFORM_PATH)/kernel_override.mk

SONIC_ALL += $(SONIC_ONE_IMAGE)

# Inject mlnx sai into syncd --- leave some examples from mlnx for later references.
# $(SYNCD)_DEPENDS += $(MLNX_SAI)
# $(SYNCD)_UNINSTALLS += $(MLNX_SAI)

# Runtime dependency on mlnx sai is set only for syncd
# $(SYNCD)_RDEPENDS += $(MLNX_SAI)

# Inject mlnx sdk libs to platform monitor
# $(DOCKER_PLATFORM_MONITOR)_DEPENDS += $(APPLIBS) $(SX_COMPLIB) $(SXD_LIBS) $(SX_GEN_UTILS) $(PYTHON_SDK_API) $(APPLIBS_DEV) $(SX_COMPLIB_DEV) $(SXD_LIBS_DEV) $(SX_GEN_UTILS_DEV)

# Force the target bootloader to grub regardless of arch
TARGET_BOOTLOADER = grub

DEFAULT_PASSWORD = 1234

