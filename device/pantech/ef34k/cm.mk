# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Release name
PRODUCT_RELEASE_NAME := ef34k

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/pantech/ef34k/device.mk)

# Device naming
PRODUCT_DEVICE := ef34k
PRODUCT_NAME := cm_ef34k
PRODUCT_BRAND := SKY
PRODUCT_MODEL := IM-A770K
PRODUCT_MANUFACTURER := PANTECH
PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN

TARGET_BOOTANIMATION_NAME := HDPI

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=IM-A770K TARGET_DEVICE=IM-A770K BUILD_FINGERPRINT=PANTECH/IM-A770K/IM-A770K:4.2.2/JDQ39/217A:user/release-keys PRIVATE_BUILD_DESC="IM-A770K-user 4.2.2 JDQ39 release-keys"
PRODUCT_LOCALES := zh_CN zh_TW en_US

# Set CM_BUILDTYPE
CM_NIGHTLY := true
