# platform specific kernel profiles

EXTERNAL_KERNEL_PATCH_LOC := $(BUILD_WORKDIR)/$(PLATFORM_PATH)/kernel-patches/

# the following interfaces can be used to override the debian kernel choice independant of the main rules/kernel.mk
#export KERNEL_VERSION = 6.1.55
#export KERNEL_SUBVERSION = 1
#export KVERSION_SHORT = 6.1.0-13
##KVERSION_SHORT = 6.1.0-11-2
##KVERSION = $(KVERSION_SHORT)-$(CONFIGURED_ARCH)
#export LINUX_SOURCE_BASE_URL = "https://deb.debian.org/debian/pool/main/l/linux/"

#temp, later use more standard target platform name
export EXTERNAL_KERNEL_PATCH_PLATFORM = "infn-frcug3x"

# this is the hack part, if later the src/sonic-linux-kernel scripts improve we won't need to do it.
$(LINUX_HEADERS_COMMON)_SRC_PATH = $(BUILD_WORKDIR)/$(PLATFORM_PATH)/sonic-linux-kernel


