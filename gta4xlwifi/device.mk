DEVICE_PATH := device/samsung/universal9611
$(call inherit-product, device/samsung/universal9611/device.mk)

# Recovery flags
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/gta4xlwifi/rootdir/twrp.flags:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/twrp.flags
