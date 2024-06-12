#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from itel-P661N device
$(call inherit-product, device/itel/P661N/device.mk)

PRODUCT_DEVICE := P661N
PRODUCT_NAME := twrp_P661N
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel P661N
PRODUCT_MANUFACTURER := ITEL

PRODUCT_GMS_CLIENTID_BASE := android-itel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="P661N-user 13 TP1A.220624.014 release-keys"
 
BUILD_FINGERPRINT := Itel/P661N-GL/itel-P661N:13/TP1A.220624.014/240322V53:user/release-keys
