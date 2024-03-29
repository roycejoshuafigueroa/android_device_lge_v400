# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
# Release name
PRODUCT_RELEASE_NAME := v400



# Inherit device configuration
$(call inherit-product, device/lge/v400/device_v400.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := v400
PRODUCT_NAME := cm_v400
PRODUCT_BRAND := lge
PRODUCT_MODEL := v400
PRODUCT_MANUFACTURER := lge
