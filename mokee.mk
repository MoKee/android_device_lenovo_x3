# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/x3/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := mk_x3
BOARD_VENDOR := lenovo
TARGET_VENDOR := lenovo
PRODUCT_DEVICE := x3

PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo X3c50
PRODUCT_MANUFACTURER := LENOVO

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Lenovo/X3c50/X3c50:6.0.1/MMB29M/VIBEUI_V3.1_1626_5.565.1_ST_X3c50:user/release-keys \
    PRIVATE_BUILD_DESC="X3c50-user 6.0.1 MMB29M VIBEUI_V3.1_1626_5.565.1_ST_X3c50 release-keys"
