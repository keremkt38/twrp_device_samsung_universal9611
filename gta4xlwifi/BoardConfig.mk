DEVICE_PATH := device/samsung/universal9611
DEVICE := gta4xlwifi
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/$(DEVICE)/prebuilt/Image
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/$(DEVICE)/prebuilt/dtb
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/$(DEVICE)/rootdir/recovery.fstab
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/$(DEVICE)/system.prop
TW_MAX_BRIGHTNESS := 306
TW_NO_HAPTICS := true
include $(DEVICE_PATH)/BoardConfig.mk

# Overrides (after include). Values verified against stock P610XXS7FYD1 boot.img:
# header v2, base 0x10000000, board SRPSL20A007KU, dtb_offset 0; boot.img has no recovery_dtbo.
BOARD_INCLUDE_RECOVERY_DTBO := false
BOARD_KERNEL_CMDLINE := androidboot.hardware=exynos9611 androidboot.selinux=permissive loop.max_part=7
BOARD_MKBOOTIMG_ARGS := --dtb_offset 0x00000000 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 2 --board SRPSL20A007KU
