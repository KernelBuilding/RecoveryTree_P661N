#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 TeamWin Recovery Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Itel-P661N device
$(call inherit-product, device/itel/P661N/device.mk)

# Device Target Name
PRODUCT_DEVICE := P661N
PRODUCT_NAME := twrp_P661N
PRODUCT_BRAND := Itel
PRODUCT_MODEL := P661N
PRODUCT_MANUFACTURER := ITEL

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P661N-user 13 TP1A.220624.014 release-keys"
 
BUILD_FINGERPRINT := Itel/P661N-GL/itel-P661N:13/TP1A.220624.014/240322V53:user/release-keys
