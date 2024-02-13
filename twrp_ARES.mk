#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from TWRP common configurations
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ARES device
$(call inherit-product, device/chinatelecom/ARES/device.mk)

PRODUCT_DEVICE := ARES
PRODUCT_NAME := twrp_ARES
PRODUCT_BRAND := Tianyi1Hao2022
PRODUCT_MODEL := TYH212U
PRODUCT_MANUFACTURER := chinatelecom

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ums9620_2h10_ctcc-user 11 RP1A.201005.001 1697029118 release-keys"

BUILD_FINGERPRINT := UNISOC/ums9620_2h10_ctcc/ums9620_2h10:11/RP1A.201005.001/1697029118:user/release-keys
