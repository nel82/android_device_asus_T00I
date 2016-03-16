# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 800

REF_PRODUCT_NAME := redhookbay
TARGET_BOARD_PLATFORM := clovertrail

# Inherit some common CM stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/T00I/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/T00I/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_T00I
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_T00I
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := T00I

TARGET_VENDOR_PRODUCT_NAME := WW_ZenFone
TARGET_VENDOR_DEVICE_NAME := ASUS_T00I
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=ASUS_T00I PRODUCT_NAME=WW_ZenFone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_ZenFone \
    BUILD_FINGERPRINT=asus/WW_ZenFone/ASUS_T00I:5.0/LRX21V/WW_ZenFone-V7.4.4-20150831:user/release-keys \
    PRIVATE_BUILD_DESC="WW_ZenFone-user 5.0 LRX21V WW_ZenFone-V7.4.4-20150831 release-keys"
