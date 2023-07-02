# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from a03s device
$(call inherit-product, device/samsung/a03s/device.mk)

PRODUCT_DEVICE := a03s
PRODUCT_NAME := omni_a03s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A037F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a03snnxx-user 12 SP1A.210812.016 A037FXXS3CWC7 release-keys"

BUILD_FINGERPRINT := samsung/a03snnxx/a03s:12/SP1A.210812.016/A037FXXS3CWC7:user/release-keys